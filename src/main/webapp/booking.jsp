
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
        <title>Place order</title>
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
}

.navbar {
	display: flex;
	align-items: center;
	padding: 10px;
	width: 100%;
}

.container {
	max-width: 1500px;
	margin: auto;
	padding-left: 25px;
	padding-right: 25px;
}

nav {
	flex: 1;
	text-align: right;
}

nav ul {
	display: inline-block;
	list-style-type: none;
}

nav ul li {
	display: inline-block;
	margin-right: 20px;
}

nav ul li a {
	text-decoration: none;
	color: #555;
}

nav ul li p {
	color: #555;
}

.selectpicker {
	color: #35475e;
	margin-left: 5px;
	font-size: 15px;
}

.table-responsive {
	margin: 30px 0;
}

.table-wrapper {
	background: #fff;
	padding: 20px 25px;
	border-radius: 3px;
	min-width: 1000px;
	box-shadow: 0 1px 1px rgba(0, 0, 0, .05);
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
.cost {
	float: left;
	font-size: 25px;
	color: black;
	padding-top: 30px;
	/*                padding-right: 300px;*/
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

/*            wrappppp*/
.wrapp {
	max-width: 1200px;
	border-radius: 20px;
	margin: auto;
	background: rgba(0, 0, 0, 0.1);
	box-sizing: border-box;
	padding: 40px;
	color: #555;
	font-size: 15px;
	margin-top: 100px;
	float: center;
}

h1 {
	text-align: center;
}

input[type=text], input[type=password], input[type=number] {
	width: 100%;
	box-sizing: border-box;
	padding: 12px 5px;
	background: rgba(0, 0, 0, 0.10);
	outline: none;
	border: none;
	border-bottom: 3px double #fff;
	color: #555;
	border-radius: 5px;
	margin: 5px;
	font-weight: bold;
}

input[type=submit] {
	width: 100%;
	box-sizing: border-box;
	padding: 10px 0;
	margin-top: 30px;
	outline: none;
	border: none;
	background: #60adde;
	opacity: 0.7;
	border-radius: 20px;
	font-size: 20px;
	color: #555;
}

/*footer*/
.footer {
	background: #000;
	color: #8a8a8a;
	font-size: 14px;
	padding: 60px 0 20px;
}

.footer p {
	color: #8a8a8a;
}

.footer h3 {
	color: #fff;
	margin-bottom: 20px;
}

.footer-col-1, .footer-col-2, .footer-col-3, .footer-col-4 {
	min-width: 250px;
	margin-bottom: 20px;
}

.footer-col-1 {
	flex-basis: 30%;
}

.footer-col-2 {
	flex: 1;
	text-align: center;
}

.footer-col-2 {
	width: 160px;
	margin-bottom: 30px;
}

.footer-col-3, .footer-col-4 {
	flex-basis: 12%;
	text-align: center;
}

ul {
	list-style-type: none;
}

.app-logo {
	margin-top: 20px;
}

.app-logo img {
	width: 140px;
}

.footer hr {
	border: none;
	background: #b5b5b5;
	height: 1px;
	margin: 20px 0;
}

.copyright {
	text-align: center;
}


</style>

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
                                <h2> <b>Booking Form</b></h2>
                            </div>
                        </div>
                    </div>  
                    <div class="wrapp">
                        <div style="font-size:20px">  Buyer Name : <%= session.getAttribute("name")%></div>
                        <br>
                        <%int tcost = 0;
                            Registration1 s1 = new Registration1(session);
                            ArrayList<Cart> ar = s1.getcartinfo();
                            Iterator<Cart> itr = ar.iterator();
                            while (itr.hasNext()) {
                                Cart s = itr.next();
                                tcost = tcost + Integer.parseInt(s.getc_cost());
                        %>
                        <br>
                        <form action="order" method="POST">
                            <img src="image/<%=s.getc_image()%>" width="100px">
                            <br>
                            <label for="price">Product name :   <%=s.getc_name()%></label>
                            <br>
                            <label for="price">Product Cost : <%= s.getc_cost()%></label>
                            <br>
                            <hr>
                            <%}%>
                            <div class="cost">
                                Total: <%=tcost%>
                            </div>
                            <br><br><br>
                            <br><center>
                                Payment Method: <select class="selectpicker">
                                    <option>Cash on delivery</option>
                                </select></center>
                            <br>
                            <h2><u> Delivery Address :</u></h2>
                            <input type="text" id="adr" name="address" placeholder="Complete address" reruired><br>
                            <input type="text" id="city" name="city" placeholder="Enter city" required><br>
                            <input type="text" id="state" name="state" placeholder=" Enter state" required><br>
                            <!--<input type="number" id="code" name="code" placeholder="Enter pin code" required><br>-->
                            <input type="submit" name="submit" value="Confirm Order" class="btn"><br>
                            <input type="hidden" name="tcost" value=" <%=tcost%>">
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <%}%>
        <br><br><br><br>
        <%@include file="footer.jsp"%>
    </body>
</html>