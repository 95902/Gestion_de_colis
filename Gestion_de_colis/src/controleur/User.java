package controleur;
import java.util.ArrayList;

public class User {
	
	 public int id_user;
	 public String prenom,nom,adresse,ville,code_postale,mdp,telephone; 
	 public String type;
	 public ArrayList<Commande>lesCommandes;
	 
	public User(int id_user, String prenom, String nom, String adresse, String ville, String code_postale, String mdp,
			String telephone, String type, ArrayList<Commande> lesCommandes) {
		
		this.id_user = id_user;
		this.prenom = prenom;
		this.nom = nom;
		this.adresse = adresse;
		this.ville = ville;
		this.code_postale = code_postale;
		this.mdp = mdp;
		this.telephone = telephone;
		this.type = type;
		this.lesCommandes = lesCommandes;
	}
	public User(String prenom, String nom, String adresse, String ville, String code_postale, String mdp,
			String telephone, String type, ArrayList<Commande> lesCommandes) {
		
		this.id_user = 0;
		this.prenom = prenom;
		this.nom = nom;
		this.adresse = adresse;
		this.ville = ville;
		this.code_postale = code_postale;
		this.mdp = mdp;
		this.telephone = telephone;
		this.type = type;
		this.lesCommandes = lesCommandes;
	}
	public User() {
		
		this.id_user = 0;
		this.prenom = "";
		this.nom = "";
		this.adresse = "";
		this.ville = "";
		this.code_postale = "";
		this.mdp = "";
		this.telephone = "";
		this.type = "";
		
	}
	
	public int getId_user() {
		return id_user;
	}
	public void setId_user(int id_user) {
		this.id_user = id_user;
	}
	public String getPrenom() {
		return prenom;
	}
	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
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
	public String getMdp() {
		return mdp;
	}
	public void setMdp(String mdp) {
		this.mdp = mdp;
	}
	public String getTelephone() {
		return telephone;
	}
	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public ArrayList<Commande> getLesCommandes() {
		return lesCommandes;
	}
	public void setLesCommandes(ArrayList<Commande> lesCommandes) {
		this.lesCommandes = lesCommandes;
	}
	 
	 
	 

	
}