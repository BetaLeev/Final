package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

/**
 * Created by alphb on 17/03/2018.
 */
public class Accessdatabases {
    private static String dbUrl = "jdbc:mysql://127.0.0.1:3306/Final";
    private static String dbUserName = "root";
    private static String dbPassword = "";
    private static String jdbcName = "com.mysql.jdbc.Driver";

    public Connection getConnection() throws Exception {
        Class.forName(jdbcName);
        Connection connection = DriverManager.getConnection(dbUrl, dbUserName, dbPassword);
        return connection;
    }

    public void close(Statement statement, Connection connection) throws Exception {
        if (statement != null) {
            statement.close();
            if (connection != null) {
                connection.close();
            }
        }

    }
}
