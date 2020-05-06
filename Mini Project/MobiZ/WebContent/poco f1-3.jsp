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

        body {
            background-color: rgba(50, 149, 168);
        }

        .link {
            color: inherit;
        }

            .link:hover {
                text-decoration: none;
                color: inherit;
            }

        .main {
            left: 20px;
        }

        .spec {
            position: absolute;
            top: 0px;
            right: 0px;
            width: 720px;
            left: 400px;
        }

        .product {
            position: relative;
        }

        .carousel-item {
            text-align: center;
        }

        .carousel {
            height: 400px;
            width: 400px;
            left: 50px;
            align-items: center;
        }

        .f {
            font-size: 20px;
        }

        .pane {
            font-size: 12px;
        }

        footer {
            bottom: 0px;
            left: 0px;
            position: relative;
            width: 100%;
            text-align: center;
        }
    </style>
    <link rel="icon" type="image" href="favicon.png">
    <title>MobiZ-Poco F1 256GB</title>
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
            <form class="form-inline" action="Search">
                <input class="form-control mr-sm-2 " name="search" type="text" placeholder="Search" size="70" name="search">
                <button class="btn btn-info">Search</button>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </form>
            <a class="brand" href="cart.jsp">
                <img src="images/shopping-cart.jpg" width="50px">&nbsp;
            </a>   &nbsp;&nbsp;&nbsp;
        <%
	 ServletContext ct=getServletContext();
     String n=(String)ct.getAttribute("user");
     if(n==null || n.isEmpty()) { %>
              <form class="form-inline" action="Login.html">
            <button class="btn btn-info">Login</button>
            </form>
    <% } else{ 
	   out.print(n);%>
     &nbsp;&nbsp;&nbsp;<form class="form-inline" action="main.html">
     <button class="btn btn-info">Logout</button>
     </form>
     <%}%>
        
</nav>
</div>
<div class="container-fluid bg-info text-white product">

    <div id="ad" class="carousel slide car" data-ride="carousel">

        <ul class="carousel-indicators">
            <li data-target="#ad" data-slide-to="0" class="active"></li>
            <li data-target="#ad" data-slide-to="1"></li>
            <li data-target="#ad" data-slide-to="2"></li>
        </ul>

        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="images/poco/poco f1.jpg" height="400px">
            </div>
            <div class="carousel-item">
                <img src="images/poco/poco f1-1.jpg" height="400px">
            </div>
            <div class="carousel-item">
                <img src="images/poco/poco f1-2.jpg" width="350px" height="400px">
            </div>
        </div>

        <a class="carousel-control-prev" href="#ad" data-slide="prev">
            <span class="carousel-control-prev-icon"></span>
        </a>
        <a class="carousel-control-next" href="#ad" data-slide="next">
            <span class="carousel-control-next-icon"></span>
        </a>

    </div>
    <div class="container bg-light text-dark spec">
         <% ServletContext at=getServletContext();
               at.setAttribute("name","Poco f1 256GB");
               at.setAttribute("price","18990");
               at.setAttribute("cmp","poco");
               at.setAttribute("image","images/poco/poco f1.jpg");
               at.setAttribute("link","poco f1-3.jsp");%>
                <h3>POCO F1 256GB</h3>
        <p>by <a href="https://www.poco.in/in/"> POCO</a> </p> &nbsp;&nbsp;&nbsp;&nbsp; Price:18990 </p> 
        <a href="Cart" class="btn btn-primary">Buy now </a>
        <% String i=(String)request.getAttribute("flag"); 
            if(i=="1") {%><em style="color:red">Sign in to add to cart</em> <%} %>
        <hr><b><p style="font-size:15px;"> Specifications</p></b>
        <p class="pane"> Color: &nbsp;&nbsp; Rosso red</p>
        <p class="pane"> RAM:  &nbsp;&nbsp; 6GB</p>
        <p class="pane"> Internal Memory:  &nbsp;&nbsp; 128GB</p>
        <p class="pane"> Camera: &nbsp;12MP+5MP </p>
        <p class="pane">CPU: &nbsp;&nbsp; 	2.8GHz octa-core</p>
        <p class="pane">GPU:  &nbsp;&nbsp; Adreno 616</p>
        <p class="pane">OS: &nbsp;&nbsp;  Andriod Oreo v8.1</p>
        <p class="pane">Fingerprint: &nbsp;&nbsp; rear </p>
    </div>
</div>
<br>
<hr>
<div class="container bg-light" style="border-radius:5px;padding:13px;">
    <h4>Perfect choice for smart-buyers </h4>
    <ul>
        <li>12MP+5MP dual camera | 20MP front facing camera</li>
        <li>15.69 centimeters (6.18-inch) IPS (in-cell) multi-touch capacitive touchscreen with 2246 x 1080 pixels resolution, 403 ppi pixel density</li>
        <li>Memory, Storage & SIM: 8GB RAM, 256GB internal memory expandable up to 128GB | Dual SIM (nano+nano) dual-standby (4G+4G) </li>
        <li>Andriod Oreo v8.1 operating system with 2.8GHz Qualcomm Snapdragon 845 octa core processor, 8xKyro cores/10 nm architecture</li>
        <li>4000mAH lithium-ion battery with quick charge 3.0 to keep you going all-day long</li>
    </ul>
</div><br><br><br><br><br><br><br>
<div class="container">
    <br>
    <h3 class="text-white" style="text-decoration:underline">Other Suggestions based on the above</h3><br>

    <div class="card-deck">
        <div class="card bg-light">
            <img class="card-img-top" src="images/realme/realme c3.jpg">
            <div class="card-body text-center">
                <h4 class="card-title">Realme c3</h4>
                <p class="card-text"> Price : 7999<br> Available in 3 variants </p>
                <a href="realme c3.jsp" class="btn btn-primary">Buy now </a>
            </div>
        </div>
        <div class="card bg-light">
            <img class="card-img-top" src="images/realme/realme 5 pro.jpg">
            <div class="card-body text-center">
                <h4 class="card-title">Realme 5 pro</h4>
                <p class="card-text"> Price :13999 <br><br> Available in 3 variants <br> <em>Free-delivery</em> </p>
                <a href="realme 5 pro.jsp" class="btn btn-primary">Buy now </a>
            </div>
        </div>
        <div class="card bg-light">
            <img class="card-img-top" src="images/poco/poco x2.jpg">
            <div class="card-body text-center">
                <h4 class="card-title">Poco X2 </h4>
                <p class="card-text"> Price : 16999 <br><br> Available in 2 variants<br> <em>Free-delivery</em>  </p>
                <a href="poco x2.jsp" class="btn btn-primary">Buy now </a>
            </div>
        </div><div class="card bg-light">
        <img class="card-img-top" src="images/poco/poco f1.jpg">
            <div class="card-body text-center">
                <h4 class="card-title"> Poco F1 Armoured Edition</h4>
                <p class="card-text"> Price :16999 <br> Available in 2 variants <br> <em>Free-delivery</em> </p>
                <a href="poco f1-1.jsp" class="btn btn-primary">Buy now </a>
            </div>
        </div>
    </div>
</div>
<br>
<br>
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