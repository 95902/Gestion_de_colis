package controleur;

import java.util.ArrayList;
import java.util.Date;

public class Commande {
	private static int count = 0; 
	 private int idcommande ;
	 private int id_colis ;
     private int nbcolis,id_user,id_adresse;
     private String etats ,libelle_etats,description_envoie,contenue_envoie;
     private float montant ;
     private String date;
     public User user;
     public Adresse adresse;
     public ArrayList<Colis>lesColis;
     
     
    public int getId_user() {
		return id_user;
	}
	public void setId_user(int id_user) {
		this.id_user = id_user;
	}
	public int getId_adresse() {
		return id_adresse;
	}
	public void setId_adresse(int id_adresse) {
		this.id_adresse = id_adresse;
	}
	public Commande(int idcommande,int id_colis, int nbcolis, String etats, String date, String libelle_etats, String description_envoie, String contenue_envoie,
            float montant,int id_user,int id_adresse ) {
		
    	this.idcommande= ++count;
    	this.id_colis = id_colis;
        this.nbcolis = nbcolis;
        this.etats = etats;
        this.libelle_etats = libelle_etats;
        this.description_envoie = description_envoie;
        this.contenue_envoie = contenue_envoie;
        this.montant = montant;
        this.date = date;
        this.id_user= id_user;
        this.id_adresse = id_adresse;
    }
    public Commande(int id_colis,int nbcolis, String etats, String date ,String libelle_etats, String description_envoie, String contenue_envoie,
            float montant,int id_user,int id_adresse) {
    	
    	this.idcommande= 0;
    	this.id_colis = id_colis;
        this.nbcolis = nbcolis;
        this.etats = etats;
        this.libelle_etats = libelle_etats;
        this.description_envoie = description_envoie;
        this.contenue_envoie = contenue_envoie;
        this.montant = montant;
        this.date = date;
        this.id_user= id_user;
        this.id_adresse = id_adresse;
    }
  
    public Commande() {
    	this.idcommande= 0;
    	this.id_colis = 0;
        this.nbcolis = 0;
        this.etats = "";
        this.libelle_etats = "";
        this.description_envoie = "";
        this.contenue_envoie = "";
        this.montant = 0f;
        this.date = "";
        this.id_user= 0;
        this.id_adresse = 0;
    }
	public int getId_colis() {
		return id_colis;
	}
	public void setId_colis(int id_colis) {
		this.id_colis = id_colis;
	}
	public int getNbcolis() {
        return nbcolis;
    }
    public void setNbcolis(int nbcolis) {
        this.nbcolis = nbcolis;
    }
    public int getIdcommande() {
		return idcommande;
	}
	public void setIdcommande(int idcommande) {
		this.idcommande = idcommande;
	}
	public String getEtats() {
        return etats;
    }
    public void setEtats(String etats) {
        this.etats = etats;
    }
    public String getLibelle_etats() {
        return libelle_etats;
    }
    public void setLibelle_etats(String libelle_etats) {
        this.libelle_etats = libelle_etats;
    }
    public String getDescription_envoie() {
        return description_envoie;
    }
    public void setDescription_envoie(String description_envoie) {
        this.description_envoie = description_envoie;
    }
    public String getContenue_envoie() {
        return contenue_envoie;
    }
    public void setContenue_envoie(String contenue_envoie) {
        this.contenue_envoie = contenue_envoie;
    }
    public float getMontant() {
        return montant;
    }
    public void setMontant(float montant) {
        this.montant = montant;
    }
    public String getDate() {
        return date;
    }
    public void setDate(String date) {
        this.date = date;
    }
    
     
 
 
}