package Controleur;

public class Colis {

	public int id_colis;
	public int  longeur;
	public int largeur;
	public int valeur;
	public float poids;
	public String ref_colis;
	public Transporteur transporteur;
	public Categorie categorie;
	public Grille_tarif tarif;
	public Type_envoie type_envoie;
	
	
	
	public Colis(int id_colis, int longeur, int largeur, int valeur, float poids, String ref_colis) {
		
		this.id_colis = id_colis;
		this.longeur = longeur;
		this.largeur = largeur;
		this.valeur = valeur;
		this.poids = poids;
		this.ref_colis = ref_colis;
	}
	
	public Colis() {
		this.id_colis =0;
		this.longeur=0;
		this.largeur=0;
		this.valeur =0;
		this.poids =0f;
		this.ref_colis="";
	}

	public int getId_colis() {
		return id_colis;
	}
	public void setId_colis(int id_colis) {
		this.id_colis = id_colis;
	}
	public int getLongeur() {
		return longeur;
	}
	public void setLongeur(int longeur) {
		this.longeur = longeur;
	}
	public int getLargeur() {
		return largeur;
	}
	public void setLargeur(int largeur) {
		this.largeur = largeur;
	}
	public int getValeur() {
		return valeur;
	}
	public void setValeur(int valeur) {
		this.valeur = valeur;
	}
	public float getPoids() {
		return poids;
	}
	public void setPoids(float poids) {
		this.poids = poids;
	}
	public String getRef_colis() {
		return ref_colis;
	}
	public void setRef_colis(String ref_colis) {
		this.ref_colis = ref_colis;
	}
	
	
}
