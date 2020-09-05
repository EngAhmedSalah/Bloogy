package Controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.time.format.ResolverStyle;

@WebServlet("/CreateAccount")
public class CreateAccount extends HttpServlet
{
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        DatabaseConnection dbCon = new DatabaseConnection("Bloogy" , "root" , "root");
        PrintWriter out = response.getWriter();
        String query = null;
        try
        {
            Connection con = dbCon.initializeConnection();
            Statement statement = con.createStatement();
            query = "INSERT INTO users (firstName , lastName , email , password , dataOfBirth) VALUES (?,?,?,?,?)";
            PreparedStatement prep = con.prepareStatement(query);
            prep.setString(1 , request.getParameter("firstName"));
            prep.setString(2 , request.getParameter("lastName"));
            prep.setString(3 , request.getParameter("email"));
            prep.setString(4 , request.getParameter("password"));
            prep.setString(5 , request.getParameter("dataOfBirth"));
            prep.executeLargeUpdate();
            out.println(query);
            out.println("Query successfully done");
        }
         catch (Exception e)
        {
            System.out.println("Not Connected");
            e.printStackTrace();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {

    }
}
