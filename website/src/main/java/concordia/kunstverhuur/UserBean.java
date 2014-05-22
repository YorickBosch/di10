package concordia.kunstverhuur;

import java.util.HashMap;

public class UserBean {
	
	private String Voornaam = null;
	private String Achternaam = null;
	private String Bedrijfsnaam = null;
	private HashMap<String, String> adres = null;
	private String email = null;
	private String telefoonNummer = null;
	
	public UserBean() {}
	
	
	public String getVoornaam() {
		return Voornaam;
	}
	
	public void setVoornaam(String voorNaam) {
		this.Voornaam = voorNaam;
	}
	
	public String getAchternaam() {
		return Achternaam;
	}
	public void setAchternaam(String achterNaam) {
		this.Achternaam = achterNaam;
	}
	
	public String getBedrijfsnaam() {
		return Bedrijfsnaam;
	}
	
	public void setBedrijfsNaam(String bedrijfsNaam) {
		this.Bedrijfsnaam = bedrijfsNaam;
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
