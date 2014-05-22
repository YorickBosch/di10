package concordia.kunstverhuur;

import java.io.IOException;
import java.util.HashMap;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import concordia.kunstverhuur.DB;
public class Login extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public static UserBean getUserFromDatabase(String username, String password) {
		UserBean user = null;
		Connection con = DB.getConnection();
		Statement st = null;
		ResultSet rs = null;
		try {
			st = con.createStatement();
	        rs = st.executeQuery("SELECT COUNT(Email) FROM Customer WHERE Email='"+username+"' AND Password='"+password+"'");
	        rs.next();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        
		try {
			if (Integer.parseInt(rs.getString(1)) > 0) {
				user = new UserBean();
				user.setVoornaam("Unfinity");
				user.setAchternaam("Numberwang");
				HashMap<String,String> adres = new HashMap<String,String>();
				adres.put("straat", "Twentington 20");
				adres.put("huisnummer", "20");
				adres.put("postcode", "2000NW");
				adres.put("stad", "Twelvty-hundred-and-Neeb");
				adres.put("land", "Timboektoe");			
				user.setAdres(adres);
				user.setEmail("numberwang@mverkleij.nl");
				user.setTelefoonNummer("+31612345678");
			}
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return user;
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) {
		String user = request.getParameter("user");
		String password = request.getParameter("pass");
		String logout = request.getParameter("logout");
		
		if (logout != null) {
			request.getSession().invalidate();
			try {
				response.sendRedirect(StandardPage.HOME);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} else if (user != null) {
			UserBean userBean = getUserFromDatabase(user, password);
			if (userBean != null) {
				request.getSession().setAttribute("current_user", userBean);
				
				try {
					response.sendRedirect(StandardPage.HOME);
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			} else {
				try {
					response.sendRedirect(StandardPage.LOGINFAILED);
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		} else {
			try {
				response.sendRedirect(StandardPage.LOGINFAILED);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
}
