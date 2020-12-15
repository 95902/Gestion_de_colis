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
}
