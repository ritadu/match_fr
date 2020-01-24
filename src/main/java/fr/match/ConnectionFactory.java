package fr.match;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionFactory {

    private final static String URL = "jdbc:postgresql://localhost/match";
    private final static String USER = "postgres";
    private final static String PASSWORD = "postgres";

    public Connection create() throws SQLException {
        return DriverManager.getConnection(URL, USER, PASSWORD);
    }
}
