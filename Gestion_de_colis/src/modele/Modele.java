package modele;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import controleur.Commande;
import controleur.User;

public class Modele {
	
	private static BDD uneBDD = new BDD("localhost:3306","khio","root","");
	
	public static void insertUser (User unUser) {
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
	}
	
	
	
	
	
	
	
	
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



