package modele;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import controleur.Adresse;
import controleur.Colis;
import controleur.Commande;
import controleur.Compose;
import controleur.Transporteur;
import controleur.User;

public class Modele {
	
	private static BDD uneBDD = new BDD("localhost:3306","khyo","root","");


	/***********************************
	***********USER********************
	**********************************  */

	
	public static void insertUser(User unUser) {
		String requete = "insert into _user values (null, '" + unUser.getNom() + "','" + unUser.getPrenom() + "','"
				+ unUser.getAdresse() + "','" + unUser.getTelephone() + "','" + unUser.getMdp() + "','"
				+ unUser.getVille() + "'," + "'" + unUser.getCode_postale() + "' ,'" + unUser.getEmail() + "' ,'"
				+ unUser.getType() + "');";

		try {
			uneBDD.seConnecter();
			Statement unStat = uneBDD.getMaConnexion().createStatement();
			unStat.execute(requete);
			unStat.close();
			uneBDD.seDeconnecter();
		} catch (SQLException exp) {
			System.out.println("Erreur d'execution de la requete : " + requete);
		}
	}

	public static ArrayList<User> selectAllUser() {

		ArrayList<User> lesUser = new ArrayList<User>();

		String requete = "select * from _user;";

		try {
			uneBDD.seConnecter();
			Statement unStat = uneBDD.getMaConnexion().createStatement();
			ResultSet desResultats = unStat.executeQuery(requete);

			while (desResultats.next()) {
				User unUser = new User(desResultats.getInt("id_user"), 
						desResultats.getString("nom_user"),
						desResultats.getString("prenom_user"), 
						desResultats.getString("adresse_user"),
						desResultats.getString("telephone_user"),
						desResultats.getString("mdp_user"), 
						desResultats.getString("ville_user"), 
						desResultats.getString("code_postal_user"),
						desResultats.getString("email"),
						desResultats.getString("type_user"));

				
				lesUser.add(unUser);
			}
			unStat.close();
			uneBDD.seDeconnecter();
		} catch (SQLException exp) {
			System.out.println("Erreur d'execution de la requete : " + requete);
		}
		return lesUser;

	}

	public static void deleteUser(int iduser) {
		String requete = "delete from client where id_user=" + iduser + ";";

		try {
			uneBDD.seConnecter();
			Statement unStat = uneBDD.getMaConnexion().createStatement();
			unStat.execute(requete);
			unStat.close();
			uneBDD.seDeconnecter();
		} catch (SQLException exp) {
			System.out.println("Erreur d'execution de la requete : " + requete);
		}
	}

	public static void updateUser(User unUser) {
		String requete = "update _user set nom_user='" + unUser.getNom() + "',prenom_user='" + unUser.getPrenom()
				+ "',adresse_user='" + unUser.getAdresse() + "',type_user='" + unUser.getType() + "',telephone_user='"
				+ unUser.getTelephone() + "',mdp_user'" + unUser.getMdp() + "',ville_user'" + unUser.getVille()
				+ "',code_postal_user'" + unUser.getCode_postale() + "' where id_user =" + unUser.getId_user() + "');";

		try {
			uneBDD.seConnecter();
			Statement unStat = uneBDD.getMaConnexion().createStatement();
			unStat.execute(requete);
			unStat.close();
			uneBDD.seDeconnecter();
		} catch (SQLException exp) {
			System.out.println("Erreur d'execution de la requete : " + requete);
		}
	}

	public static User selectWhereUser(String email, String mdp) {

		User unUser = null;
		String requete = " select * from _user where email='" + email + "' and mdp_user='" + mdp + "' ;";
		try {
			uneBDD.seConnecter();
			Statement unStat = uneBDD.getMaConnexion().createStatement();
			ResultSet unResultat = unStat.executeQuery(requete);

			if (unResultat.next()) {
				unUser = new User(unResultat.getInt("id_user"), 
						unResultat.getString("nom_user"),
						unResultat.getString("prenom_user"), 
						unResultat.getString("adresse_user"),
						unResultat.getString("telephone_user"),
						unResultat.getString("mdp_user"), 
						unResultat.getString("ville_user"), 
						unResultat.getString("code_postal_user"),
						unResultat.getString("email"),
						unResultat.getString("type_user"));
						
						

			}
			unStat.close();
			uneBDD.seDeconnecter();
		} catch (SQLException exp) {
			System.out.println("Erreur d'execution de la requete :" + requete);

		}
		return unUser;
	}
	public static User selectWhereidUser(int id_user) {

		User unUser = null;
		String requete = " select *from _user where id_user='" + id_user +"' ;";
		try {
			uneBDD.seConnecter();
			Statement unStat = uneBDD.getMaConnexion().createStatement();
			ResultSet unResultat = unStat.executeQuery(requete);

			if (unResultat.next()) {
				unUser = new User(unResultat.getInt("id_user"), 
						unResultat.getString("nom_user"),
						unResultat.getString("prenom_user"), 
						unResultat.getString("adresse_user"),
						unResultat.getString("telephone_user"),
						unResultat.getString("mdp_user"), 
						unResultat.getString("ville_user"), 
						unResultat.getString("code_postal_user"),
						unResultat.getString("email"),
						unResultat.getString("type_user"));

			}
			unStat.close();
			uneBDD.seDeconnecter();
		} catch (SQLException exp) {
			System.out.println("Erreur d'execution de la requete :" + requete);

		}
		return unUser;
	}

	/***********************************
	 *********** COMMANDE********************
	 */

	public static void insertCmd(Commande uneCommande) {
		{
			String requete = "insert into commande values (null, '" + uneCommande.getId_colis() + "','"+ uneCommande.getNbcolis() + "','"
					+ uneCommande.getEtats() + "','" + uneCommande.getDate() + "','" + uneCommande.getLibelle_etats()
					+ "','" + uneCommande.getDescription_envoie() + "','" + uneCommande.getContenue_envoie() + "','"
					+ uneCommande.getMontant() + "','" + uneCommande.getId_user() + "','" + uneCommande.getId_adresse()
					+ "');";

			try {
				uneBDD.seConnecter();
				Statement unStat = uneBDD.getMaConnexion().createStatement();
				unStat.execute(requete);
				unStat.close();
				uneBDD.seDeconnecter();
			} catch (SQLException exp) {
				System.out.println("Erreur d'execution de la requete : " + requete);
			}
		}
	}

	public static ArrayList<Commande> selectAllCommande() {

		ArrayList<Commande> lesCommandes = new ArrayList<Commande>();

		String requete = "select* from commande";

		try {
			uneBDD.seConnecter();
			Statement unStat = uneBDD.getMaConnexion().createStatement();
			ResultSet desResultats = unStat.executeQuery(requete);

			while (desResultats.next()) {
				Commande uneCommande = new Commande(
						desResultats.getInt("id_envoi"),
						desResultats.getInt("id_colis"),
						desResultats.getInt("nb_colis"),
						desResultats.getString("etats_envoi"), 
						desResultats.getString("date_commande"),
						desResultats.getString("libelle_etats_envoi"), 
						desResultats.getString("description_envoie"),
						desResultats.getString("contenue_envoie_"), 
						desResultats.getFloat("montant_commande"),
						desResultats.getInt("id_user"), 
						desResultats.getInt("Id_Adresse")

				);
				lesCommandes.add(uneCommande);
			}
			unStat.close();
			uneBDD.seDeconnecter();
		} catch (SQLException exp) {
			System.out.println("Erreur d'execution de la requete : " + requete);
		}
		return lesCommandes;

	}

	public static void deleteCommande(int idcommande) {
		String requete = "delete from client where id_commande=" + idcommande + ";";

		try {
			uneBDD.seConnecter();
			Statement unStat = uneBDD.getMaConnexion().createStatement();
			unStat.execute(requete);
			unStat.close();
			uneBDD.seDeconnecter();
		} catch (SQLException exp) {
			System.out.println("Erreur d'execution de la requete : " + requete);
		}
	}

	public static void updateCommande(Commande uneCommande) {
		String requete = "update commande set ,id_colis='"+uneCommande.getId_colis() + "', nb_colis='" +  uneCommande.getNbcolis() + "',etats_envoi='"
				+ uneCommande.getEtats() + "',date_commande='" + uneCommande.getDate() + "',libelle_etats_envoi='"
				+ uneCommande.getLibelle_etats() + "',description_envoie='" + uneCommande.getDescription_envoie()
				+ "',contenue_envoie='" + uneCommande.getContenue_envoie() + "',montant_commande='"
				+ uneCommande.getMontant() + "');";

		try {
			uneBDD.seConnecter();
			Statement unStat = uneBDD.getMaConnexion().createStatement();
			unStat.execute(requete);
			unStat.close();
			uneBDD.seDeconnecter();
		} catch (SQLException exp) {
			System.out.println("Erreur d'execution de la requete : " + requete);
		}
	}
	
	public static Commande selectCommaneWhere(int id_user) {
		
		Commande uneCommande = null;
		String requete = " select * from commande where id_user='" + id_user + "';";
		try {
			uneBDD.seConnecter();
			Statement unStat = uneBDD.getMaConnexion().createStatement();
			ResultSet unResultat = unStat.executeQuery(requete);

			if (unResultat.next()) {
				uneCommande = new Commande(
						unResultat.getInt("id_envoi"), 
						unResultat.getInt("id_colis"), 
						unResultat.getInt("nb_colis"),
						unResultat.getString("etats_envoi"), 
						unResultat.getString("date_commande"),
						unResultat.getString("libelle_etats_envoi"),
						unResultat.getString("description_envoie"), 
						unResultat.getString("contenue_envoie_"), 
						unResultat.getFloat("montant_commande"), 
						unResultat.getInt("id_user"),
						unResultat.getInt("Id_Adresse")
						
						);
						
						

			}
			unStat.close();
			uneBDD.seDeconnecter();
		} catch (SQLException exp) {
			System.out.println("Erreur d'execution de la requete :" + requete);

		}
		return uneCommande;
	}
	public static Commande selectCommaneWhereIdCommande(int id_envoi) {
		
		Commande uneCommande = null;
		String requete = " select * from commande where id_envoi='" + 	id_envoi + "';";
		try {
			uneBDD.seConnecter();
			Statement unStat = uneBDD.getMaConnexion().createStatement();
			ResultSet unResultat = unStat.executeQuery(requete);

			if (unResultat.next()) {
				uneCommande = new Commande(
						unResultat.getInt("id_envoi"), 
						unResultat.getInt("id_colis"), 
						unResultat.getInt("nb_colis"),
						unResultat.getString("etats_envoi"), 
						unResultat.getString("date_commande"),
						unResultat.getString("libelle_etats_envoi"),
						unResultat.getString("description_envoie"), 
						unResultat.getString("contenue_envoie_"), 
						unResultat.getFloat("montant_commande"), 
						unResultat.getInt("id_user"),
						unResultat.getInt("Id_Adresse")
						
						);
						
						

			}
			unStat.close();
			uneBDD.seDeconnecter();
		} catch (SQLException exp) {
			System.out.println("Erreur d'execution de la requete :" + requete);

		}
		return uneCommande;
	}

	/***********************************
	 *********** COLIS********************
	 */

	public static void insertColis(Colis unColis) {
		{
			String requete = "insert into colis values (null, '" + unColis.getLongeur() + "','" + unColis.getLargeur()
					+ "','" + unColis.getValeur() + "','" + unColis.getHauteur() + "','" + unColis.getPoids() + "','"
					+ unColis.getRef_colis() + "','" + unColis.getId_type_envoie() + "','" + unColis.getId_transport()
					+ "','" + unColis.id_tarif + "','" + unColis.getId_categorie()+ "','" + unColis.getId_user()
					+ "');";
			try {
				uneBDD.seConnecter();
				Statement unStat = uneBDD.getMaConnexion().createStatement();
				unStat.execute(requete);
				unStat.close();
				uneBDD.seDeconnecter();
			} catch (SQLException exp) {
				System.out.println("Erreur d'execution de la requete : " + requete);
			}

		}
	}
	public static Colis selectColisWhere(int id_user) {
		
		Colis lesColis = null;
		String requete = " select * from Colis where id_user='" + id_user + "';";
		try {
			uneBDD.seConnecter();
			Statement unStat = uneBDD.getMaConnexion().createStatement();
			ResultSet lesResultats = unStat.executeQuery(requete);

			if (lesResultats.next()) {
				lesColis = new Colis(
						
						lesResultats.getInt("id_colis"), 
						lesResultats.getInt("Longueur"),
						lesResultats.getInt("largueur"), 
						lesResultats.getInt("valeur_declarer"),
						lesResultats.getInt("hauteur"),
						lesResultats.getFloat("poids_colis"), 
						lesResultats.getString("reference_colis"), 
						lesResultats.getInt("id_type_envoie"), 
						lesResultats.getInt("id_transporteur"),
						lesResultats.getInt("id_tarif"),
						lesResultats.getInt("id_categorie"),
						lesResultats.getInt("id_user")
						);
						
				

			}
			unStat.close();
			uneBDD.seDeconnecter();
		} catch (SQLException exp) {
			System.out.println("Erreur d'execution de la requete :" + requete);

		}
		return lesColis;
	}
	/*
	 * public static ArrayList<Colis> selectAllColis(){
	 * 
	 * ArrayList<Colis> lesColis = new ArrayList<Colis>() ;
	 * 
	 * String requete ="select * from Colis;";
	 * 
	 * try { uneBDD.seConnecter(); Statement unStat =
	 * uneBDD.getMaConnexion().createStatement(); ResultSet desResultats =
	 * unStat.executeQuery(requete);
	 * 
	 * while (desResultats.next()) { Colis unColis = new Colis (
	 * desResultats.getInt("id_colis"), desResultats.getInt("Longueur"),
	 * desResultats.getInt("largueur"), desResultats.getInt("valeur_declarer"),
	 * desResultats.getInt("hauteur"), desResultats.getFloat("poids_colis"),
	 * desResultats.getString("r�f�rence_colis")
	 * 
	 * 
	 * ); lesColis.add(unColis); } unStat.close(); uneBDD.seDeconnecter(); }
	 * catch(SQLException exp) {
	 * System.out.println("Erreur d'execution de la requete : "+requete); } return
	 * lesColis;
	 * 
	 * }
	 * 
	 * 
	 * 
	 * /*********************************** ADRESSE********************
	 */

	public static void insertAdresse(Adresse uneAdresse) {
		{
			String requete = "insert into Adresse values (null, '" + uneAdresse.getAddresse_id_user() + "','"
					+ uneAdresse.getNom() + "','" + uneAdresse.getPrenom() + "','" + uneAdresse.getEmail() + "','"
					+ uneAdresse.getTelephone() + "','" + uneAdresse.getComplement_adresse() + "','"
					+ uneAdresse.getAdresse() + "','" + uneAdresse.getVille() + "','" + uneAdresse.getCode_postale()
					+ "','" + uneAdresse.getPays() + "','" + uneAdresse.getType() + "');";

			try {
				uneBDD.seConnecter();
				Statement unStat = uneBDD.getMaConnexion().createStatement();
				unStat.execute(requete);
				unStat.close();
				uneBDD.seDeconnecter();
			} catch (SQLException exp) {
				System.out.println("Erreur d'execution de la requete : " + requete);
			}

		}
	}

	public static Adresse selectAdresseExp(int id_user) {
		String expd ="expediteur";
		Adresse uneAdresse = null;
		String requete = " select * from adresse where 	Adresse_id_user='" + id_user + "' and type='" + expd + "';";
		try {
			uneBDD.seConnecter();
			Statement unStat = uneBDD.getMaConnexion().createStatement();
			ResultSet unResultat = unStat.executeQuery(requete);

			if (unResultat.next()) {
				uneAdresse = new Adresse(
						unResultat.getInt("Id_Adresse"), 
						unResultat.getInt("Adresse_id_user"),
						unResultat.getString("nom"), 
						unResultat.getString("prenom"),
						unResultat.getString("email"),
						unResultat.getString("telephone"), 
						unResultat.getString("complement_adresse"), 
						unResultat.getString("adresse"), 
						unResultat.getString("ville"),
						unResultat.getString("code_postale"),
						unResultat.getString("code_postale"),
						unResultat.getString("type")
						);
						
						

			}
			unStat.close();
			uneBDD.seDeconnecter();
		} catch (SQLException exp) {
			System.out.println("Erreur d'execution de la requete :" + requete);

		}
		return uneAdresse;
	}
	
	public static Adresse selectAdresseDest(int id_user) {
		String dest ="'destinataire";
		Adresse uneAdresse = null;
		String requete = " select * from adresse where 	Adresse_id_user='" + id_user + "' and type='" + dest + "';";
		try {
			uneBDD.seConnecter();
			Statement unStat = uneBDD.getMaConnexion().createStatement();
			ResultSet unResultat = unStat.executeQuery(requete);

			if (unResultat.next()) {
				uneAdresse = new Adresse(
						unResultat.getInt("Id_Adresse"), 
						unResultat.getInt("Adresse_id_user"),
						unResultat.getString("nom"), 
						unResultat.getString("prenom"),
						unResultat.getString("email"),
						unResultat.getString("telephone"), 
						unResultat.getString("complement_adresse"), 
						unResultat.getString("adresse"), 
						unResultat.getString("ville"),
						unResultat.getString("code_postale"),
						unResultat.getString("code_postale"),
						unResultat.getString("type")
						);
						
						

			}
			unStat.close();
			uneBDD.seDeconnecter();
		} catch (SQLException exp) {
			System.out.println("Erreur d'execution de la requete :" + requete);

		}
		return uneAdresse;
	}
	
	
	/*********************************** COMPOSE********************
	 */
	
	public static void insertCompose(Compose Compose) {
		{
			Colis unColis = new Colis();
			Compose.setId_colis(unColis.getId_colis());
			
			
			String requete = "insert into Compose values ( '" + Compose.getIdcommande() + "','"
					+ Compose.getId_colis() + "','" + Compose.getQuantite() + "');";

			try {
				uneBDD.seConnecter();
				Statement unStat = uneBDD.getMaConnexion().createStatement();
				unStat.execute(requete);
				unStat.close();
				uneBDD.seDeconnecter();
			} catch (SQLException exp) {
				System.out.println("Erreur d'execution de la requete : " + requete);
			}

		}
	}



/***********************************
 *********** TRANSPORTEUR ********************
 */

public static ArrayList<Transporteur> selectAllTransporteur() {

	ArrayList<Transporteur> lesTransporteurs = new ArrayList<Transporteur>();

	String requete = "select * from transporteur";

	try {
		uneBDD.seConnecter();
		Statement unStat = uneBDD.getMaConnexion().createStatement();
		ResultSet desResultats = unStat.executeQuery(requete);

		while (desResultats.next()) {
			Transporteur unTransporteur= new Transporteur(
					desResultats.getInt("id_transporteur"),
					desResultats.getString("nom_transporteur"), 
					desResultats.getString("ville_transporteur"),
					desResultats.getString("code_postal_transporteur"),
					desResultats.getFloat("tarif_au_km")
			);
			lesTransporteurs.add(unTransporteur);
		}
		unStat.close();
		uneBDD.seDeconnecter();
	} catch (SQLException exp) {
		System.out.println("Erreur d'execution de la requete : " + requete);
	}
	return lesTransporteurs;

	}


	public static Transporteur selectWhereTransporteur(int id_transport){
	Transporteur unTransporteur =null;
	
	String requete =" select * from transporteur where id_transporteur="+id_transport+";";
	  try {
			uneBDD.seConnecter();
			Statement unStat = uneBDD.getMaConnexion().createStatement();
			ResultSet Resultat = unStat.executeQuery(requete);
			
		
			if(Resultat.next()) {
				 unTransporteur = new Transporteur(
						Resultat.getInt("id_transporteur"),
						Resultat.getString("nom_transporteur"),
						Resultat.getString("ville_transporteur"),
						Resultat.getString("code_postal_transporteur"),
						Resultat.getFloat("tarif_au_km")
					
						);
					
			}
			unStat.close();
			uneBDD.seDeconnecter();
		}
		catch(SQLException exp) {
			System.out.println("Erreur d'execution de la requete :"+ requete);
			
		}
	  return unTransporteur;
	}



		// delete transporteur
	public static void deleteTransporteur(int id_transport) {
		String requete = "delete from transporteur where id_transporteur=" + id_transport + ";";
	
		try {
			uneBDD.seConnecter();
			Statement unStat = uneBDD.getMaConnexion().createStatement();
			unStat.execute(requete);
			unStat.close();
			uneBDD.seDeconnecter();
		} catch (SQLException exp) {
			System.out.println("Erreur d'execution de la requete : " + requete);
		}
	}
	
	public static void updateTransporteur(Transporteur unTransporteur) {
		String requete = "update transporteur set nom_transporteur='" + unTransporteur.getNom_transporteur() + "',ville_transporteur='" + unTransporteur.getVille_transporteur()
				+ "',code_postal_transporteur='" + unTransporteur.getCode_postal() + "',tarik_au_km='" + unTransporteur.getTarif_au_km() + "');";

		try {
			uneBDD.seConnecter();
			Statement unStat = uneBDD.getMaConnexion().createStatement();
			unStat.execute(requete);
			unStat.close();
			uneBDD.seDeconnecter();
		} catch (SQLException exp) {
			System.out.println("Erreur d'execution de la requete : " + requete);
		}
	}


}
