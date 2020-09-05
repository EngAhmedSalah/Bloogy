package Controller;

import java.util.Date;

public class User
{
    private int id;
    private String firstName , lastName , password ,  dateOfBirth;

    public User(int id, String firstName, String lastName, String password, String dateOfBirth)
    {
        this.id = id;
        this.firstName = firstName;
        this.lastName = lastName;
        this.password = password;
        this.dateOfBirth = dateOfBirth;
    }

    public User(String firstName, String lastName, String password, String dateOfBirth)
    {
        this.firstName = firstName;
        this.lastName = lastName;
        this.password = password;
        this.dateOfBirth = dateOfBirth;
    }

    public int getId()
    {
        return id;
    }

    public void setId(int id)
    {
        this.id = id;
    }

    public String getFirstName()
    {
        return firstName;
    }

    public void setFirstName(String firstName)
    {
        this.firstName = firstName;
    }

    public String getLastName()
    {
        return lastName;
    }

    public void setLastName(String lastName)
    {
        this.lastName = lastName;
    }

    public String getPassword()
    {
        return password;
    }

    public void setPassword(String password)
    {
        this.password = password;
    }

    public String getDateOfBirth()
    {
        return dateOfBirth;
    }

    public void setDateOfBirth(String dateOfBirth)
    {
        this.dateOfBirth = dateOfBirth;
    }
    //For debugging

    @Override
    public String toString()
    {
        return "User{" +
                "id=" + id +
                ", firstName='" + firstName + '\'' +
                ", lastName='" + lastName + '\'' +
                ", password='" + password + '\'' +
                ", dateOfBirth=" + dateOfBirth +
                '}';
    }
}
