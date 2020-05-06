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

@WebServlet("/Remove")
public class Remove extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public Remove() {
        super();
}


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/MobiZ?serverTimezone=UTC","nithish","nithish1");
		ServletContext at=getServletContext();
		String user=(String)at.getAttribute("user");
		String pname=(String)request.getParameter("pname");
		PreparedStatement delete=con.prepareStatement("Delete from "+user+"c"+" where product= ? ");
		delete.setString(1, pname);
        delete.executeUpdate();
        Fetch.sum=0;
        request.getRequestDispatcher("Fetch").forward(request, response);;
    
	}
catch(Exception e)
		{
	     e.printStackTrace();
		}
}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
