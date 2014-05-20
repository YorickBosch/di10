package concordia.kunstverhuur;

import java.awt.List;
import java.io.IOException;
import java.util.Arrays;
import java.util.Enumeration;
import java.util.HashMap;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Login extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public static UserBean getUserFromDatabase(String username, String password) {
		UserBean user = new UserBean();
		// Zou een SQL-query moeten zijn
		if (username.equals("numberwang")
				&& password.equals("correcthorsebatterystaple")) {
			user = new UserBean();
			user.setUserName(username);
			user.setVoorNaam("Unfinity");
			user.setAchterNaam("Numberwang");
			HashMap<String,String> adres = new HashMap<String,String>();
			adres.put("straat", "Twentington 20");
			adres.put("huisnummer", "20");
			adres.put("postcode", "2000NW");
			adres.put("stad", "Twelvty-hundred-and-Neeb");
			adres.put("land", "Timboektoe");			
			user.setAdres(adres);
			user.setEmail("numberwang@mverkleij.nl");
			user.setTelefoonNummer("+31 6 1234 5678");
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
