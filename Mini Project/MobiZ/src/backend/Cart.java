package backend;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Cart")
public class Cart extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public static int sum=0;
    public Cart() {
        super();

    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/MobiZ?serverTimezone=UTC","nithish","nithish1");
			ServletContext at=getServletContext();
			String pname=(String) at.getAttribute("name");
			String pprice=(String) at.getAttribute("price");
			String pimage=(String) at.getAttribute("image");
			String pcmp=(String) at.getAttribute("cmp");
			String plink=(String) at.getAttribute("link");;
			ServletContext ct=getServletContext();
			String name=(String) ct.getAttribute("user");
			if(name!=null) {	 
				 String table=name+"c";
				 PreparedStatement insert=con.prepareStatement("Insert into "+table+" values(?,?,?,?)");
				 insert.setString(1,pname);
				 insert.setString(2,pcmp);
			     insert.setString(3,pprice);
			     insert.setString(4,pimage);
                 insert.executeUpdate();
              request.getRequestDispatcher("Fetch").forward(request, response);
			}
			else
			{
				request.setAttribute("flag","1");
				request.getRequestDispatcher(plink).include(request, response);
			}
		}catch(Exception e) {e.printStackTrace();}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		doGet(request, response);
	}

}
