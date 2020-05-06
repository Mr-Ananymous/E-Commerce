package backend;

import java.io.IOException;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Search")
public class Search extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public Search() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		String key=request.getParameter("search");
		String arrStr[] = key.split("\\s");
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/MobiZ?serverTimezone=UTC","nithish","nithish1");
			PreparedStatement st=con.prepareStatement("Select * from product where lower(company)=?",ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
			PreparedStatement st1=con.prepareStatement("Select * from product where lower(pname)=?",ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
			PreparedStatement st2=con.prepareStatement("Select * from product where lower(company)=?",ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
			if(arrStr[0].equals("iphone") || arrStr[0].equals("Iphone"))
			{
				st.setString(1,"Apple");
			}
			else
			{
			st.setString(1,arrStr[0]);
			}
		   if(arrStr[0].equals("Asus") || arrStr[0].equals("asus"))
			{
				st.setString(1,"Asus");
				ResultSet as1=st.executeQuery();
				 as1.absolute(1);
	    	        request.setAttribute("name1",as1.getString(2));
	    	        request.setAttribute("price1",as1.getString(4));
	    	        request.setAttribute("img1",as1.getString(6));
	    	        request.setAttribute("link1",as1.getString(7));
	    	     as1.absolute(2);
	       	        request.setAttribute("name2",as1.getString(2));
	       	        request.setAttribute("price2",as1.getString(4));   
	       	        request.setAttribute("img2",as1.getString(6));
	       	        request.setAttribute("link2",as1.getString(7));
	       	     st2.setString(1,"Oneplus");
	       	     ResultSet as=st2.executeQuery();
	             as.absolute(1);
	     	        request.setAttribute("name3",as.getString(2));
	     	        request.setAttribute("price3",as.getString(4));
	     	        request.setAttribute("img3",as.getString(6));
	     	        request.setAttribute("link3",as.getString(7));
	     	     as.absolute(2);
	        	        request.setAttribute("name4",as.getString(2));
	                  request.setAttribute("price4",as.getString(4));
	         	      request.setAttribute("img4",as.getString(6));
	         	      request.setAttribute("link4",as.getString(7));
	             as.absolute(3);
	             	        request.setAttribute("name5",as.getString(2));
	             	        request.setAttribute("price5",as.getString(4));
	             	       request.setAttribute("img5",as.getString(6));
	             	      request.setAttribute("link5",as1.getString(7));  
	             as.absolute(4);
	             	        request.setAttribute("name6",as.getString(2));
	             	        request.setAttribute("price6",as.getString(4));
	             	       request.setAttribute("img6",as.getString(6));
	             	      request.setAttribute("link6",as1.getString(7));  	      
		    }
		   else
		   {
		   	st1.setString(1,key);
			ResultSet rs1=st1.executeQuery();
			ResultSet rs=st.executeQuery();
			   if(rs1.next())
				   {
				   request.setAttribute("name1",rs1.getString(2));
				   request.setAttribute("price1",rs1.getString(4));
				   request.setAttribute("img1",rs1.getString(6));
				   request.setAttribute("link1",rs1.getString(7));
				   }     
				   else
				   {
					   rs.absolute(3);
					   request.setAttribute("nam1",rs.getString(2));
					   request.setAttribute("price1",rs.getString(4));
					   request.setAttribute("img1",rs.getString(6));
					   request.setAttribute("link1",rs1.getString(7));
				   }
			   

		  rs.absolute(1);
    	        request.setAttribute("name2",rs.getString(2));
    	        request.setAttribute("price2",rs.getString(4));
    	        request.setAttribute("img2",rs.getString(6));
    	        request.setAttribute("link2",rs.getString(7));
    	  rs.absolute(2);
       	        request.setAttribute("name3",rs.getString(2));
       	        request.setAttribute("price3",rs.getString(4));   
       	     request.setAttribute("img3",rs.getString(6));
       	   request.setAttribute("link3",rs.getString(7));
           rs.absolute(3);
     	        request.setAttribute("name4",rs.getString(2));
     	        request.setAttribute("price4",rs.getString(4));
     	       request.setAttribute("img4",rs.getString(6));
     	      request.setAttribute("link4",rs.getString(7));
     	   rs.absolute(4);
         	        request.setAttribute("name5",rs.getString(2));
         	        request.setAttribute("price5",rs.getString(4));
         	       request.setAttribute("img5",rs.getString(6));
         	      request.setAttribute("link5",rs.getString(7));
           rs.absolute(5);
             	        request.setAttribute("name6",rs.getString(2));
             	        request.setAttribute("price6",rs.getString(4));
             	       request.setAttribute("img6",rs.getString(6));
             	      request.setAttribute("link6",rs.getString(7));
    	  
			
		   }
			request.getRequestDispatcher("search.jsp").forward(request,response);
		}catch (Exception e) {
			System.out.println(e);
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		}

}
