
<%@page import="model.Dproduct"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="model.Registration1"%>
<%@page import="java.util.Iterator"%>
<%-- <%@page import="org.apache.catalina.User"%> --%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>PetHUB | Online Shopping website</title>
        <link rel="stylesheet" href="style.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
        <style>
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

            .header{
                background: radial-gradient(#fff,#ffd2d2);
            }
            .header .row{
                margin-top: 60px;
            }
            .categories{
                margin: 60px 0;
            }
            .col-3{
                flex-basis: 30%;
                min-width: 250px;
                margin-bottom: 30px;
            }
            .col-3 img{
                width: 100%;
            }
            .small-container{
                max-width: 1300px;
                margin: auto;
                padding-left: 25px;
                padding-right: 25px;

            }
            .col-4{
                flex-basis: 25%;
                padding: 10px;
                min-width: 200px;
                margin-bottom: 50px;
                transition: transform 0.5s;
            }
            .col-4 img{
                width: 100%;
            }
            .title{
                text-align: center;
                margin: 0 auto 80px;
                position: relative;
                line-height: 60px;
                color: #555;
            }
            .title::after{
                content: '';
                background: orangered;
                width: 80px;
                height: 5px;
                border-radius: 5px;
                position: absolute;
                bottom: 0;
                left: 50%;
                transform: translateX(-50%);
            }
            h4{
                color: #555;
                font-weight: normal;
            }    
            .col-4 p{
                font-size: 14px;
                color: #555;
            }

            .col-4:hover{
                transform: translateY(-5px);
            }
            .small-container .row .col-4 input[type="submit"]{
                /*                border: 2px;*/
                border-radius:  5px 5px 3px;
                padding: 2px;
                background-color: orangered;
                border-color: black;
                color: white;
                float: left;
            }
            .small-container .row .col-4{
                float:left;
            }
            /*offer*/
            .offer{
                background: radial-gradient(#fff,#ffd2d2);
                margin-top: 80px;
                padding: 30px 0;
            }
            .col-2 .offer-img{
                padding: 50px;
            }
            small{
                color: #555;
            }
            /*testimonial*/
            .testimonial{
                padding-top: 100px;
            }
            .testimonial .col-3{
                text-align: center;
                padding: 40px 20px;
                box-shadow: 0 0 20px 0px rgba(0,0,0,0.1);
                cursor: pointer;
                transition: transform 0.5s;
            }
            .testimonial .col-3 img{
                width: 80px;
                height: 60px;
                margin-top: 20px;
                border-radius: 50%;
            }
            .testimonial .col-3:hover{
                transform: translateY(-10px);
            }
            .fa.fa-quote-left{
                font-size: 34px;
                color: #ff523b;
            }
            .col-3 p{
                font-size: 12px;
                margin: 12px 0;
                color: #777;
            }
            .testimonial .col-3 h3{
                font-weight: 600;
                color: #555;
                font-size: 16px;
            }
            /*brands*/
            .brands{
                margin-top: 100px auto;
            }
            .col-5{
                widows: 160px;
            }
            .col-5 img{
                widows: 100%;
                cursor: pointer;
                filter: grayscale(100%);
            }
            .col-5 img:hover{
                filter: grayscale(0);
            }
            /*footer*/

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



        </style>

    </head>
    <body>



        <div class="header">

            <div class="container">
                <div class="navbar">
                    <div class="logo">
                        <img src="images/pethublogo.png" width="125px">
                    </div>
                    <nav>
                        <ul>
                            <li><a href="#">Home</a> </li>
                            <li><a href="#">Dogs</a> </li>    
                            <li><a href="#">Cats</a> </li>
                            <li><a href="birdcol.jsp">Birds</a> </li>
                            <li><a href="register.html">Account</a> </li>
                        </ul>
                    </nav>
                </div>

            </div>
        </div> 


        <!--        featured products-->
        <%
            Registration1 s1 = new Registration1(session);
            ArrayList<Dproduct> ar = s1.getd_productinfo();
            Iterator<Dproduct> itr = ar.iterator();
            while (itr.hasNext()) {
                Dproduct s = itr.next();%> 


        <div class="container">
            <div class="row">
                <form action="addtocart" method="POST">
                    <div class="col-md-5">
                        <img src="image/<%=s.getp_image()%>" name="img" class="d-block w-100">
                    </div>
                    <div class="col-md-7">
                        <!--<p class="newdish text-center"></p>-->
                        <h2 name="dname"><%=s.getp_name()%></h2>

                        <!-- <img src="" class="stars">-->
                        <p class="price" name="cost"> <%=s.getp_cost()%></p>
                        <p name="details"><%=s.getp_details()%></p>
                        <input type="hidden" name="id" value="<%=s.getp_id()%>">
                        <input type="submit" name="submit" class="btn btn-default cart" value="add to cart">

                    </div>
                </form>
            </div>

        </div>
        <%}%>

        <!--footer-->
        <div class="footer">
            <div class="container">
                <div class="row">
                    <div class="footer-col-1">
                        <h3>Download Our App</h3>
                        <p>Download App For Android and ios mobile phone.</p>
                        <div class="app-logo">
                            <img src="image/gplay.png">
                            <img src="image/astore.png">
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



    </body>
</html>
