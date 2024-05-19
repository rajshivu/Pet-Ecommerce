<%-- 
    Document   : banner
    Created on : 10 Oct, 2022, 11:47:24 AM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.css">
        <link href="css/bootstrap.min.css">
        <title>JSP Page</title>
    </head>
    <style>
        body{
            margin:0;
            background: radial-gradient(#fff,#ffd2d2);
        }
        .header1{
            /*padding:50px;*/
            margin-top: 30px;
        }
        .ldiv{
            float: left;
            width: 38%;
            padding: 6px;
            color: #11119d;
            font-weight: bold;
            font-size: 2.2rem;
            margin-top: 36px
            /*border-right: 1px solid black;*/
        }
        .rdiv{
            float: left;
            padding: 10px;
        }
        .l1div{
            text-align: center;
            color: #c12a2a;
            padding: 40px;
        }
        .image{
            text-align: center;
            margin-left: 5px;
        }
        .image img{
            border-radius: 50%;
        }
    </style>
    <body>
        <div class="header1">
            <div class="ldiv col-md-12">
                <div style="text-align: center;">Java aptitude interview questions for fresher's to get job </div>
                <div style="text-align: center;color:#b14322;margin-top: 20px">Practical demonstration</div>
                <div class="l1div">Session - 42</div>
                <div class="image" >
                    <img src="image/java.png" width="125px" height="100px">
                </div>
            </div>
            <div class="rdiv">
                <div class="image1">
                    <img src="image/code.png" width="350px" height="400px">
                </div>
            </div>
        </div>
    </body>
</html>
