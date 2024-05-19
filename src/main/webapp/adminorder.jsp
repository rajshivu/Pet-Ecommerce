


<%@page import="model.adminOrder"%>
<%@page import="model.Registration1"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>


<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>PetHUB | Online Shopping website</title>

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
                padding: 2px;

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
                color: #ffffff;
                font-size: 20px;
            }
            nav ul li p{
                color: #555;
            }
            .header{
                background-color: #35475e;
                height: 100px;
            }
            .admin-wrapper{
                height: calc(100% - 100px);
                display: flex;

            }
            .admin-wrapper .left-sidebar{
                flex: 2;
                height: 100%;
                background-color: #5c6c82;
            }
            .admin-wrapper .admin-content{
                flex: 8;
                height: 100%;
                padding: 40px 100px 100px;
                overflow-y: scroll; 

            }
            .admin-wrapper .left-sidebar ul{

                list-style: none;
                margin: 0px;
                padding: 0px;

            }
            .admin-wrapper .left-sidebar ul li a{
                color: whitesmoke;
                text-decoration: none;
                padding: 18px;
                display: block;
                border-bottom: 1px solid darkslategray;
            }
            .admin-wrapper .left-sidebar ul li a:hover{
                background-color: gray;
            }
            .admin-content .page-title{
                text-align: center;
                margin-bottom: 1.5rem;

            }
           .admin-wrapper .admin-content table{
                width: 100%;
                border-collapse: collapse;
                font-size: 1.1rem;

            }
           .admin-wrapper .admin-content th, td{
                padding: 15px;
                text-align: left;
                border-bottom: 1px solid lightgrey;
            }
            .edit{
                color: greenyellow;
                text-decoration: none;
            }
            .delete{
                color: red;
                text-decoration: none;
            }
            .post{
                color: blue;
                text-decoration: none;
            }
            .edit:hover,
            .delete:hover,
            .post:hover{
                text-decoration: underline;
            }
            .btn-group .button{

                color:#35475e;
                padding: 5px 20px;
                border: solid black;
                text-decoration: none;

                font-family: sans-serif;


                transition: 0.6s ease;
            }
            nav a{
                font-size: 25px;
                padding-top:5px;
                color: #ffffff;
            }
            .content .fetch input[type=submit]{
                padding: 2px;
                /*    border-bottom:  2px;*/
                /*    border-color: black;*/
                border-radius: 10px 10px 8px;
                float: right;
                background-color: black;
                color: white;
            }
            .content .fetch input[type=submit]:hover{
                background-color: whitesmoke;
                color: #233245;
            }
        </style>



    </head>
    <body>


        <div class="header">

            <div class="container">
                <div class="navbar">
                    <div class="logo">
                       <img src="image/pethubwhite.png" width="125px">
            </div>
            <nav><center>
                    <a>Admin Dashboard</a></center>
              
            </nav>
        </div>
           
        </div></div>
        <div class="admin-wrapper">
<!--            leftsidebar-->
<div class="left-sidebar">
    <ul>
<!--        <li><a href="adminpostindex.html" >Manage Items</a></li>-->
        <li><a href="adminuserindex.jsp">Manage users</a></li>
            <li><a href="adminadditem.jsp" >Manage Items</a></li>
          <li><a href="adminorder.html">Manage Order Details </a></li>
          <li><a href="DeleteProduct.jsp">Delete Product</a></li>
          <li><a href="adminlog.html">Logout</a></li>
                </ul>
            </div>
            <!--            leftsidebar-->



            <!--admin content-->
            <div class="admin-content">
                <!--   <div class="btn-group">
                  <a href="adminuserindex.html" class="button">Manage User</a>
                
                      
                </div>-->

                <div class="content">

                    <h2 class="page-title">Orders List</h2>
                    <!--<form method="POST" action="fetch" class="fetch">-->
                    <table>
                        <tr>

                            <th>Username</th>
                            <th>Product Id</th>

                            <th>Product Cost</th>
                            <th>Order Address</th>
                            <th>Order city</th>
                            <th>Order State</th>
                            <th>Status</th>
                        </tr>

                        <%
                            Registration1 s1 = new Registration1(session);
                            ArrayList<adminOrder> ar = s1.getorderdata();

//                            ArrayList<User> mydata = (ArrayList) ar;
                            Iterator<adminOrder> itr = ar.iterator();
                            while (itr.hasNext()) {
                                adminOrder s = itr.next();%> 
                        <tr>
                            <td align="center" ><%=s.getusname()%></td> 
                             <td align="center" ><%=s.getc_id()%></td> 
                           
                            <td align="center" ><%=s.getc_cost()%></td> 
                            <td align="center" ><%=s.getorder_address()%></td>
                               <td align="center" ><%=s.getorder_city()%></td>
                            <td align="center" ><%=s.getorder_state()%></td>
                              
                             <td align="center" ><%=s.getstatus()%></td>
                        </tr>
                        <%}%> 

                       


                    </table>
                    <!--<input type="submit" value="Refresh" name="fetch"></form>-->

                </div>
            </div>
            <!--admin contend-->
        </div>

    </body>
</html>