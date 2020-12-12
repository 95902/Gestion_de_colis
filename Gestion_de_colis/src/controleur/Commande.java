package controleur;

import java.util.Date;

public class Commande {
    
     private int nbcolis;
     private String etats ,libelle_etats,description_envoie,contenue_envoie;
     private Float montant ;
     private Date aujourdhui = new Date();
     public User user;
     public Adresse adresse;
     
    public Commande(int nbcolis, String etats, String libelle_etats, String description_envoie, String contenue_envoie,
            Float montant, Date aujourdhui) {
        this.nbcolis = nbcolis;
        this.etats = etats;
        this.libelle_etats = libelle_etats;
        this.description_envoie = description_envoie;
        this.contenue_envoie = contenue_envoie;
        this.montant = montant;
        this.aujourdhui = aujourdhui;
    }
    public Commande() {
        this.nbcolis = 0;
        this.etats = "";
        this.libelle_etats = "";
        this.description_envoie = "";
        this.contenue_envoie = "";
        this.montant = 0f;
        this.aujourdhui = new Date();
    }
    public int getNbcolis() {
        return nbcolis;
    }
    public void setNbcolis(int nbcolis) {
        this.nbcolis = nbcolis;
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
    public Float getMontant() {
        return montant;
    }
    public void setMontant(Float montant) {
        this.montant = montant;
    }
    public Date getAujourdhui() {
        return aujourdhui;
    }
    public void setAujourdhui(Date aujourdhui) {
        this.aujourdhui = aujourdhui;
    }
    
     
 
 
}