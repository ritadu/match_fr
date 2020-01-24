package fr.match;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class EquipeRepository {

    private ConnectionFactory connectionFactory = new ConnectionFactory();

    public List<Equipe> findAll() {
        /*List<Equipe> list = new ArrayList();
        list.add(new Equipe("Marseille1"));
        list.add(new Equipe("Paris1"));
        list.add(new Equipe("Nantes1"));
        return list;*/
        List<Equipe> equipes = new ArrayList<>();

        String request = "SELECT id, nom FROM equipe";

        Connection conn = null;
        Statement stmt = null;
        ResultSet resultSet = null;
        try {
            conn = connectionFactory.create();
            stmt = conn.createStatement();
            resultSet = stmt.executeQuery(request);

            while (resultSet.next()) {
                Equipe equipe = new Equipe(resultSet.getString("nom"));
                equipes.add(equipe);
            }

        } catch (SQLException e) {
            System.err.println("Erreur lors de l'execution de la requête:" + request);
            //throw e;
        } finally {
            JDBCUtils.close(resultSet, stmt, conn);
        }

        return equipes;

    }

}
