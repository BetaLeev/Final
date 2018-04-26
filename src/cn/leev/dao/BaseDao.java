package cn.leev.dao;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;


/**
 * Created by alphb on 25/04/2018.
 */
class BaseDao {
    static Properties properties = new Properties();
    //1完成jdbc的连接
    //2增加jdbc的增删改查的工具类书写
    public static Connection conn = null;


    private BaseDao() {

    }

    public static BaseDao getConnection() {
        if (conn == null) {
            try {
                properties.load(BaseDao.class.getClassLoader().getResourceAsStream("jdbc.properties"));
                String driver = properties.getProperty("jdbc.driver");
                String url = properties.getProperty("jdbc.url");
                String username = properties.getProperty("jdbc.username");
                String password = properties.getProperty("jdbc.password");
                Class.forName(driver);
                conn = DriverManager.getConnection(url, username, password);
            } catch (IOException e) {
                System.err.println("没有找到配置文件");
            } catch (ClassNotFoundException e) {
                System.err.println("没有找到配置类");
            } catch (SQLException e) {
                System.err.println("初始化数据库失败");
            }
        }
        return new BaseDao();
    }

}

