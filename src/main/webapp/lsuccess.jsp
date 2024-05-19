<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <style>
        body{
            background-image: url("image/bg.jpg");
            background-repeat: no-repeat;
            background-size: 100%;
        }
        h1{
            text-align: center;
        }
         
            header{
                height: 110px;
                background-color: none;
            }
               ul{
                float :right;
                margin-top: 40px;
                
            }
            ul li{
                display: inline-block;
            }
            ul li a{
                text-decoration: none;
                color: black;
                padding: 5px 20px;
                border: solid black;
                border-radius: 15px 50px 30px;
                transition: 0.6s ease;
               
            }
            ul li a:hover{
                background-color: orange;
              
            }
        </style>
    

       
       <!--JSP scriptlet tag and expression tag : to write java source code in jsp and to display any value use
    Expression tag-->
       <header>
           <img src="image/finallogo.png" width="100px" height="100px">
           
           
           </div>
           
            <div class="main">
                <ul>
                    <li><a href="index.html">Home</a></li>
                    <li><a href="login.html">Log out</a></li>
              
                </ul>
            </div>
            
       </header>
       
          <% if (session.getAttribute("name") != null) {%>  
                <h1>Hello <%= session.getAttribute("name")%></h1> 
                <%}%>
            
        
        

    </body>
</html>
