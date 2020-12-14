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
	
	public static ArrayList<User> selectAllClients(){

		ArrayList<User> lesUser = new  ArrayList<User> ;

		String requete ="slect * from _user;";

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
		String requete ="delete from client where id_user="+id_user+";";

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
		String requete = "update _user set nom='"+ unUser.getNom()
			+"','"+ unUser.getPrenom() +"','"+unUser.getAdresse()
			+"','"+ unUser.getType()+"','"+unUser.getTelephone()
			+"','"+ unUser.getMdp() +"','"+unUser.getVille()+"','"+unUser.getCode_postale()
			+"' where id_user ="+ unUser.getIdclient()
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
	
}



