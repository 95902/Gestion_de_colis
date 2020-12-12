package Controleur;
import java.util.ArrayList;

public class Categorie {

    public int id_categorie;
    public String type_categorie;
    public ArrayList<Colis>lesColis;

    public Categorie(int id_categorie, String type_categorie) {
        this.id_categorie = id_categorie;
        this.type_categorie = type_categorie;
    }
    public Categorie() {
        this.id_categorie = 0;
        this.type_categorie ="";
    }
    public int getId_categorie() {
        return id_categorie;
    }
    public void setId_categorie(int id_categorie) {
        this.id_categorie = id_categorie;
    }
    public String getType_categorie() {
        return type_categorie;
    }
    public void setType_categorie(String type_categorie) {
        this.type_categorie = type_categorie;
    }
}