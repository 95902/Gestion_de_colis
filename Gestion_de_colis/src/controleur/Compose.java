package controleur;
import java.util.ArrayList;

public class Compose {
	public int quantite;
	public int idcommande;
	public int id_colis;
	public ArrayList<Colis>lesColis;
	public ArrayList<Commande>lesCommandes;
	public Colis colis= new Colis();
	
	public int getQuantite() {
		return quantite;
	}
	public void setQuantite(int quantite) {
		this.quantite = quantite;
	}
	public int getIdcommande() {
		return idcommande;
	}
	public void setIdcommande(int idcommande) {
		this.idcommande = idcommande;
	}
	public int getId_colis() {
		return id_colis;
	}
	public void setId_colis(int id_colis) {
		this.id_colis = id_colis;
	}
	public Compose(int quantite, int idcommande, int id_colis) {
		
		this.quantite = quantite;
		this.idcommande = idcommande;
		this.id_colis = id_colis;
	}
	public Compose() {
		
		this.quantite = 0;
		this.idcommande = 0;
		this.id_colis = 0;
	}




	
	
}
