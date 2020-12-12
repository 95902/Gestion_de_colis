package Controleur;
import java.util.ArrayList;

public class Type_envoie {

        public int id_type_envoie;
        public String libelle_type_envoie;
        public ArrayList<Colis>lesColis;
        
        public Type_envoie(int id_type_envoie, String libelle_type_envoie) {
            this.id_type_envoie = id_type_envoie;
            this.libelle_type_envoie = libelle_type_envoie;
        }
        public Type_envoie() {

            this.id_type_envoie = 0;
            this.libelle_type_envoie = "";
        }
        public int getId_type_envoie() {
            return id_type_envoie;
        }
        public void setId_type_envoie(int id_type_envoie) {
            this.id_type_envoie = id_type_envoie;
        }
        public String getLibelle_type_envoie() {
            return libelle_type_envoie;
        }
        public void setLibelle_type_envoie(String libelle_type_envoie) {
            this.libelle_type_envoie = libelle_type_envoie;
        }

}