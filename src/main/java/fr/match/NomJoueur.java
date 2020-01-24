package fr.match;

public class NomJoueur {
    private String nom;
    private String prenom;


    public NomJoueur(String nom, String prenom) {
        this.nom=nom;
        this.prenom=prenom;
    }

    public String toString() {
        String stringBuilder = nom +
                " " +
                prenom;
        return stringBuilder;
    }


}
