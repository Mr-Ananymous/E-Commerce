package backend;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public Login() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
         response.setContentType("text/html");
         PrintWriter pw=response.getWriter();
         String uname=request.getParameter("uname");
         String password=request.getParameter("password");
         String name = null;
         try {
			Class.forName("com.mysql.jdbc.Driver");
		    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/MobiZ?serverTimezone=UTC","nithish","nithish1");
            PreparedStatement ps = con.prepareStatement("SELECT * FROM user where email=? and password=?");
            PreparedStatement q = con.prepareStatement("SELECT name FROM user where email=?");
            ps.setString(1, uname);
            ps.setString(2, password);
            q.setString(1, uname);
            ResultSet rs =ps.executeQuery();
		    if(rs.next())
		    {	
		    	        ResultSet u=q.executeQuery();
		    	        while(u.next())
		    	        {
		    	        	name=u.getString(1);
		    	        }
		    	         ServletContext ct=getServletContext();
		    	         ct.setAttribute("user",name);
		    	        request.getRequestDispatcher("mainL.jsp").forward(request,response);
		    }
		    else
		    {
		    	pw.print("Username or Password is correct");
		    	request.getRequestDispatcher("Login.html").include(request,response);
		    }
		    pw.close();		     
		} catch (Exception e) {
			System.out.println(e);
		}

	}

}
