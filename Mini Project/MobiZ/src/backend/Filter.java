package backend;
 
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Filter")
public class Filter extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public Filter() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
          
		response.setContentType("text/html");
		String option1=request.getParameter("rate");
		String option2=request.getParameter("cmp");
		String option3=request.getParameter("ratemax");
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/MobiZ?serverTimezone=UTC","nithish","nithish1");
			PreparedStatement st=con.prepareStatement("Select * from product where price<? and lower(company)=? ",ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
			PreparedStatement st1=con.prepareStatement("Select * from product where price>?",ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
            if(option3== null)
            {
            	int i=1;
    			st.setString(1, option1);
                st.setString(2, option2);
                ResultSet rs=st.executeQuery();
                while(rs.next())
                {
      	        request.setAttribute("name"+i,rs.getString(2));
      	        request.setAttribute("price"+i,rs.getString(4));
      	        request.setAttribute("img"+i,rs.getString(6));
      	        request.setAttribute("link"+i,rs.getString(7));
      	        i++;
                }
             }
            else
            {
            	st1.setString(1,option3);
            	ResultSet rs1=st1.executeQuery();
            	int i=1;
                while(rs1.next())
                {
      	        request.setAttribute("name"+i,rs1.getString(2));
      	        request.setAttribute("price"+i,rs1.getString(4));
      	        request.setAttribute("img"+i,rs1.getString(6));
      	        request.setAttribute("link"+i,rs1.getString(7));
      	        i++;
                }	
           	      
            }
    
       request.getRequestDispatcher("search.jsp").include(request,response);    	      
  	  
		
		
		
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


	}

}
