package modele;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
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
			+"','"+ unUser.getType()+"','"+unUser.getTelephone()
			+"','"+ unUser.getMdp() +"','"+unUser.getVille()+"','"+unUser.getCode_postale()
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



	/***********************************
	***********COMMANDE********************
	**********************************  */

	
	
	public static void insertCmd (Commande uneCommande) {
		{
			String requete = "insert into commande values (null, '"+ uneCommande.getNbcolis()
			+"','"+ uneCommande.getEtats() +"','"+uneCommande.getDate()
			+"','"+ uneCommande.getLibelle_etats() +"','"+uneCommande.getDescription_envoie()
			+"','"+ uneCommande.getContenue_envoie() +"','"+uneCommande.getMontant()
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
}



