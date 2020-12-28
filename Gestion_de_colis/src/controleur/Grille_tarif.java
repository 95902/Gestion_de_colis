package controleur;
import java.util.ArrayList;

public class Grille_tarif {
        public int id_tarif;
        public Float tarif;
       public ArrayList<Colis>lesColis;

        public Grille_tarif(int id_tarif, Float tarif) {
            super();
            this.id_tarif = id_tarif;
            this.tarif = tarif;
        }
        public Grille_tarif() {

            this.id_tarif = 0;
            this.tarif = 0f;
        }
        public int getId_tarif() {
            return id_tarif;
        }
        public void setId_tarif(int id_tarif) {
            this.id_tarif = id_tarif;
        }
        public Float getTarif() {
            return tarif;
        }
        public void setTarif(Float tarif) {
            this.tarif = tarif;
        }
}