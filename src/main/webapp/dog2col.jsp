<%-- 
    Document   : dog2col
    Created on : Aug 30, 2020, 6:12:47 PM
    Author     : BSIL
--%>

<%@page import="model.Dproduct"%>
<%@page import="model.Registration1"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">

        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" ></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" ></script>

        <style>
            .container1{
                margin-top: 100px;
                width: 100%;
                padding-left: 100px;
            }

            .col-md-7{
                color:#555;

            }
            .stars{
                height:25px;  
            }
            .price{
                color:#FE980F;
                font-size:26px;
                font-weight:bold;
                padding-top: 20px;
            }
            input{
                border: 1px solid #ccc;
                font-weight:bold;
                height:33px;
                text-align: center;
                width:30px;
            }
            .cart{
                background: #FE980F;
                color:#FFFFFF;
                font-size: 15px;
                margin-left:20px;
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
            .row a{
                display: inline-block;
                background: #ff523b;
                color: #fff;
                padding: 8px 30px;
                margin: 30px 0;
                border-radius: 30px;
                text-decoration: none;
            }.but{
                display: inline-block;
                background: #ff523b;
                color: #fff;
                padding: 8px 30px;
                margin: 30px 0;
                border-radius: 30px;
                text-decoration: none;
            }
            .header{
                /*   background: radial-gradient(#fff,#ffd2d2);*/
            }
            .header .row{
                margin-top: 60px;
            }
            .categories{
                margin: 40px 0;
            }
            .categories .col-3{
                flex-basis: 30%;
                min-width: 250px;
                margin-bottom: 0px;

                text-align: center;
                padding: 40px 10px;
                /*    box-shadow: 0 0 20px 0px rgba(0,0,0,0.1);*/
                cursor: pointer;
                transition: transform 0.5s;

            }
            .categories .col-3 img{

                width: 150px;
                height: 150px;
                margin-top: 20px;
                border-radius: 50%;
            }
            .categories .col-3:hover{
                transform: translateY(-10px);
            }
            .small-container{
                max-width: 1080px;
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
            }
            .rating .fa{
                color: #ff523b;

            }
            .col-4:hover{
                transform: translateY(-5px);
            }


            .footer{
                background: #000;
                color: #8a8a8a;
                font-size: 14px;
                padding: 60px 0 20px; 
                width: 100%
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
                <%@include file="header.jsp"%>
                <%
                    Registration1 s1 = new Registration1(session);
                    ArrayList<Dproduct> ar = s1.get_productinfo(request.getParameter("animal"));
                    
                    Iterator<Dproduct> itr = ar.iterator();
                    
                    //hasnext--boolean
                    while (itr.hasNext()) 
                    {
                        Dproduct s = itr.next();%> 

                <form action="addtocart" method="POST">
                    <div class="container1">
                        <div class="row">
                            <div class="col-md-5">
                                <img  src="image/<%=s.getp_image()%>"  class="d-block w-100">
                            </div>
                            <div class="col-md-7">
                                <!--<p class="newdish text-center"></p>-->
                                <h2 ><%=s.getp_name()%> </h2>
                                
                                <input type="hidden" name="p_id" value="<%=s.getp_id()%>">
                                
                                <!-- <img src="" class="stars">-->
                                <p class="price" >&#8377 <%=s.getp_cost()%></p>
                                
                                <p><%=s.getp_details()%></p>
                                
                                <% if (session.getAttribute("name") != null) {%>
                                
                                <button type="submit" name="addtocart" class="but"> Add to Cart </button>
                                <%} else {%>
                                <a href="login.jsp" >Add To Cart</a>
                                <%}%>
                            </div>
                        </div>
                    </div>
                </form>
                <%}%>

            </div>
        </div>



        <%@include file="footer.jsp"%>

    </body>      


</html>
