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
     .carousel-item
     {
       text-align:center;
     }
     .carousel
     {
       height:400px;
       width:800px;
       left:250px;
       align-items: center;
     }
     .f
     {
       font-size:20px;
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
            <a href="main.html" class="text-white f">MobiZ</a>
          </li>
        </ul>
        &nbsp;    &nbsp;    &nbsp;
    <form class="form-inline" action="Search" method="get">
      <input class="form-control mr-sm-2 " type="text" placeholder="Search" size="70" name="search">
      <button class="btn btn-info">Search</button>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </form>
    <a class="brand" href="cart.html">
       <img src="images/shopping-cart.jpg" width="50px">&nbsp;
    </a>    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <%
	 ServletContext ct=getServletContext();
     String n=(String)ct.getAttribute("user");
     if(n==null || n.isEmpty())
    	 n="DEfault";
     else
	 out.print(n);
     %>
     &nbsp;&nbsp;&nbsp;
         <form class="form-inline" action="main.html">
      <button class="btn btn-info">Logout</button>
    </form>

  </nav>
</div>
      <div class="jumbotron bg-info text-white">
      <div id="ad"class="carousel slide car" data-ride="carousel">

        <ul class="carousel-indicators">
        <li  data-target="#ad" data-slide-to="0" class="active"></li>
        <li   data-target="#ad"data-slide-to="1"></li>
        <li  data-target="#ad" data-slide-to="2"></li>
        <li  data-target="#ad" data-slide-to="3"></li>
        <li  data-target="#ad" data-slide-to="4"></li>
        <li  data-target="#ad" data-slide-to="5"></li>
        <li  data-target="#ad" data-slide-to="6"></li>
        <li  data-target="#ad" data-slide-to="7"></li>
        </ul>

        <div class="carousel-inner">
        <div class="carousel-item active">
        <img src="images/mi 10.jpg" width="800px" height="400px">
        </div>
        <div class="carousel-item">
        <img src="images/JBLspeakers.jpg"width="800px" height="400px">
        </div>
        <div class="carousel-item">
        <img src="images/Galaxy S20.jpg"width="800px" height="400px">
        </div>
        <div class="carousel-item">
        <img src="images/Oppo_F11.jpg"width="800px" height="400px">
        </div>
        <div class="carousel-item">
        <img src="images/RealmeXT.jpg" width="800px" height="400px">
        </div>
        <div class="carousel-item">
        <img src="images/poco.jpg" width="800px" height="400px">
        </div>
        <div class="carousel-item">
        <img src="images/Oneplus.jpeg" width="800px" height="400px">
        </div>
        <div class="carousel-item">
        <img src="images/Rog.jpg" width="800px" height="400px">
        </div>
        </div>

        <a class="carousel-control-prev" href="#ad" data-slide="prev">
        <span class="carousel-control-prev-icon"></span>
        </a>
        <a class="carousel-control-next" href="#ad" data-slide="next">
        <span class="carousel-control-next-icon"></span>
        </a>

        </div>
</div>
<div class="container">
    <h3 class="text-white text-center"> Exclusive Offers Safe-Delivery Buy from the Best Place</h3><br>
  <div class="card-deck">
    <div class="card bg-light">
      <img class="card-img-top" src="images/card1.jpg" >
      <div class="card-body text-center">
        <h4 class="card-title"> Redmi Note 8 Pro</h4>
        <p class="card-text"> Price : 16,999 <br> Available in 3 variants </p>
          <a href="Redmi-note8pro.html" class="btn btn-primary">Buy now </a>
      </div>
    </div>
    <div class="card bg-light">
      <img class="card-img-top" src="images/card2.jpg" >
      <div class="card-body text-center">
        <h4 class="card-title"> Poco F1</h4>
        <p class="card-text"> Price : 14,999 <br> Available in 2 variants </p>
          <a href="POCO F1.html" class="btn btn-primary">Buy now </a>
      </div>
    </div>
    <div class="card bg-light">
      <img class="card-img-top" src="images/card3.jpg" >
      <div class="card-body text-center">
        <h4 class="card-title"> Samsung M30S</h4>
        <p class="card-text"> Price : 15,999 <br> Available in 3 variants <br> <em>Free-delivery</em> </p>
          <a href="#" class="btn btn-primary">Buy now </a>
      </div>
    </div><div class="card bg-light">
      <img class="card-img-top" src="images/card4.jpg" height="150px" width="50px" >
      <div class="card-body text-center">
        <h4 class="card-title"> Oneplus 7T</h4>
        <p class="card-text"> Price : 34,999 <br> Available in 3 variants </p>
          <a href="#" class="btn btn-primary">Buy now </a>
      </div>
    </div>
  </div><br>
  <div class="card-deck">
    <div class="card bg-light">
      <img class="card-img-top" src="images/card5.png" >
      <div class="card-body text-center">
        <h4 class="card-title">Realme X2 Pro</h4>
        <p class="card-text"> Price : 29,999 <br> Available in 3 variants </p>
          <a href="#" class="btn btn-primary">Buy now </a>
      </div>
    </div>
    <div class="card bg-light">
      <img class="card-img-top" src="images/card6.jpeg" >
      <div class="card-body text-center">
        <h4 class="card-title"> Asus Zenphone 5Z</h4>
        <p class="card-text"> Price : 16,999 <br> Available in 3 variants <br> <em>Free-delivery</em> </p>
          <a href="#" class="btn btn-primary">Buy now </a>
      </div>
    </div>
    <div class="card bg-light">
      <img class="card-img-top" src="images/card7.png" >
      <div class="card-body text-center">
        <h4 class="card-title"> Vivo Z1 Pro</h4>
        <p class="card-text"> Price : 13,949 <br> Available in 2 variants<br> <em>Free-delivery</em>  </p>
          <a href="#" class="btn btn-primary">Buy now </a>
      </div>
    </div><div class="card bg-light">
      <img class="card-img-top" src="images/card8.jpg" >
      <div class="card-body text-center">
        <h4 class="card-title"> Oppo K3</h4>
        <p class="card-text"> Price : 15,990 <br> Available in 2 variants <br> <em>Free-delivery</em> </p>
          <a href="#" class="btn btn-primary">Buy now </a>
      </div>
    </div>
  </div>
</div><br><br>
<div class="jumbotron bg-dark text-center text-white" >

  <h1>   <img src="images/covid.png" height="150px" width="350px">&nbsp;&nbsp;&nbsp;&nbsp;Stay Home Stay Safe </h1>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <a href="https://www.mohfw.gov.in/" class="card-link"> Get Latest Information on COVID-19</a>
</div>
<div class="container">
  <div class="card-deck">
    <div class="card bg-light">
      <img class="card-img-top" src="images/card9.jpg" >
      <div class="card-body text-center">
        <h4 class="card-title"> Boat Rockerz 255</h4>
        <p class="card-text"> Price : 1,180 <br> Warranty : 2-years<br><em> Free delivery</em> </p>
          <a href="#" class="btn btn-primary">Buy now </a>
      </div>
    </div>
    <div class="card bg-light">
      <img class="card-img-top" src="images/card10.jpg" >
      <div class="card-body text-center">
        <h4 class="card-title"> Skull candy Crusher-wired</h4>
        <p class="card-text"> Price : 9,999 <br><em> Free delivery</em>  </p>
          <a href="Redmi-note8pro.html" class="btn btn-primary">Buy now </a>
      </div>
    </div>
    <div class="card bg-light">
      <img class="card-img-top" src="images/card11.jpg" >
      <div class="card-body text-center">
        <h4 class="card-title">Skullcandy Indy </h4>
        <p class="card-text"> Price : 6,990 <br> Warranty:1-year<br><em>Free Delivery</em>  </p>
          <a href="#" class="btn btn-primary">Buy now </a>
      </div>
    </div><div class="card bg-light">
      <img class="card-img-top" src="images/card12.jpeg" >
      <div class="card-body text-center">
        <h4 class="card-title">Mi-20,000Mah Power bank</h4>
        <p class="card-text"> Price : 1,499 <br> <em>Free Delivery</em> </p>
          <a href="#" class="btn btn-primary">Buy now </a>
      </div>
    </div>
  </div></div><br>
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
   <footer class="text-white bg-dark"><br>
     <h5 class="text-center"> &copy; copyrights 2020</h5><br>
     <h6 class="text-center">Open source project powered by &nbsp;&nbsp;<img src="images/html-5.png">&nbsp;&nbsp;<img src="images/css.png">
     &nbsp;&nbsp;<img src="images/java.png">&nbsp;&nbsp;<img src="images/bootstrap.png"></h6><br>
     <h5 class="text-center">Contact info </h5>
     <h6 class="text-center">&nbsp;&nbsp;<img src="images/mail.png">&nbsp;iamnithishguhan@gmail.com </h6>
     <h6 class="text-center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;sabaribalag3@gmail.com </h6>
     <h6 class="text-center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;srinath652001@gmail.com </h6><br><br>
   </footer>
  </body>
</html>