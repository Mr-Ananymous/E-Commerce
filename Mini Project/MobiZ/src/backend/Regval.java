package backend;
import java.sql.*;
public class Regval
{
	public static void insert(String name,String mobno,String email,String password)
	{
	 try
	 {
     	Class.forName("com.mysql.jdbc.Driver");
     	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/MobiZ","nithish","nithish1");
     	Statement insert=con.createStatement();
     	insert.executeUpdate("INSERT INTO user VALUES(name,mobno,email,password);");
   	
	}
	catch(Exception e)
	{
		System.out.println(e);
	   }
	}
}
