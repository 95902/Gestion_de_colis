package modele;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import controleur.Adresse;
import controleur.Colis;
import controleur.Commande;
import controleur.User;

public class Modele {
	
	private static BDD uneBDD = new BDD("localhost:3306","khyo","root","");


	/***********************************
	***********USER********************
	**********************************  */

	
	public static void insertUser (User unUser) 
		{
			String requete = "insert into _user values (null, '"+ unUser.getNom()
			+"','"+ unUser.getPrenom() +"','"+unUser.getAdresse()
			+"','"+unUser.getTelephone()+"','"+ unUser.getMdp() +"','"+unUser.getVille()+"',"
			+ "'"+unUser.getCode_postale()+"' ,'"+unUser.getEmail()+"');";
			
			try
			{
				uneBDD.seConnecter();
				Statement unStat = uneBDD.getMaConnexion().createStatement();
				unStat.execute(requete);
				unStat.close();
				uneBDD.seDeconnecter();
			}
			catch(SQLException exp) 
			{
				System.out.println("Erreur d'execution de la requete : "+requete);
			}
		}
	
	public static ArrayList<User> selectAllUser(){

		ArrayList<User> lesUser = new  ArrayList<User>() ;

		String requete ="select * from _user;";

		try
		{
			uneBDD.seConnecter();
			Statement unStat = uneBDD.getMaConnexion().createStatement();
			ResultSet desResultats = unStat.executeQuery(requete);

			while (desResultats.next())
			{
				User unUser = new User
					(
						desResultats.getInt("iduser"),
						desResultats.getString("nom"),
						desResultats.getString("prenom"),
						desResultats.getString("adresse"),
						desResultats.getString("type"),
						desResultats.getString("telephone"),
						desResultats.getString("mdp"),
						desResultats.getString("ville"),
						desResultats.getString("code_postale")

					);
				lesUser.add(unUser);
			}
			unStat.close();
			uneBDD.seDeconnecter();
		}
		catch(SQLException exp)
		{
			System.out.println("Erreur d'execution de la requete : "+requete);
		}
		return lesUser;

	}

	public static void deleteUser(int iduser)
	{
		String requete ="delete from client where id_user="+iduser+";";

		try
		{
			uneBDD.seConnecter();
			Statement unStat = uneBDD.getMaConnexion().createStatement();
			unStat.execute(requete);
			unStat.close();
			uneBDD.seDeconnecter();
		}
		catch(SQLException exp) 
		{
			System.out.println("Erreur d'execution de la requete : "+requete);
		}
	}

	public static void updateUser (User unUser)
	{
		String requete = "update _user set nom_user='"+ unUser.getNom()
			+"',prenom_user='"+ unUser.getPrenom() +"',adresse_user='"+unUser.getAdresse()
			+"',type_user='"+ unUser.getType()+"',telephone_user='"+unUser.getTelephone()
			+"',mdp_user'"+ unUser.getMdp() +"',ville_user'"+unUser.getVille()+"',code_postal_user'"+unUser.getCode_postale()
			+"' where id_user ="+ unUser. getId_user()
			+"');";
		
		try
		{
			uneBDD.seConnecter();
			Statement unStat = uneBDD.getMaConnexion().createStatement();
			unStat.execute(requete);
			unStat.close();
			uneBDD.seDeconnecter();
		}
		catch(SQLException exp) 
		{
			System.out.println("Erreur d'execution de la requete : "+requete);
		}
	}

	
	
	public static User selectWhereUser(String email, String mdp) {
		
		User unUser=null;
	  String requete =" select * from _user where email='"+email+"' and mdp_user='" +mdp+"' ;";
	  try {
			uneBDD.seConnecter();
			Statement unStat = uneBDD.getMaConnexion().createStatement();
			ResultSet  unResultat = unStat.executeQuery(requete);
			
		
			if(unResultat.next()) {
				 unUser = new User(
					 		unResultat.getInt("id_user"),
						 	unResultat.getString("nom_user"),
							unResultat.getString("prenom_user"),
							unResultat.getString("adresse_user"),
							unResultat.getString("ville_user"),
							unResultat.getString("code_postal_user"),
							unResultat.getString("mdp_user"),
							unResultat.getString("telephone_user"),
							unResultat.getString("email")
						);
					
			}
			unStat.close();
			uneBDD.seDeconnecter();
		}
		catch(SQLException exp) {
			System.out.println("Erreur d'execution de la requete :"+ requete);
			
		}
	  return unUser;
	}



	/***********************************
	***********COMMANDE********************
	**********************************  */

	
	
	public static void insertCmd (Commande uneCommande) {
		{
			String requete = "insert into commande values (null, '"+ uneCommande.getNbcolis()
			+"','"+ uneCommande.getEtats() +"','"+uneCommande.getDate()
			+"','"+ uneCommande.getLibelle_etats() +"','"+uneCommande.getDescription_envoie()
			+"','"+ uneCommande.getContenue_envoie() +"','"+uneCommande.getMontant()
			+"','"+ uneCommande.getId_user() +"','"+uneCommande.getId_adresse()
			+"');";
			
			try
			{
				uneBDD.seConnecter();
				Statement unStat = uneBDD.getMaConnexion().createStatement();
				unStat.execute(requete);
				unStat.close();
				uneBDD.seDeconnecter();
			}
			catch(SQLException exp) 
			{
				System.out.println("Erreur d'execution de la requete : "+requete);
			}
		}
	}
/*
	public static ArrayList<Commande> selectAllCommande(){

		ArrayList<Commande> lesCommandes = new  ArrayList<Commande>() ;

		String requete ="select * from commande;";

		try
		{
			uneBDD.seConnecter();
			Statement unStat = uneBDD.getMaConnexion().createStatement();
			ResultSet desResultats = unStat.executeQuery(requete);

			while (desResultats.next())
			{
				Commande uneCommande = new Commande
					(
						desResultats.getInt("idcommande"),
						desResultats.getInt("nbcolis"),
						desResultats.getString("etats"),
						desResultats.getString("libelle_etats"),
						desResultats.getString("description_envoie"),
						desResultats.getString("contenue_envoie"),
						desResultats.getFloat("montant"),
						desResultats.getDate("date")

					);
				lesCommandes.add(uneCommande);
			}
			unStat.close();
			uneBDD.seDeconnecter();
		}
		catch(SQLException exp)
		{
			System.out.println("Erreur d'execution de la requete : "+requete);
		}
		return lesCommandes;

	}
*/
	public static void deleteCommande(int idcommande)
	{
		String requete ="delete from client where id_commande="+idcommande+";";

		try
		{
			uneBDD.seConnecter();
			Statement unStat = uneBDD.getMaConnexion().createStatement();
			unStat.execute(requete);
			unStat.close();
			uneBDD.seDeconnecter();
		}
		catch(SQLException exp) 
		{
			System.out.println("Erreur d'execution de la requete : "+requete);
		}
	}
	
	public static void updateCommande (Commande uneCommande)
	{
		String requete = "update commande set nb_colis='"+ uneCommande.getNbcolis()
			+"',etats_envoi='"+ uneCommande.getEtats() +"',date_commande='"+uneCommande.getDate()
			+"',libelle_etats_envoi='"+ uneCommande.getLibelle_etats()+"',description_envoie='"+uneCommande.getDescription_envoie()
			+"',contenue_envoie='"+ uneCommande.getContenue_envoie() +"',montant_commande='"+uneCommande.getMontant()
			+"');";
		
		try
		{
			uneBDD.seConnecter();
			Statement unStat = uneBDD.getMaConnexion().createStatement();
			unStat.execute(requete);
			unStat.close();
			uneBDD.seDeconnecter();
		}
		catch(SQLException exp) 
		{
			System.out.println("Erreur d'execution de la requete : "+requete);
		}
	}



		/***********************************
		***********	COLIS********************
		**********************************  */


		public static void insertColis(Colis unColis) {
			{
				String requete = "insert into colis values (null, '"+ unColis.getLongeur()
				+"','"+ unColis.getLargeur()+"','"+ unColis.getValeur() +"','"+unColis.getHauteur()
				+"','"+ unColis.getPoids() +"','"+unColis.getRef_colis()
				+"','"+ unColis.getId_type_envoie() +"','"+unColis.getId_transport()
				+"','"+ unColis.id_tarif +"','"+unColis.getId_categorie()
				+"');";
				try
				{
					uneBDD.seConnecter();
					Statement unStat = uneBDD.getMaConnexion().createStatement();
					unStat.execute(requete);
					unStat.close();
					uneBDD.seDeconnecter();
				}
				catch(SQLException exp) 
				{
					System.out.println("Erreur d'execution de la requete : "+requete);
				}

			}
		}
		/*
		public static ArrayList<Colis> selectAllColis(){

			ArrayList<Colis> lesColis = new  ArrayList<Colis>() ;

			String requete ="select * from Colis;";

			try
			{
				uneBDD.seConnecter();
				Statement unStat = uneBDD.getMaConnexion().createStatement();
				ResultSet desResultats = unStat.executeQuery(requete);

				while (desResultats.next())
				{
					Colis unColis = new Colis
						(
							desResultats.getInt("id_colis"),
							desResultats.getInt("Longueur"),
							desResultats.getInt("largueur"),
							desResultats.getInt("valeur_declarer"),
							desResultats.getInt("hauteur"),
							desResultats.getFloat("poids_colis"),
							desResultats.getString("référence_colis")
							

						);
					lesColis.add(unColis);
				}
				unStat.close();
				uneBDD.seDeconnecter();
			}
			catch(SQLException exp)
			{
				System.out.println("Erreur d'execution de la requete : "+requete);
			}
			return lesColis;

		}
		
		*/
		
		/***********************************
		***********	ADRESSE********************
		**********************************  */
		
		
		
		public static void insertAdresse(Adresse uneAdresse) {
			{
				String requete = "insert into Adresse values (null, '"+ uneAdresse.getAddresse_id_user()
				+"','"+ uneAdresse.getNom()
				+"','"+ uneAdresse.getPrenom() +"','"+uneAdresse.getEmail()
				+"','"+ uneAdresse.getTelephone() +"','"+uneAdresse.getComplement_adresse()
				+"','"+ uneAdresse.getAdresse() +"','"+uneAdresse.getVille()
				+"','"+ uneAdresse.getCode_postale() +"','"+uneAdresse.getPays()
				+"','"+ uneAdresse.getType() 
				+"');";
				
				try
				{
					uneBDD.seConnecter();
					Statement unStat = uneBDD.getMaConnexion().createStatement();
					unStat.execute(requete);
					unStat.close();
					uneBDD.seDeconnecter();
				}
				catch(SQLException exp) 
				{
					System.out.println("Erreur d'execution de la requete : "+requete);
				}

			}
		}
		
		
		public static void insertAdresse2(Adresse uneAdresse) {
			{
				String requete = "insert into Adresse values ('"+ uneAdresse.getId_adresse()
				
				+"','"+ uneAdresse.getNom() +"','"+uneAdresse.getPrenom()
				+"','"+ uneAdresse.getEmail()+"','"+uneAdresse.getTelephone()
				+"','"+ uneAdresse.getComplement_adresse() +"','"+uneAdresse.getAdresse()
				+"','"+ uneAdresse.getVille() +"','"+uneAdresse.getCode_postale()
				+"','"+ uneAdresse.getPays() +"','"+uneAdresse.getType() 
				+"');";
				
				try
				{
					uneBDD.seConnecter();
					Statement unStat = uneBDD.getMaConnexion().createStatement();
					unStat.execute(requete);
					unStat.close();
					uneBDD.seDeconnecter();
				}
				catch(SQLException exp) 
				{
					System.out.println("Erreur d'execution de la requete : "+requete);
				}

			}
		}
		
		
		
		
		
}

















