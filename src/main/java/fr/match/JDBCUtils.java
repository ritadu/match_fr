package fr.match;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class JDBCUtils {

    public static void close(ResultSet resultSet, Statement stmt, Connection conn) {
        close(resultSet);
        close(stmt);
        close(conn);
    }

    private static void close(ResultSet resultSet) {
        if(resultSet != null) {
            try {
                resultSet.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }


    private static void close(Statement stmt) {
        if(stmt != null) {
            try {
                stmt.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    private static void close(Connection conn) {
        if(conn != null) {
            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

}
