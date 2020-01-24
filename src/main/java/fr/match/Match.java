package fr.match;

public class Match {
    private String nomEquipeLocale;
    private String nomEquipeVisiteur;


    public Match(String nomEquipeLocale, String nomEquipeVisiteur) {
        this.nomEquipeLocale=nomEquipeLocale;
        this.nomEquipeVisiteur=nomEquipeVisiteur;
    }

    public String toString() {
        String stringBuilder = nomEquipeLocale +
                " " +
                nomEquipeVisiteur;
        return stringBuilder;
    }
}
