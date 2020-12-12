package Controleur;
import java.util.ArrayList;

public class User {
	
	 public int id_client;
	 public String prenom;
	 public String nom;
	 public String adresse;
	 public String mdp; 
	 public String type;
	 public ArrayList<Commande>lesCommandes;
	 
	 
	 
	 public User(int id_client, String prenom, String nom, String adresse, String mdp, String type) {
		 
		this.id_client = id_client;
		this.prenom = prenom;
		this.nom = nom;
		this.adresse = adresse;
		this.mdp = mdp;
		this.type = type;
	}
	 
	 public User(String prenom, String nom, String adresse, String mdp, String type) {
		this.prenom = prenom;
		this.nom = nom;
		this.adresse = adresse;
		this.mdp = mdp;
		this.type = type;
		
	}

	public User() {
		 this.id_client= 0;
		 this.prenom= "";
		 this.nom ="";
		 this.adresse = "";
		 this.mdp ="";
		 this.type = "";
	 }
	 
	 
	public int getId_client() {
		return id_client;
	}
	public void setId_client(int id_client) {
		this.id_client = id_client;
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
	public String getMdp() {
		return mdp;
	}
	public void setMdp(String mdp) {
		this.mdp = mdp;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	
}