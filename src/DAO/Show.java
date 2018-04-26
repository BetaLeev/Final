package DAO;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 * Created by alphb on 18/03/2018.
 */
public class Show {
    private static Accessdatabases accessdatabases = new Accessdatabases();

    private static Accessdatabases getAccessdatabases() {
        return accessdatabases;
    }

    public static void show(ResultSet myRs) throws SQLException {
        while (myRs.next()) {

            int id = myRs.getInt("id");
            String name = myRs.getString("user");
            String password = myRs.getString("user");
            String phone = myRs.getString("user");
            System.out.println("id :" + id + "name: " + name + " password :" + password + " phone: " + phone);
        }
    }

    public static void main(String args[]) throws SQLException {
        Connection myConn = null;
        try {
            getAccessdatabases().getConnection();
            myConn = getAccessdatabases().getConnection();
        } catch (Exception e) {
            System.out.println("Error");
        }

        PreparedStatement myStmt = null;
        ResultSet myRs = null;
        String sql = "select * from user";

        myStmt = myConn.prepareStatement(sql);
        myRs = myStmt.executeQuery();
        show(myRs);
        try {
            getAccessdatabases().close(myStmt, myConn);
        } catch (Exception e) {
            System.out.println("Error");
        }
    }
//    public static void main(String args[])throws SQLException{
//        Connection myConn = null;
//        try {
//            getAccessdatabases().getConnection();
//            myConn = getAccessdatabases().getConnection();
//        }catch (Exception e){
//            System.out.println("Error");
//        }
//
//        PreparedStatement myStmt = null;
//        ResultSet myRs = null;
//        String sql = "select * from user";
//
//        myStmt = myConn.prepareStatement(sql);
//        myRs = myStmt.executeQuery();
//        show(myRs);
//
//        try {
//            getAccessdatabases().close(myStmt,myConn);
//        }catch (Exception e){
//            System.out.println("Error");
//        }
//    }
}
