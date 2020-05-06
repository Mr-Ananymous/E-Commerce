<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
     <style>
     body
     {
       background-color: rgba(50, 149, 168);
     }
     .link{
       color: inherit;
     }
     .link:hover{
       text-decoration: none;
       color:inherit;
     }
     .main{
       left:20px;
     }
     .filter
     {
       position:absolute;
       left:5px;
       right:1500px;
       width:20%;
       top:195px;
     }
     .f
     {
       font-size:20px;
     }
     .main
     {
       position:relative;
     }
     .product{
       position:relative;
       width:940px;
       right:0px;
       left:140px;
     }
     .spec
     {
       position:absolute;
       top:0px;
       right:0px;
       width:720px;
       left:220px;
       padding-top:5px;
     }
     .pic
     {
       position:absolute;
       top:0px;
       left:70px;
     }
     footer{
       bottom:0px;
       left:0px;
       position:relative;
       width:100%;
       text-align:center;
     }
     </style>
     <link rel="icon" type="image" href="favicon.png">
    <title>MobiZ</title>
  </head>
  <body>
   <div class="container-fluid bg-dark text-white">
        <nav class="navbar navbar-expand-sm bg-dark navbar-dark shadow p-4 mb-4">
        <a class="brand">
           <img src="images/Logo.png" width="70px">&nbsp;
        </a>
        <ul class="navbar-nav">
          <li class="navbar-item">
              <%ServletContext c=getServletContext();
     String t=(String)c.getAttribute("user");
     if(t==null || t.isEmpty()) { %>
            <a href="main.html" class="text-white f">MobiZ</a>
            <%}else{ %>
             <a href="mainL.jsp" class="text-white f">MobiZ</a>
             <%} %>
          </li>
        </ul>
        &nbsp;    &nbsp;    &nbsp;
    <form class="form-inline" action="Search">
      <input class="form-control mr-sm-2 " type="text" placeholder="Search" size="70" name="search">
      <button class="btn btn-info">Search</button>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </form>
    <%ServletContext ct=getServletContext();
     String n=(String)ct.getAttribute("user");
     if(n==null || n.isEmpty()) { %>
    <a class="brand" href="cart.html">
       <img src="images/shopping-cart.jpg" width="50px">&nbsp;
    </a>    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <%}else{ %>
        <a class="brand" href="cart.jsp">
       <img src="images/shopping-cart.jpg" width="50px">&nbsp;
    </a>    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <%} %>
     <%
	 ServletContext ct1=getServletContext();
     String n1=(String)ct1.getAttribute("user");
     if(n1==null || n1.isEmpty()) { %>
              <form class="form-inline" action="Login.html">
            <button class="btn btn-info">Login</button>
            </form>
    <% } else{ 
	   out.print(n1); %>
     &nbsp;&nbsp;&nbsp;<form class="form-inline" action="main.html">
     <button class="btn btn-info">Logout</button>
     </form>
     <%}%>
  </nav>
</div>
<h3 class="text-white">Your Cart </h3><hr>
<div class="container">
  <div class="container bg-light ">
    <div class="flexbox-colomn filter">
          <img src="ad1.jpg"><br><br>
          <img src=""><br><br>
          <img src=""><br><br>
  </div>
  </div>
 <div class="container">
<% 	  String image1=(String)request.getAttribute("img1");
  if(image1!= null){ %>
  <div class="container bg-light product"><br>
 <img src="<%=request.getAttribute("img1") %>" height="130px" >
   <div class="spec">
           <h3><%=request.getAttribute("name1") %></h3>
           <p>By <em style="color:blue"><%=request.getAttribute("cmp1") %></em>&nbsp;&nbsp;&nbsp;&nbsp;Price:<%=request.getAttribute("price1") %> &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
           <form action="Remove" method="get">
                      <input type="hidden" name="pname"  value="<%=request.getAttribute("name1") %>">
               <button class="btn btn-primary" >Remove </button>  
           </form></p>
    </div><hr> 
</div>
<% }%>
<% 	  String image2=(String)request.getAttribute("img2");
  if(image2!= null){ %>
  <div class="container bg-light product"><br>
 <img src="<%=request.getAttribute("img2") %>" height="130px" >
   <div class="spec">
           <h3><%=request.getAttribute("name2") %></h3>
           <p>By <em style="color:blue"><%=request.getAttribute("cmp2") %></em>&nbsp;&nbsp;&nbsp;&nbsp;Price:<%=request.getAttribute("price2") %></p>
      <form action="Remove" method="get">
                      <input type="hidden" name="pname"  value="<%=request.getAttribute("name2") %>">
               <button class="btn btn-primary" >Remove </button>  
           </form>
    </div><hr> 
</div>
<% }%>
<% 	  String image3=(String)request.getAttribute("img3");
  if(image3!= null){ %>
  <div class="container bg-light product"><br>
 <img src="<%=request.getAttribute("img3") %>" height="130px" >
   <div class="spec">
           <h3><%=request.getAttribute("name3") %></h3>
           <p>By<em style="color:blue"> <%=request.getAttribute("cmp3") %></em>&nbsp;&nbsp;&nbsp;&nbsp;Price:<%=request.getAttribute("price3") %></p>
      <form action="Remove" method="get">
               <input type="hidden" name="pname"  value="<%=request.getAttribute("name3") %>">
               <button class="btn btn-primary" >Remove </button>  
           </form>
    </div><hr> 
</div>
<% }%>
<% 	  String image4=(String)request.getAttribute("img4");
  if(image4!= null){ %>
  <div class="container bg-light product"><br>
 <img src="<%=request.getAttribute("img4") %>" height="130px" >
   <div class="spec">
           <h3><%=request.getAttribute("name4") %></h3>
           <p>By<em style="color:blue"> <%=request.getAttribute("cmp4") %></em>&nbsp;&nbsp;&nbsp;&nbsp;Price:<%=request.getAttribute("price4") %></p>
        <form action="Remove" method="get">
                      <input type="hidden" name="pname"  value="<%=request.getAttribute("name4") %>">
               <button class="btn btn-primary" >Remove </button>  
           </form>
    </div><hr> 
</div>
<% }%>
<% 	  String image5=(String)request.getAttribute("img5");
  if(image5!= null){ %>
  <div class="container bg-light product"><br>
 <img src="<%=request.getAttribute("img5") %>" height="130px" >
   <div class="spec">
           <h3><%=request.getAttribute("name5") %></h3>
           <p>By <em style="color:blue"><%=request.getAttribute("cmp5") %></em>&nbsp;&nbsp;&nbsp;&nbsp;Price:<%=request.getAttribute("price5") %> &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;</p>
             <form action="Remove" method="get">
                      <input type="hidden" name="pname"  value="<%=request.getAttribute("name5") %>">
               <button class="btn btn-primary" >Remove </button>  
           </form>
    </div><hr> 
</div>
<% }%>
<br><br><br><br>
  <div class="container bg-light product"><br>
   <div> <% int sum=(int)request.getAttribute("sum");
             request.setAttribute("total", sum);      %> 
           <h3>Total Cart value </h3><p> Rs.<em style="color:blue"><%=request.getAttribute("sum") %> including GST and Delivery charges</em>
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="mainL.jsp"><button class="btn btn-primary"> Continue Searching</button></a>&nbsp;&nbsp;&nbsp;<a href="payment.html"><button class="btn btn-primary" > Pay</button></a></p>
    </div><hr> 
</div>
<input type="hidden" name="cartval" value="<%=sum%>">

<div class="container">
    <br>
    <h3 class="text-white" style="text-decoration:underline">Other Suggesions based on the above</h3><br>

    <div class="card-deck">
        <div class="card bg-light">
            <img class="card-img-top" src="images/card5.jpg">
            <div class="card-body text-center">
                <h4 class="card-title">Realme XT</h4>
                <p class="card-text"> Price : 16,999 <br> Available in 3 variants </p>
                <a href="realme.jsp" class="btn btn-primary">Buy now </a>
            </div>
        </div>
        <div class="card bg-light">
            <img class="card-img-top" src="images/card6.jpeg">
            <div class="card-body text-center">
                <h4 class="card-title"> Asus Zenphone 5Z</h4>
                <p class="card-text"> Price : 16,999 <br><br> Available in 3 variants <br> <em>Free-delivery</em> </p>
                <a href="asus zenphone.jsp" class="btn btn-primary">Buy now </a>
            </div>
        </div>
        <div class="card bg-light">
            <img class="card-img-top" src="images/card7.png">
            <div class="card-body text-center">
                <h4 class="card-title"> Vivo VZ1 Pro</h4>
                <p class="card-text"> Price : 18,990 <br><br> Available in 2 variants<br> <em>Free-delivery</em>  </p>
                <a href="vivo vz1 pro.jsp" class="btn btn-primary">Buy now </a>
            </div>
        </div><div class="card bg-light">
            <img class="card-img-top" src="images/card8.jpg">
            <div class="card-body text-center">
                <h4 class="card-title"> iphone 7 plus</h4>
                <p class="card-text"> Price : 34,990 <br> Available in 2 variants <br> <em>Free-delivery</em> </p>
                <a href="iphone 7 plus.jsp" class="btn btn-primary">Buy now </a>
            </div>
        </div>
    </div>
</div>
<br>
<br>
<script>
<%ServletContext co=getServletContext();%>
 var name="<%=co.getAttribute("user")%>";
 localStorage.setItem("name",name);
 localStorage.setItem("price",<%=request.getAttribute("total")%>);
</script>
<div class="jumbotron bg-dark text-center text-white">

    <h1>   <img src="images/covid.png" height="150px" width="350px">&nbsp;&nbsp;&nbsp;&nbsp;Stay Home Stay Safe </h1>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <a href="https://www.mohfw.gov.in/" class="card-link"> Get Latest Information on COVID-19</p></a>
</div>
<div class="container">
    <div class="card-deck">
        <div class="card bg-light">
            <img class="card-img-top" src="images/card9.jpg">
            <div class="card-body text-center">
                <h4 class="card-title"> Boat Rockerz 255</h4>
                <p class="card-text"> Price : 1,180 <br> Warranty : 2-years<br><em> Free delivery</em> </p>
                <a href="boat rockerz.jsp" class="btn btn-primary">Buy now </a>
            </div>
        </div>
        <div class="card bg-light">
            <img class="card-img-top" src="images/card10.jpg">
            <div class="card-body text-center">
                <h4 class="card-title"> Skull candy Crusher-wired</h4>
                <p class="card-text"> Price : 9,999 <br><em> Free delivery</em>  </p>
                <a href="skullcandy crusher.jsp" class="btn btn-primary">Buy now </a>
            </div>
        </div>
        <div class="card bg-light">
            <img class="card-img-top" src="images/card11.jpg">
            <div class="card-body text-center">
                <h4 class="card-title">Skullcandy Indy </h4>
                <p class="card-text"> Price : 6,990 <br> Warranty:1-year<br><em>Free Delivery</em>  </p>
                <a href="skullcandy indey.jsp" class="btn btn-primary">Buy now </a>
            </div>
        </div><div class="card bg-light">
            <img class="card-img-top" src="images/card12.jpeg">
            <div class="card-body text-center">
                <h4 class="card-title">Mi-20,000Mah Power bank</h4>
                <p class="card-text"> Price : 1,499 <br> <em>Free Delivery</em> </p>
                <a href="mi powerbank.jsp" class="btn btn-primary">Buy now </a>
            </div>
        </div>
    </div>
</div>
<br>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<footer class="text-white bg-dark">
    <br><br>
    <h5 class="text-center"> &copy; copyrights 2020</h5><br>
    <h6 class="text-center">
        Open source project powered by &nbsp;&nbsp;<img src="images/html-5.png">&nbsp;&nbsp;<img src="images/css.png">
        &nbsp;&nbsp;<img src="images/java.png">&nbsp;&nbsp;<img src="images/bootstrap.png">
    </h6><br>
    <h5 class="text-center">Contact info </h5>
    <h6 class="text-center">&nbsp;&nbsp;<img src="images/mail.png">&nbsp;iamnithishguhan@gmail.com </h6>
    <h6 class="text-center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;sabaribalag3@gmail.com </h6>
    <h6 class="text-center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;srinath652001@gmail.com </h6>
    <br><br>
</footer>
  </body>
</html>
