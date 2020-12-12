package modele;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class BDD {

	
	//cette classe permet la connection a la base de donnée JBDC
	
		private String  serveur, bdd, user, mdp;
		private Connection maConnexion;
		
		
		public BDD(String serveur, String bdd, String user, String mdp) {
		
		this.serveur = serveur;
		this.bdd = bdd;
		this.user = user;
		this.mdp = mdp;
	}
	
		public void chargerPilote() {
			  try {
	                Class.forName("com.mysql.jdbc.Driver");
			  }
			  catch(ClassNotFoundException exp) {
				  System.out.println("Abscence du pilote jbdc");
			  }
		}
		
		public void seConnecter() {
			this.chargerPilote();
			String url ="jdbc:mysql://"+this.serveur+"/"+this.bdd;
			
			try {
				this.maConnexion = DriverManager.getConnection(url, this.user, this.mdp);
			}
			catch(SQLException exp) {
				System.out.print("Erreur de  connexion: "+url);
				exp.printStackTrace();
			}
		}
		
		public void seDeconnecter() {
			try {
				if(this.maConnexion !=null) {
					this.maConnexion.close();
					}
				}
			catch(SQLException exp) {
				System.out.print("Erreur de  deconnexion");
			}
		}
		
		public  Connection getMaConnexion() {
			return this.maConnexion;
		}
}
