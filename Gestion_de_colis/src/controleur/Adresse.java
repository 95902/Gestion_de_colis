package controleur;
import java.util.ArrayList;

public class Adresse {
	private static int count = 0; 
	private String nom,prenom,email,telephone,complement_adresse,adresse,ville,code_postale,pays,type;
	private int id_adresse,addresse_id_user;
	public ArrayList<Commande>lesCommandes;
	
	public Adresse(int addresse_id_user,String nom, String prenom, String email, String telephone, String complement_adresse, String adresse,
			String ville, String code_postale, String pays, String type, int id_adresse) {
		
		this.addresse_id_user= ++count;
		this.nom = nom;
		this.prenom = prenom;
		this.email = email;
		this.telephone = telephone;
		this.complement_adresse = complement_adresse;
		this.adresse = adresse;
		this.ville = ville;
		this.code_postale = code_postale;
		this.pays = pays;
		this.type = type;
		this.id_adresse = id_adresse;
	}
	public int getAddresse_id_user() {
		return addresse_id_user;
	}
	public void setAddresse_id_user(int addresse_id_user) {
		this.addresse_id_user = addresse_id_user;
	}
	public Adresse(int id_adresse,int addresse_id_user,String nom, String prenom, String email, String telephone, String complement_adresse, String adresse,
		String ville, String code_postale, String pays, String type) {
		
		this.id_adresse=id_adresse;	
		this.addresse_id_user=addresse_id_user;
		this.nom = nom;
		this.prenom = prenom;
		this.email = email;
		this.telephone = telephone;
		this.complement_adresse = complement_adresse;
		this.adresse = adresse;
		this.ville = ville;
		this.code_postale = code_postale;
		this.pays = pays;
		this.type = type;
		
	}
	
	
	
		public Adresse(int addresse_id_user,String nom, String prenom, String email, String telephone, String complement_adresse, String adresse,
			String ville, String code_postale, String pays, String type) {
			
		this.addresse_id_user= ++count;
		this.nom = nom;
		this.prenom = prenom;
		this.email = email;
		this.telephone = telephone;
		this.complement_adresse = complement_adresse;
		this.adresse = adresse;
		this.ville = ville;
		this.code_postale = code_postale;
		this.pays = pays;
		this.type = type;
		
	}
	public Adresse() {
		this.addresse_id_user= ++count;
		this.nom = "";
		this.prenom = "";
		this.email = "";
		this.telephone = "";
		this.complement_adresse = "";
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
	public String getComplement_adresse() {
		return complement_adresse;
	}
	public void setComplement_adresse(String complement_adresse) {
		this.complement_adresse = complement_adresse;
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
