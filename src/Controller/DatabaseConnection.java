package Controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnection
{
    private String dbName , userName , password;
    private Connection con;

    public DatabaseConnection(String dbName, String userName, String password)
    {
        this.dbName = dbName;
        this.userName = userName;
        this.password = password;
    }
    public Connection initializeConnection() throws SQLException, ClassNotFoundException
    {
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/"+ dbName ,
                userName ,
                password);
        return con;
    }
}
