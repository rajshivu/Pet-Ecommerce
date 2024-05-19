<%-- 
    Document   : cart
    Created on : Aug 30, 2020, 6:23:46 PM
    Author     : BSIL
--%>
<%@page import="model.Order"%>
<%@page import="model.Cartsum"%>
<%@page import="model.Cart"%>
<%@page import="java.util.Iterator"%>
<%@page import="model.Registration1"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Dproduct"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Bootstrap CRUD Data Table for Database with Modal Form</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
        <style>
            body {
                color: #566787;
                background: #f5f5f5;
                font-family: 'Varela Round', sans-serif;
                font-size: 17px;
                width: 100%;
            }
            .navbar{
                display: flex;
                align-items: center;
                padding: 10px;
                width: 100%;
            }
            .container{
                max-width: 1500px;
                margin:auto;
                padding-left: 25px;
                padding-right: 25px;
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


            .table-responsive {
                margin: 30px 0;
                width: 100%;
            }
            .table-wrapper {
                background: #fff;
                padding: 10px 25px;
                border-radius: 3px;
                min-width: 1000px;
                box-shadow: 0 1px 1px rgba(0,0,0,.05);
            }
            .table-title {        
                padding-bottom: 15px;
                background: #35475e;
                color: #fff;
                padding: 16px 30px;
                min-width: 100%;
                margin: -20px -25px 10px;
                border-radius: 3px 3px 0 0;
            }
            .table-title img{
                float: left;
            }
            .table-title h2 {
                margin: 5px 0 0;
                font-size: 24px;
            }
            .table-title .btn-group {
                float: right;
            }

            .table-title .btn {
                color: #fff;
                float: right;
                font-size: 13px;
                border: none;
                min-width: 50px;
                border-radius: 2px;
                border: none;
                outline: none !important;
                margin-left: 10px;
            }
            .table-title .btn i {
                float: left;
                font-size: 21px;
                margin-right: 5px;
            }
            .table-title .btn span {
                float: left;
                margin-top: 2px;
            }
            table.table tr th, table.table tr td {
                border-color: #e9e9e9;
                padding: 12px 15px;
                vertical-align: middle;
            }
            table.table tr th:first-child {
                width: 60px;
            }
            table.table tr th:last-child {
                width: 100px;
            }
            table.table-striped tbody tr:nth-of-type(odd) {
                background-color: #fcfcfc;
            }
            table.table-striped.table-hover tbody tr:hover {
                background: #f5f5f5;
            }
            table.table th i {
                font-size: 13px;
                margin: 0 5px;
                cursor: pointer;
            }	
            table.table td:last-child i {
                opacity: 0.9;
                font-size: 22px;
                margin: 0 5px;
            }
            table.table td a {
                font-weight: bold;
                color: #566787;
                display: inline-block;
                text-decoration: none;
                outline: none !important;
            }
            table.table td a:hover {
                color: #2196F3;
            }
            table.table td a.edit {
                color: #FFC107;
            }
            table.table td a.delete {
                color: white;
            }
            table.table td i {
                font-size: 19px;
            }
            table.table .avatar {
                border-radius: 50%;
                vertical-align: middle;
                margin-right: 10px;
            }
            .pagination {
                float: right;
                margin: 0 0 5px;
            }
            .pagination li a {
                border: none;
                font-size: 13px;
                min-width: 30px;
                min-height: 30px;
                color: #999;
                margin: 0 2px;
                line-height: 30px;
                border-radius: 2px !important;
                text-align: center;
                padding: 0 6px;
            }
            .pagination li a:hover {
                color: #666;
            }	
            .pagination li.active a, .pagination li.active a.page-link {
                background: #03A9F4;
            }
            .pagination li.active a:hover {        
                background: #0397d6;
            }
            .pagination li.disabled i {
                color: #ccc;
            }
            .pagination li i {
                font-size: 16px;
                padding-top: 6px
            }
            .hint-text {
                float: left;
                margin-top: 10px;
                font-size: 13px;
            }    
            /* Custom checkbox */
            .cost{
                float: right;
                font-size: 25px;
                color: black;
                padding-top: 30px;
                padding-right: 300px;
            }
            /* Modal styles */
            .modal .modal-dialog {
                max-width: 400px;
            }
            .modal .modal-header, .modal .modal-body, .modal .modal-footer {
                padding: 20px 30px;
            }
            .modal .modal-content {
                border-radius: 3px;
                font-size: 14px;
            }
            .modal .modal-footer {
                background: #ecf0f1;
                border-radius: 0 0 3px 3px;
            }
            .modal .modal-title {
                display: inline-block;
            }
            .modal .form-control {
                border-radius: 2px;
                box-shadow: none;
                border-color: #dddddd;
            }
            .modal textarea.form-control {
                resize: vertical;
            }
            .modal .btn {
                border-radius: 2px;
                min-width: 100px;
            }	
            .modal form label {
                font-weight: normal;
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
        <script>
            $(document).ready(function() {
                $('[data-toggle="tooltip"]').tooltip();
            });
        </script>
    </head>
    <body>
        <div class="header">
            <div class="container">
                <%@include file="header.jsp"%>
            </div>
        </div>
        <% if (session.getAttribute("name") != null) {%>
        <div class="container-xl">
            <div class="table-responsive">
                <div class="table-wrapper">
                    <div class="table-title">
                        <div class="row">
                            <div class="col-sm-4">
                                <h2><b>My Orders </b></h2>
                            </div>
                        </div>
                    </div>    
                    <table class="table table-striped table-hover">
                        <thead>
                            <tr>
                                <th>Image</th>
                                <th>Product Name</th>
                                <th>product cost</th>
                                <th>Status</th></tr>
                        </thead>
                        <tbody>
                            <%
                                Registration1 s1 = new Registration1(session);
                                ArrayList<Order> ar = s1.getorderinfo();
                                Iterator<Order> itr = ar.iterator();
                                while (itr.hasNext()) {
                                    Order s = itr.next();%> 
                            <%
                                Registration1 s2 = new Registration1(session);
                                ArrayList<Order> ar1 = s2.getorderinfocart(s.getoid());
                                Iterator<Order> itr1 = ar1.iterator();
                                while (itr1.hasNext()) {
                                    Order s3 = itr1.next();
                            %> 
                            <tr> 
                                <td><img src="image/<%=s3.getp_image()%>" width="100px" height="100px"></td>
                                <td><%=s3.getc_name()%></td>
                                <td><%=s3.getc_cost()%></td>
                                <td><%=s.getstatus()%></td>
                            </tr>
                            <% }%>
                         <td>
                            <%if (s.getstatus().equals("ordered")) {%>
                            <form action="order" method="post">
                                <input type="hidden" name="orderid" value="<%=s.getoid()%>"/>
                                <input type="submit"  class="btn btn-warning" name="deleteorder" value="Cancel Order">
                            </form>
                            <%}%>
                        </td>
                        <%}%>
                        </tbody>
                        <hr>
                    </table>
                </div>
            </div>        
        </div>
        <br><br><br>
        <%}%>
        <%@include file="footer.jsp"%>
    </body>
</html>