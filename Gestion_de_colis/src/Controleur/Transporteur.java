package Controleur;

import java.util.ArrayList;

public class Transporteur {

	public int id_transport;
	public String nom_transporteur;
	public String ville_transporteur;
	public String code_postal;
	public float tarif_au_km;
	public ArrayList<Colis>lesColis;
	
	
	
	public Transporteur(int id_transport, String nom_transporteur, String ville_transporteur, String code_postal, float tarif_au_km) {
		this.id_transport = id_transport;
		this.nom_transporteur = nom_transporteur;
		this.ville_transporteur = ville_transporteur;
		this.code_postal = code_postal;
		this.tarif_au_km = tarif_au_km;
	}
	
	
	public Transporteur() {
		this.id_transport = 0;
		this.nom_transporteur = "";
		this.ville_transporteur = "";
		this.code_postal = "";
		this.tarif_au_km =0f;
	}


	public int getId_transport() {
		return id_transport;
	}
	public void setId_transport(int id_transport) {
		this.id_transport = id_transport;
	}
	public String getNom_transporteur() {
		return nom_transporteur;
	}
	public void setNom_transporteur(String nom_transporteur) {
		this.nom_transporteur = nom_transporteur;
	}
	public String getVille_transporteur() {
		return ville_transporteur;
	}
	public void setVille_transporteur(String ville_transporteur) {
		this.ville_transporteur = ville_transporteur;
	}
	public String getCode_postal() {
		return code_postal;
	}
	public void setCode_postal(String code_postal) {
		this.code_postal = code_postal;
	}
	public float getTarif_au_km() {
		return tarif_au_km;
	}
	public void setTarif_au_km(float tarif_au_km) {
		this.tarif_au_km = tarif_au_km;
	}
	
	
}
