package DAO;

import java.sql.*;
import java.sql.ResultSet;

/**
 * Created by alphb on 11/04/2018.
 */
public class Add {
    private static Accessdatabases accessdatabases = new Accessdatabases();

    private static Accessdatabases getAccessdatabases() {
        return accessdatabases;
    }

    public static void main(String[] args) {
        Connection connection = null;
        ResultSet resultSet = null;
        PreparedStatement preparedStatement = null;

        try {
            getAccessdatabases().getConnection();
            connection = getAccessdatabases().getConnection();
            preparedStatement = connection.prepareStatement("INSERT INTO USER (user,password,phone) VALUES (?,?,?)");
            preparedStatement.setString(1, "998");
            preparedStatement.setString(2, "998");
            preparedStatement.setString(3, "998");
            int x = preparedStatement.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
//            System.out.println("Error");
        }
        try {
            getAccessdatabases().close(preparedStatement, connection);
        } catch (Exception e) {

        }

    }
}
