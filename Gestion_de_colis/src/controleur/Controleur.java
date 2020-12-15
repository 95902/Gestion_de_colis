package controleur;

import modele.Modele;
import java.util.ArrayList;
public class Controleur 
{

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
}
