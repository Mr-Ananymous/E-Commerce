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
    <title>MobiZ-one plus 8 pro</title>
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
                <input class="form-control mr-sm-2 " type="text" placeholder="Search" size="70" name="search">
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
                <img src="images/oneplus/oneplus 8 pro.jpg" height="400px" >
            </div>
            <div class="carousel-item">
                <img src="images/oneplus/oneplus 8 pro-1.jpg"  height="400px">
            </div>
            <div class="carousel-item">
                <img src="images/oneplus/oneplus 8 pro-2.jpg"  height="400px">
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
               at.setAttribute("name","Oneplus 8 pro ");
               at.setAttribute("price","54999");
               at.setAttribute("cmp","Oneplus");
               at.setAttribute("image","images/oneplus/oneplus 8 pro.jpg");
               at.setAttribute("link","oneplus 8 pro.jsp");%>
        <h3>Oneplus 8 PRO </h3>
        <p>by <a href="https://www.oneplus.in/">ONEPLUS</a> &nbsp;&nbsp;&nbsp;&nbsp; Price:54999 </p> 
        <a href="Cart" class="btn btn-primary">Buy now </a>
        <% String i=(String)request.getAttribute("flag"); 
            if(i=="1") {%><em style="color:red">Sign in to add to cart</em> <%} %>
        <hr><b><p style="font-size:15px;"> Specifications</p></b>
        <p class="pane"> Color: &nbsp;&nbsp; Blue</p>
        <p class="pane"> RAM:  &nbsp;&nbsp;  8GB</p>
        <p class="pane"> Internal Memory:  &nbsp;&nbsp; 256GB</p>
        <p class="pane"> Camera: &nbsp;Rear Camera - 48MP+ 8MP | Front Camera - 16 MP</p>
        <p class="pane">CPU: &nbsp;&nbsp; Octa-core (1x2.84 GHz Kryo 585 & 3x2.42 GHz Kryo 585 & 4x1.8 GHz Kryo 585)</p>
        <p class="pane">GPU:  &nbsp;&nbsp;Adreno 650</p>
        <p class="pane">OS: &nbsp;&nbsp;Android 10; OxygenOS 10.0</p>
        <p class="pane">Fingerprint: &nbsp;&nbsp;under display</p>
    </div>
</div>
<br><br>
<hr>
<div class="container bg-light" style="border-radius:5px;padding:13px;">
    <h4>Best Selling 2020</h4>
    <ul>

        <li>Rear Camera - 48MP + 8MP| Front Camera - 16 MP </li>
        <li>Non-removable Li-Po 4510 mAh battery</li>
        <li>Android Oxygen operating system with 2.84GHz Snapdragon 855 octa core processor</li>


    </ul>
</div>
<div class="container">
    <br>
    <h3 class="text-white" style="text-decoration:underline">Other Suggesions based on the above</h3><br>

    <div class="card-deck">
        <div class="card bg-light">
            <img class="card-img-top" src="images/oneplus/oneplus 7T pro.jpg">
            <div class="card-body text-center">
                <h4 class="card-title">oneplus 7T pro</h4>
                <p class="card-text"> Price :52,999 <br> Available in 3 variants </p>
                <a href="oneplus 7t pro.jsp" class="btn btn-primary">Buy now </a>
            </div>
        </div>
        <div class="card bg-light">
            <img class="card-img-top" src="images/oneplus/oneplus 7T proa.jpg">
            <div class="card-body text-center">
                <h4 class="card-title">oneplus 7T pro Mclaren Edition</h4>
                <p class="card-text"> Price : 58,999 <br><br> Available in 3 variants <br> <em>Free-delivery</em> </p>
                <a href="oneplus 7t proa.jsp" class="btn btn-primary">Buy now </a>
            </div>
        </div>
        <div class="card bg-light">
            <img class="card-img-top" src="images/oneplus/oneplus 7 pro.jpg">
            <div class="card-body text-center">
                <h4 class="card-title"> oneplus 7 pro</h4>
                <p class="card-text"> Price : 52,999 <br><br> Available in 2 variants<br> <em>Free-delivery</em>  </p>
                <a href="oneplus 7 pro.jsp" class="btn btn-primary">Buy now </a>
            </div>
        </div><div class="card bg-light">
            <img class="card-img-top" src="images/oneplus/oneplus 8.jpg">
            <div class="card-body text-center">
                <h4 class="card-title"> oneplus 8</h4>
                <p class="card-text"> Price : 41999 <br> Available in 2 variants <br> <em>Free-delivery</em> </p>
                <a href="oneplus 8.jsp" class="btn btn-primary">Buy now </a>
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