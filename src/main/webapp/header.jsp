<%-- 
    Document   : header
    Created on : Sep 28, 2020, 1:12:07 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="navbar">
            <div class="logo">
                <img src="image/pethub1.png" width="125px">
            </div>
            <% if (session.getAttribute("name") != null) {%>  
            <b>   <%= session.getAttribute("name")%> </b>
            <%}%>
            <nav>
                <ul>
                    <li><a href="userhome.jsp">Home</a> </li>


                    <!--                    <li><a href="dogcol.jsp">Dog</a> </li> 
                                        <li><a href="catcol.jsp">Cat</a> </li> 
                                        <li><a href="birdcol.jsp">Bird</a> </li> -->
                    <% if (session.getAttribute("name") != null) {%>  

                    <li><a href="myorder.jsp">My Orders</a></li>
                    <li><a href="register?logout=logout">Logout</a></li>
                    <li><a href="cart.jsp"><img src="image/cart.png" width="30px" height="30px"></a></li>

                    <%} else {%> 
                    <li><a href="login.jsp">Login</a></li>
                    <li><a href="register.html">Register</a></li>
                        <%}%> 
                </ul>
            </nav>

        </div>
    </body>
</html>
