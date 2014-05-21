import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.SQLException;

package concordia.kunstverhuur;

public class DB {
	private String dbUser = "di10";
	private String dbPass = "";
	private String dbHost = "datainfo.ewi.utwente.nl";
	private String dbName = "datainfo.ewi.utwente.nl";
	private Connection con = null;
	
	
	public Connection getConnection () {
		if (con == null || con.isClosed()) {
			con = DriverManager.getConnection("jdbc:postgresql://"+dbHost+":5432/"+dbName, dbUser, dbPass);
		}
		return con;
	}
	public void close () {
		if (con == null || con.isClosed()) {
			con.close();
		}
	}
}
