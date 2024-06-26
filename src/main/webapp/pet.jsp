<%-- 
    Document   : prt
    Created on : Sep 12, 2020, 9:26:00 PM
    Author     : BSIL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
     <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-T8Gy5hrqNKT+hzMclPo118YTQO6cYprQmhrYwIiQ/3axmI1hQomh7Ud2hPOy8SP1" crossorigin="anonymous">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="/your-path-to-fontawesome/css/all.css" rel="stylesheet">
    <style>
        body,h1,h2,h3,h4,h5,h6 {font-family: "Lato", sans-serif}
        .w3-bar,h1,button {font-family: "Montserrat", sans-serif}
        .fa-anchor,.fa-coffee {font-size:200px}
        *{
            margin:0;
            padding:0;
            box-sizing: border-box;
        }
        body{
            font-family: 'Poppins', sans-serif;
        }
        .navbar{
            display: flex;
            align-items: center;
            padding: 20px;

        }
        nav{
            flex: 1;
            text-align: right;

        }
        nav ul{
            display: inline-block;
            list-style-type: none;
        }
        nav ul li{
            display: inline-block;
            margin-right: 20px;
        }
        nav ul li a{
            text-decoration: none;
            color: #555;
        }
        nav ul li p{
            color: #555;
        }
        .container{
            max-width: 1300px;
            margin:auto;
            padding-left: 25px;
            padding-right: 25px;
        }
        .row{
            display: flex;
            align-items:center;
            flex-wrap: wrap;
            justify-content:space-around;
        }
        .col-2{
            flex-basis: 50%;
            min-width: 300px;
        }
        .col-2 img{
            max-width: 100%;
            padding: 50px 0;

        }
        .col-2 h1{
            font-size: 40px;
            line-height: 60px;
            margin: 25px 0;
        }
        .btn{
            display: inline-block;
            background: #ff523b;
            color: #fff;
            padding: 8px 30px;
            margin: 30px 0;
            border-radius: 30px;
            text-decoration: none;
        }
        .header{
            background:#fff;
        }
        .header .row{
            margin-top: 60px;
        }

        .footer{
            background: #000;
            color: #8a8a8a;
            font-size: 14px;
            padding: 60px 0 20px; 
        }
        .footer p{
            color: #8a8a8a;
        }
        .footer h3{
            color: #fff;
            margin-bottom: 20px;
        }
        .footer-col-1,.footer-col-2,.footer-col-3,.footer-col-4{
            min-width: 250px;
            margin-bottom: 20px;
        }
        .footer-col-1{
            flex-basis: 30%;

        }
        .footer-col-2{
            flex: 1;
            text-align: center;
        }
        .footer-col-2{
            width: 160px;
            margin-bottom: 30px;
        }
        .footer-col-3,.footer-col-4{
            flex-basis: 12%;
            text-align: center;
        }
        ul{
            list-style-type: none;
        }
        .app-logo{
            margin-top: 20px;
        }
        .app-logo img{
            width: 140px;
        }
        .footer hr{
            border: none;
            background: #b5b5b5;
            height: 1px;
            margin: 20px 0;
        }
        .copyright{
            text-align: center;
        }



        body {
            font-family: "Open Sans", sans-serif;
        }
        h2 {
            color: #000;
            font-size: 26px;
            font-weight: 300;
            text-align: center;
            text-transform: uppercase;
            position: relative;
            margin: 30px 0 80px;
        }
        h2 b {
            color: #ffc000;
        }
        h2::after {
            content: "";
            width: 100px;
            position: absolute;
            margin: 0 auto;
            height: 4px;
            background: rgba(0, 0, 0, 0.2);
            left: 0;
            right: 0;
            bottom: -20px;
        }
        *{
            margin:0;
            padding:0;
            box-sizing: border-box;
        }
        body{
            font-family: 'Poppins', sans-serif;
        }
        .navbar{
            display: flex;
            align-items: center;
            padding: 20px;

        }
        nav{
            flex: 1;
            text-align: right;

        }
        nav ul{
            display: inline-block;
            list-style-type: none;
        }
        nav ul li{
            display: inline-block;
            margin-right: 20px;
        }
        nav ul li a{
            text-decoration: none;
            color: #555;
        }
        nav ul li p{
            color: #555;
        }

        .btn{
            display: inline-block;
            background: #ff523b;
            color: #fff;
            padding: 8px 30px;
            margin: 30px 0;
            border-radius: 30px;
            text-decoration: none;
        }
        .header{
            background-color: whitesmoke;
        }
        .header .row{
            margin-top: 60px;
        }


        * {
            box-sizing: border-box;
        }
        h1{
            color: #35475e;
            font-weight: bold;
        }
        h5{
            color: #9babbf;
            font-weight: bold;
        }


        .column1 h1{
            color: #35475e;
            font-weight: bold;
        }
        .column1 h5{
            color: #9babbf;
            font-weight: bold;
        }
        /* Create three equal columns that floats next to each other */
        .column {
            float: left;
            width: 33.33%;
            padding: 10px;
            height: 300px; /* Should be removed. Only for demonstration */
        }
        .column1{

            width: 30%;
            padding: 10px;
            height: 300px; /* Should be removed. Only for demonstration */
        }

        /* Clear floats after the columns */
        .row:after {
            color: #9babbf;
            content: "";
            display: table;
            clear: both;
        }
        .wrapp .column1{
            width: 60%;
        }
    </style>
    <body>

        <!-- Navbar -->


        <!-- Header -->
        <div class="header">

            <div class="container">
                <div class="navbar">
                    <div class="logo">
                        <img src="image/pethublogo.png" width="125px">
                    </div>
                     <% if (session.getAttribute("id") != null) {%>  
                        <%= session.getAttribute("name")%>

                        <%}%>
                    <nav>
                        <ul>
                            <li><a href="userhome.jsp">Home</a> </li>
                             <li><a href="contact.jsp">Contact</a></li>

                            <% if (session.getAttribute("name") != null) {%>  

                            <li><a href="myorder.jsp">My Orders</a></li>
                            <li><a href="login.html">Logout</a></li>
                            <li><a href="cart.jsp"><img src="image/cart.png" width="30px" height="30px"></a></li>

                            <%} else {%>
                            <li><a href="login.html">Login</a></li>
                            <li><a href="register.html">Register</a></li>
                                <%}%> 
                        </ul>
                    </nav>
                </div>
                <div class="row">
                    <div class="col-2">
                        <h1>SPECIAL CARE INSTRUCTIONS</h1>
                        <h4><b><i>FEED DAILY!</i></b></h4>
                        <h4><b><i>YEARLY CHECKUP!</i></b></h4>
                        <h4><b><i>LOVE FOREVER!</i></b></h4>
                    </div>
                    <div class="col-2">
                        <img src="image/mainimg2.png">
                    </div>
                </div>
            </div>
        </div> 

        <!-- First Grid -->
        <div class="w3-row-padding w3-padding-64 w3-container">
            <div class="w3-content">
                <div class="w3-twothird">
                    <h1>Why A Checkup?</h1>
                    <h5 class="w3-padding-32">A yearly veterinary checkup is the best way to keep your pet as healthy as possible –</h5>

                    <p class="w3-text-grey">because it’s much easier to prevent disease than to treat it. So, whether your dog frolics at the park with all the neighborhood pups, or the closest your cat gets to the great outdoors is a sunny windowsill, every pet needs to see their veterinarian – at least once a year!

                        Remember: Pets age faster than we do, so missing even one yearly checkup can be like us not visiting a doctor for over five years!

                </p>
                </div>

                <div class="w3-third w3-center">
                    <img src="image/health.jpeg" width="400px" height="300px" style="padding-top:60px;">
                </div>
            </div>
        </div>

        <!-- Second Grid -->


        <div class="row">
            <div class="column1" style="background-color:#aaa;">
                <h2>Bye-bye blues<i class="icon-bolt"></i> </h2>
                <p>
                    Spending time with a pet can help you shake (or even avoid) depression. Unconditional love keeps people positive, and even looking at your pet increases the amount of Oxytocin, a ‘feel good’ chemical, in your brain.</p>
            </div>
            <div class="column1" style="background-color: whitesmoke;">
                <h2>Health Heart  <i class="fa fa-heart" aria-hidden="true"></i></h2>
                <p>Just petting your dog or cat can lower your heart rate and blood pressure! And some studies have shown that pet owners have slightly lower cholesterol and are more likely to survive a heart attack.</p>
            </div>
            <div class="column1" style="background-color:#ccc;">
                <h2>Walk And Block  <i class="fa fa-blind" aria-hidden="true"></i></h2>
                <p>People with dogs tend to get more exercise, and meet more neighbors, than folks without a furry friend. Exercise and social interaction are both great ways to reduce stress and lower the risk of cardiovascular disease.</p>
            </div>
        </div>
        <br>
        <div class="w3-row-padding w3-padding-64 w3-container">
            <div class="w3-content">
                <div class="w3-twothird">
                    <h5 class="w3-padding-32">Survival of the fittest</h5>

                    <p class="w3-text-grey">
                        You notice every little thing your pet does – but did you know that dogs and cats have evolved to hide illness? Showing weakness makes an animal – and their pack – vulnerable, so our best friends do everything they can to keep a stiff upper lip. Your veterinarian can find problems your pet hides – another reason why annual checkups are so important!
                    </p>
                </div>

                <div class="w3-third w3-center">
                    <img src="image/sfittest.jpeg" width="400px" height="300px" style="padding-top:60px;">
                </div>
            </div>
        </div>
        <div class="wrapp">
            <div class="w3-row-padding w3-light-grey w3-padding-64 w3-container">
                <div class="w3-content">
                    <div class="w3-third w3-center">
                        <img src="image/kitty.png" width="400px" height="300px" style="padding-top:60px; ">
                    </div>

                    <div class="w3-twothird">
                        <h4>Remember: what seems like a little treat to you is like a whole meal to your dog!

                        </h4>
                        <h1>Kitty calories <i class="fa icon-food"></i> </h1>
                        <h5 class="w3-padding-32">Survival of the fittest</h5>

                        <p class="w3-text-grey">
                            We’re not saying to never, ever treat your baby, but talk to your veterinarian about the best way to reward your little hunter! Take a look at how common treats can pack on the pounds.
                        </p>


                    </div>
                </div>

            </div>
            <div class="row">
                <div class="column" style="background-color:white;">
                    <h2>Cheez <i class="fas fa-cheese-swiss"></i></h2>
                    <p>
                        Just two slices can add around 125% to a small cat’s daily caloric intake. For larger cats, it’s about a 60% increase.
                    </p> </div>
                <div class="column" style="background-color: whitesmoke;">
                    <h2>Tuna</h2>
                    <p>A single can of tuna might add between 15% and 35% to your cat’s daily caloric intake.</p> </div>
                <div class="column" style="background-color:white;">
                    <h2>Whole Milk</h2>
                    <p>
                        Just ½ a cup can add almost 50% to a small cat’s daily caloric intake, and almost 25% to a larger cat’s.
                    </p>  </div>
            </div>
        </div>

        <!-- Footer -->
        <div class="footer">
            <div class="container">
                <div class="row">
                    <div class="footer-col-1">
                        <h3>Download Our App</h3>
                        <p>Download App For Android and ios mobile phone.</p>
                        <div class="app-logo">
                            <img src="image/gplay.jpeg">
                            <img src="image/astore.jpeg">
                        </div>
                    </div>
                    <div class="footer-col-2">
                        <img src="image/pethubwhite.png" width="100px">
                        <p>Download App For Android and ios mobile phone jhasgdjhsad amsjdfakjfsd asdsag.</p>
                    </div>
                    <div class="footer-col-3">
                        <h3>Useful Links</h3>
                        <ul>
                            <li>Coupons</li>
                            <li>Blog Post</li>
                            <li>Return Policy</li>
                            <li>Join Affiliate</li>
                        </ul>
                    </div>
                    <div class="footer-col-4">
                        <h3>Follow Us</h3>
                        <ul>
                            <li><i class="fa fa-facebook-square"></i>Facebook</li>
                            <li><i class="fa fa-instagram" ></i>Instagramt</li>
                            <li><i class="fa fa-twitter" ></i>Twitter</li>
                            <li><i class="fa fa-youtube" ></i>YouTube</li>
                        </ul>
                    </div>
                </div>
                <hr>
                <p class="copyright">&copy; Copyright 2020-PetHUB</p>
            </div>
        </div>

        <script>
            // Used to toggle the menu on small screens when clicking on the menu button
            function myFunction() {
                var x = document.getElementById("navDemo");
                if (x.className.indexOf("w3-show") == -1) {
                    x.className += " w3-show";
                } else {
                    x.className = x.className.replace(" w3-show", "");
                }
            }
        </script>

    </body>
</html>
