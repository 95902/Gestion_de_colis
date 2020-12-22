package controleur;

public class Colis {

	public int id_colis;
	public int  longeur;
	public int largeur;
	public int valeur;
	public int hauteur;
	public float poids;
	public String ref_colis;
	public int id_type_envoie;
	public int id_transport;
	public int id_tarif;
	public int id_categorie;
	public int id_user;
	public Transporteur transporteur;
	public Categorie categorie;
	public Grille_tarif tarif;
	public Type_envoie type_envoie;
	
	
	
	
	public Colis(int id_colis, int longeur, int largeur, int valeur, int hauteur, float poids, String ref_colis,
			int id_type_envoie, int id_transport, int id_tarif, int id_categorie, int id_user) {
		
		this.id_colis = id_colis;
		this.longeur = longeur;
		this.largeur = largeur;
		this.valeur = valeur;
		this.hauteur = hauteur;
		this.poids = poids;
		this.ref_colis = ref_colis;
		this.id_type_envoie = id_type_envoie;
		this.id_transport = id_transport;
		this.id_tarif = id_tarif;
		this.id_categorie = id_categorie;
		this.id_user= id_user;
	}
	
	public Colis( int longeur, int largeur, int valeur, int hauteur, float poids, String ref_colis,
			int id_type_envoie, int id_transport, int id_tarif, int id_categorie, int id_user) {
		
		this.id_colis = 0;
		this.longeur = longeur;
		this.largeur = largeur;
		this.valeur = valeur;
		this.hauteur = hauteur;
		this.poids = poids;
		this.ref_colis = ref_colis;
		this.id_type_envoie = id_type_envoie;
		this.id_transport = id_transport;
		this.id_tarif = id_tarif;
		this.id_categorie = id_categorie;
		this.id_user =id_user;
	}

	
	public Colis() {
		
		this.id_colis = 0;
		this.longeur = 0;
		this.largeur = 0;
		this.valeur = 0;
		this.hauteur = 0;
		this.poids = 0f;
		this.ref_colis = "";
		this.id_type_envoie = 0;
		this.id_transport = 0;
		this.id_tarif = 0;
		this.id_categorie = 0;
		this.id_user=0;
	}

	public int getId_user() {
		return id_user;
	}

	public void setId_user(int id_user) {
		this.id_user = id_user;
	}

	public Type_envoie getType_envoie() {
		return type_envoie;
	}

	public void setType_envoie(Type_envoie type_envoie) {
		this.type_envoie = type_envoie;
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

	public int getHauteur() {
		return hauteur;
	}

	public void setHauteur(int hauteur) {
		this.hauteur = hauteur;
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

	public int getId_type_envoie() {
		return id_type_envoie;
	}

	public void setId_type_envoie(int id_type_envoie) {
		this.id_type_envoie = id_type_envoie;
	}

	public int getId_transport() {
		return id_transport;
	}

	public void setId_transport(int id_transport) {
		this.id_transport = id_transport;
	}

	public int getId_tarif() {
		return id_tarif;
	}

	public void setId_tarif(int id_tarif) {
		this.id_tarif = id_tarif;
	}

	public int getId_categorie() {
		return id_categorie;
	}

	public void setId_categorie(int id_categorie) {
		this.id_categorie = id_categorie;
	}

	
}
