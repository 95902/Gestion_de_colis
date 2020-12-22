package controleur;

import modele.Modele;
import java.util.ArrayList;
public class Controleur 
{
    /***************************
    ********USER**************
    **************************/ 
    public static void insertUser (User unUser) 
	{
		//ici : on peut réaliser des contrôles sur les données de ce client avant son insertion en BDD
		
	    Modele.insertUser(unUser); 
	}
	
	public static  ArrayList<User> selectAllUser()
	{
		return Modele.selectAllUser();
	}
	
	public static void deleteUser(int iduser)
	{
		//ici : on peut réaliser des contrôles sur les données de ce client avant son insertion en BDD
		
		Modele.deleteUser(iduser);
	}
	
	public static void  updateUser (User unUser)
	{
		//ici : on peut réaliser des contrôles sur les données de ce client avant son insertion en BDD
		
		Modele. updateUser( unUser);
	}
	
	
	public static User  selectWhereUser(String email, String mdp) {
		
			//on recupere un user en fonction de son mail et mot de passe afin qu'il se connecte
		
		 return Modele.selectWhereUser(email, mdp);
	
	}
	
	public static User  selectWhereidUser(int id_user) {
		
		//on recupere un user en fonction de son mail et mot de passe afin qu'il se connecte
	
	 return Modele.selectWhereidUser(id_user);

}

    /*****************************
    *******COMMANDE***************
    *****************************/

    public static void insertCmd (Commande uneCommande) 
	{
		//ici : on peut réaliser des contrôles sur les données de ce client avant son insertion en BDD
		
	    Modele.insertCmd(uneCommande); 
	}
	
	public static  ArrayList<Commande> selectAllCommande()
	{
		return Modele.selectAllCommande();
	}
	
	public static void deleteCommande(int idcommande)
	{
		//ici : on peut réaliser des contrôles sur les données de ce client avant son insertion en BDD
		
		Modele.deleteCommande(idcommande);
	}
	
	public static void  updateCommande (Commande uneCommande)
	{
		//ici : on peut réaliser des contrôles sur les données de ce client avant son insertion en BDD
		
		Modele. updateCommande( uneCommande);
	} 
	

	public static Commande selectCommaneWhere(int id_user)
	{
		//ici : on peut réaliser des contrôles sur les données de ce client avant son insertion en BDD
		
		return Modele.selectCommaneWhere(id_user);
	} 
	public static Commande selectCommaneWhereIdCommande(int id_envoi)
	{
		//ici : on peut réaliser des contrôles sur les données de ce client avant son insertion en BDD
		
		return Modele.selectCommaneWhereIdCommande(id_envoi);
	} 
	/*****************************
	    *******ADRESSE***************
	    *****************************/
	
	public static void insertAdresse(Adresse uneAdresse) 
	{
		//ici : on peut réaliser des contrôles sur les données de ce client avant son insertion en BDD
		
	    Modele.insertAdresse(uneAdresse); 
	}
	
	public static Adresse selectAdresseExp(int id_user)
	{
		//ici : on peut réaliser des contrôles sur les données de ce client avant son insertion en BDD
		
	   return Modele.selectAdresseExp(id_user);
	}
	public static Adresse selectAdresseDest(int id_user)
	{
		//ici : on peut réaliser des contrôles sur les données de ce client avant son insertion en BDD
		
	   return Modele.selectAdresseExp(id_user);
	}
	/*****************************
	    *******COLIS***************
	    *****************************/
	
	public static void insertColis(Colis unColis) 
	{
		//ici : on peut réaliser des contrôles sur les données de ce client avant son insertion en BDD
		
	    Modele.insertColis(unColis); 
	}
	public static Colis selectColisWhere(int id_user) 
	{
		//ici : on peut réaliser des contrôles sur les données de ce client avant son insertion en BDD
		
	   return Modele.selectColisWhere(id_user);
	}
	/*****************************
	    *******COMPOSE***************
	    *****************************/
	 public static void insertCompose (Compose Compose) 
		{
			//ici : on peut réaliser des contrôles sur les données de ce client avant son insertion en BDD
			
		    Modele.insertCompose(Compose); 
		}
	


	 	/*****************************
	 	 *******TRANSPORTEUR***************
	 	 *****************************/
	 	public static ArrayList<Transporteur> selectAllTransporteur(){
	 		return  Modele.selectAllTransporteur();
	
	 	}
}