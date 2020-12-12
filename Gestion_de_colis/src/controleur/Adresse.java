package controleur;
import java.util.ArrayList;

public class Adresse {
	private String nom,prenom,email,telephone,complément_adresse,adresse,ville,code_postale,pays,type;
	private int id_adresse;
	public ArrayList<Commande>lesCommandes;
	
	public Adresse(String nom, String prenom, String email, String telephone, String complément_adresse, String adresse,
			String ville, String code_postale, String pays, String type, int id_adresse) {
		
		this.nom = nom;
		this.prenom = prenom;
		this.email = email;
		this.telephone = telephone;
		this.complément_adresse = complément_adresse;
		this.adresse = adresse;
		this.ville = ville;
		this.code_postale = code_postale;
		this.pays = pays;
		this.type = type;
		this.id_adresse = id_adresse;
	}
	public Adresse() {
		this.nom = "";
		this.prenom = "";
		this.email = "";
		this.telephone = "";
		this.complément_adresse = "";
		this.adresse = "";
		this.ville = "";
		this.code_postale = "";
		this.pays = "";
		this.type = "";
		this.id_adresse = 0;
	}
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	public String getPrenom() {
		return prenom;
	}
	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getTelephone() {
		return telephone;
	}
	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
	public String getComplément_adresse() {
		return complément_adresse;
	}
	public void setComplément_adresse(String complément_adresse) {
		this.complément_adresse = complément_adresse;
	}
	public String getAdresse() {
		return adresse;
	}
	public void setAdresse(String adresse) {
		this.adresse = adresse;
	}
	public String getVille() {
		return ville;
	}
	public void setVille(String ville) {
		this.ville = ville;
	}
	public String getCode_postale() {
		return code_postale;
	}
	public void setCode_postale(String code_postale) {
		this.code_postale = code_postale;
	}
	public String getPays() {
		return pays;
	}
	public void setPays(String pays) {
		this.pays = pays;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public int getId_adresse() {
		return id_adresse;
	}
	public void setId_adresse(int id_adresse) {
		this.id_adresse = id_adresse;
	}
}
