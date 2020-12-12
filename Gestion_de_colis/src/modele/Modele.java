package modele;

import java.sql.SQLException;
import java.sql.Statement;

import Controleur.User;


public class Modele {
	
	private static BDD uneBDD = new BDD("localhost:3306","khyo","root","");
	
	
	 public static void insertUser(User unUser) {
		 String requete ="insert into _user  value(null, '" +unUser.getNom() +"','"+unUser.getPrenom()+"','"+unUser.getAdresse()+"','"+unUser.
	 getMdp()+"','"+unUser.getType()+"');";
	
	 try { 
		 uneBDD.seConnecter();
		 Statement unStat =uneBDD.getMaConnexion().createStatement(); 
		 unStat.execute(requete);
		 unStat.close(); uneBDD.seDeconnecter(); 
	 
	 } catch(SQLException exp) {
	 System.out.println("Erreur d'execution de la requete :"+ requete);
	 
	 	} 
	 }
	
	public static void affiche(){
       System.out.print("Hello World");
    }
}



