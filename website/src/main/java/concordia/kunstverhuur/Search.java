package concordia.kunstverhuur;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.http.HttpServlet;

public class Search extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public static void searchArtworks(String[] searchQueries) {
		// Variables
		Connection con = DB.getConnection();
		Statement st = null;
		ResultSet rs = null;
		String query = null;

		// Create search query
		switch (searchQueries.length) {
		case 0:
			query = "SELECT * FROM Artwork";
			break;
		case 1:
			query = searchQueries[0];
			break;
		default:
			query = "(" + searchQueries[0] + ")";
			for (int i = 1; i < searchQueries.length; i++) {
				query += " INTERSECT (" + searchQueries[i] + ")";
			}
			break;
		}

		//Get data from database
		try {
			st = con.createStatement();
			rs = st.executeQuery(query);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		
	}
}
