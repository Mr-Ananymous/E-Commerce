package backend;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Fetch")
public class Fetch extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public  static int sum=0;
	public Fetch() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/MobiZ?serverTimezone=UTC","nithish","nithish1");
		ServletContext at=getServletContext();
		String name=(String) at.getAttribute("user");
        Statement fetch=con.createStatement();
        ResultSet rt=fetch.executeQuery("SELECT * FROM "+name+"c");
        int i=1;
        while(rt.next())
        {  
        	request.setAttribute("name"+i,rt.getString(1));
  	        request.setAttribute("cmp"+i,rt.getString(2));
  	        request.setAttribute("price"+i,rt.getString(3));
  	        request.setAttribute("img"+i,rt.getString(4));
  	        int price=Integer.parseInt(rt.getString(3));
  	        sum=sum+price;
  	        i++;
	    }
        request.setAttribute("sum", sum);
        request.getRequestDispatcher("cart.jsp").forward(request, response);;
    
	}
catch(Exception e)
		{
	     e.printStackTrace();
		}
		}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
