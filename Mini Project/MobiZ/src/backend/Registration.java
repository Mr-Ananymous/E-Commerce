package backend;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Registration")
public class Registration extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public Registration() {
  
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter pw=response.getWriter();
		
		 try
		 {
	     	Class.forName("com.mysql.jdbc.Driver");
	     	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/MobiZ?serverTimezone=UTC","nithish","nithish1");
	     	PreparedStatement insert=con.prepareStatement("INSERT INTO user VALUES(?,?,?,?);");
			String name=request.getParameter("name");
			String mobno=request.getParameter("mobno");
			String email=request.getParameter("email");
			String password=request.getParameter("password");
			insert.setString(1,name);
			insert.setString(2,mobno);
			insert.setString(3,email);
			insert.setString(4,password);
			
			int i=insert.executeUpdate();
			if(i>0)
				pw.print("<!DOCTYPE html>\r\n" + 
						"<html>\r\n" + 
						"  <head>\r\n" + 
						"    <meta charset=\"utf-8\">\r\n" + 
						"    <title>Register in mobikart</title>\r\n" + 
						"    <meta charset=\"utf-8\">\r\n" + 
						"    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\r\n" + 
						"    <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css\" integrity=\"sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh\" crossorigin=\"anonymous\">"
						+" <body><div class=\"alert alert-success\"><h3>Success! You registered Successfully.Your username is your mail-ID.You will be redirected to Login page now</h3> </div><script src=\"https://code.jquery.com/jquery-3.4.1.slim.min.js\" integrity=\"sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n\" crossorigin=\"anonymous\"></script>\r\n" + 
						"    <script src=\"https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js\" integrity=\"sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo\" crossorigin=\"anonymous\"></script>\r\n" + 
						"    <script src=\"https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js\" integrity=\"sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6\" crossorigin=\"anonymous\"></script> </body>");
			    Statement create=con.createStatement();
			    String query1="CREATE TABLE "+name+"c (product VARCHAR(45) NOT NULL,company VARCHAR(15) NOT NULL,price INT NOT NULL,image varchar(50) NOT NULL);";
			    String query2="CREATE TABLE "+name+"p (product VARCHAR(45) NOT NULL,company VARCHAR(15) NOT NULL,price INT NOT NULL);";
			    create.executeUpdate(query1);
			    create.executeUpdate(query2);
			    pw.print("<script> setTimeout(function(){ window.location.href=\"Login.html\";},5000);</script></html>");
			}
		catch(Exception e)
		{
			System.out.println(e);
		   }
		}

}
