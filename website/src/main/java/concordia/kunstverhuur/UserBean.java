package concordia.kunstverhuur;

import java.util.HashMap;

public class UserBean {
	
	private String userName = null;
	private String voorNaam = null;
	private String achterNaam = null;
	private String bedrijfsNaam = null;
	private HashMap<String, String> adres = null;
	private String email = null;
	private String telefoonNummer = null;
	
	public UserBean() {}
	
	public String getUserName() {
		return userName;
	}
	
	public void setUserName(String userName) {
		this.userName = userName;
	}
	
	public String getVoorNaam() {
		return voorNaam;
	}
	
	public void setVoorNaam(String voorNaam) {
		this.voorNaam = voorNaam;
	}
	
	public String getAchterNaam() {
		return achterNaam;
	}
	public void setAchterNaam(String achterNaam) {
		this.achterNaam = achterNaam;
	}
	
	public String getBedrijfsNaam() {
		return bedrijfsNaam;
	}
	
	public void setBedrijfsNaam(String bedrijfsNaam) {
		this.bedrijfsNaam = bedrijfsNaam;
	}
	
	public HashMap<String, String> getAdres() {
		return adres;
	}
	
	public void setAdres(HashMap<String, String> adres) {
		this.adres = adres;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getEmail() {
		return email;
	}
	
	public String getTelefoonNummer() {
		return telefoonNummer;
	}
	
	public void setTelefoonNummer(String telefoonNummer) {
		this.telefoonNummer = telefoonNummer;
	}
}
