package dao2;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class BaseDao {
    private String driver = "org.gjt.mm.mysql.Driver";
    private String url = "jdbc:mysql://localhost:3306/Final?useUnicode=true&characterEncoding=UTF-8";
    private String user = "root";
    private String password = "";
    Connection con;
    PreparedStatement pre;
    ResultSet re;

    public void getConnection() throws Exception {
        Class.forName(driver);
        con = DriverManager.getConnection(url, user, password);
    }

    public void Close() throws Exception {
        if (re != null) {
            re.close();
        }
        if (pre != null) {
            pre.close();
        }
        if (con != null) {
            con.close();
        }
    }

}
