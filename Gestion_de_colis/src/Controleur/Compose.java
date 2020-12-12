package Controleur;
import java.util.ArrayList;

public class Compose {
	public int quantite;
	public ArrayList<Colis>lesColis;
	public ArrayList<Commande>lesCommandes;

	public int getQuantite() {
		return quantite;
	}

	public void setQuantite(int quantite) {
		this.quantite = quantite;
	}

	public Compose(int quantite) {
		this.quantite = quantite;
	}
	public Compose() {
		this.quantite= 0;
	}
	
}
