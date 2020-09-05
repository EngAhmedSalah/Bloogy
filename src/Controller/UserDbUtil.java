package Controller;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class UserDbUtil
{
    private DataSource dataSource;

    public UserDbUtil(DataSource dataSource)
    {
        this.dataSource = dataSource;
    }
    public List<User> getUsers() throws SQLException, ClassNotFoundException
    {
        List<User> users = new ArrayList<>();
        //DatabaseConnection dbConnection = new DatabaseConnection("Bloogy" , "root" , "root");
        Connection con = dataSource.getConnection();
        try
        {
            Statement statement = con.createStatement();
            ResultSet resultSet = statement.executeQuery("SELECT  * FROM users ");
            while (resultSet.next())
            {
                String id = resultSet.getString("id");
                String firstName = resultSet.getString("firstName");
                String lastName = resultSet.getString("lastName");
                String dateOfBirth = resultSet.getString("Date of Birth");
                User tmp = new User(id , firstName , lastName , dateOfBirth);
                users.add(tmp);
            }
            return users;
        }
        catch (Exception e)
        {
            System.out.println("Not Connected");
            e.printStackTrace();
        }
        finally
        {
            //close Connection
            con.close();
        }
        return users;
    }
}
