<%-- 
    Document   : userhome
    Created on : Aug 30, 2020, 10:31:30 PM
    Author     : BSIL
--%>

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
            /* styles.css */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: 'Poppins', sans-serif;
}

.navbar {
    display: flex;
    align-items: center;
    padding: 20px;
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

.container {
    max-width: 1300px;
    margin: auto;
    padding-left: 25px;
    padding-right: 25px;
}

.row {
    display: flex;
    align-items: center;
    flex-wrap: wrap;
    justify-content: space-around;
}

.col-2 {
    flex-basis: 50%;
    min-width: 300px;
}

.col-2 img {
    max-width: 100%;
    padding: 50px 0;
}

.col-2 h1 {
    font-size: 40px;
    line-height: 60px;
    margin: 25px 0;
}

.btn {
    display: inline-block;
    background: #ff523b;
    color: #fff;
    padding: 8px 30px;
    margin: 30px 0;
    border-radius: 30px;
    text-decoration: none;
}

.header {
    background: radial-gradient(#fff, #ffd2d2);
}

.header .row {
    margin-top: 60px;
}

.header .container .navbar h1 {
    font-size: 24px;
}

.categories {
    margin: 40px 0;
}

.categories .col-3 {
    flex-basis: 30%;
    min-width: 250px;
    margin-bottom: 30px;
    text-align: center;
    padding: 40px 10px;
    cursor: pointer;
    transition: transform 0.5s;
}

.categories .col-3 img {
    width: 150px;
    height: 150px;
    margin-top: 20px;
    border-radius: 50%;
}

.categories .col-3:hover {
    transform: translateY(-10px);
}

.small-container {
    max-width: 1080px;
    margin: auto;
    padding-left: 25px;
    padding-right: 25px;
}

.col-4 {
    flex-basis: 25%;
    padding: 10px;
    min-width: 200px;
    margin-bottom: 50px;
    transition: transform 0.5s;
}

.col-4 img {
    width: 100%;
}

.title {
    text-align: center;
    margin: 0 auto 80px;
    position: relative;
    line-height: 60px;
    color: #555;
}

.title::after {
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

h4 {
    color: #555;
    font-weight: normal;
}

.col-4 p {
    font-size: 14px;
}

.rating .fa {
    color: #ff523b;
}

.col-4:hover {
    transform: translateY(-5px);
}

.offer {
    background: radial-gradient(#fff, #ffd2d2);
    margin-top: 80px;
    padding: 30px 0;
}

.offer-img {
    padding: 50px;
}

small {
    color: #555;
}

/* Testimonial */
.testimonial {
    padding-top: 40px;
}

.testimonial .col-4 {
    text-align: center;
    padding: 40px 20px;
    box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.1);
    cursor: pointer;
    transition: transform 0.5s;
}

.testimonial .col-4 img {
    width: 80px;
    height: 60px;
    margin-top: 20px;
    border-radius: 50%;
}

.testimonial .col-4:hover {
    transform: translateY(-10px);
}

.testimonial .fa-quote-left {
    font-size: 34px;
    color: #ff523b;
}

.testimonial .col-4 p {
    font-size: 12px;
    margin: 12px 0;
    color: #777;
}

.testimonial .col-4 h3 {
    font-weight: 600;
    color: #555;
    font-size: 16px;
}

/* Brands */
.brands {
    margin-top: 100px;
}

.col-5 {
    width: 160px;
}

.col-5 img {
    width: 100%;
    cursor: pointer;
    filter: grayscale(100%);
}

.col-5 img:hover {
    filter: grayscale(0);
}

/* Footer */
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

.footer-col-1,
.footer-col-2,
.footer-col-3,
.footer-col-4 {
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

.footer-col-2 img {
    width: 160px;
    margin-bottom: 30px;
}

.footer-col-3,
.footer-col-4 {
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

.dropdown {
    position: relative;
    display: inline-block;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0 rgba(0, 0, 0, 0.2);
    padding: 12px 16px;
    z-index: 1;
}

.dropdown:hover .dropdown-content {
    display: block;
}

/* Media Queries */
@media (max-width: 768px) {
    .navbar {
        flex-direction: column;
    }

    .navbar nav ul {
        display: flex;
        flex-direction: column;
        align-items: center;
    }

    .navbar nav ul li {
        margin: 10px 0;
    }

    .col-2 {
        flex-basis: 100%;
        text-align: center;
    }

    .categories .col-3 {
        flex-basis: 45%;
    }

    .offer .row {
        flex-direction: column;
    }

    .offer .col-2 {
        flex-basis: 100%;
    }

    .testimonial .col-4 {
        flex-basis: 100%;
    }

    .footer {
        text-align: center;
    }

    .footer .footer-col-1,
    .footer .footer-col-2,
    .footer .footer-col-3,
    .footer .footer-col-4 {
        flex-basis: 100%;
    }
}

@media (max-width: 480px) {
    .categories .col-3 {
        flex-basis: 100%;
    }

    .offer .row {
        flex-direction: column;
    }

    .testimonial .col-4 {
        flex-basis: 100%;
    }
}

        </style>
    </head>
    <body>
        <div class="header">
            <div class="container">
                    <%@include file="header.jsp"%>
                <div class="row">
                    <div class="col-2">
                        <h1>Lets Take Care Of Things That <br>We Love!</h1>

                    </div>
                    <div class="col-2">
                        <img src="image/all12.png">
                    </div>
                </div>
            </div>
        </div> 

        <div class="categories">
            <div class="small-container">
                <h2 class="title">Categories</h2>
                <div class="row">
                    <div class="col-3">
                        <a href="dog2col.jsp?animal=dog"> <img src="image/dogeat.jpeg"><br><s3>Dog</s3></a>
                    </div>
                    <div class="col-3">
                        <a href="dog2col.jsp?animal=cat">  <img src="image/c1.jpg"><br><s3>Cat</s3></a>
                    </div>

                    <div class="col-3">
                        <a href="dog2col.jsp?animal=bird">   <img src="image/bird.jpeg"><br><s3>Birds</s3></a>
                    </div>
                </div>
            </div>
        </div>

        <!--Offer-->
        <div class="offer">
            <div class="small-container">
                <div class="row">
                    <div class="col-2">
                        <img src="image/health2.png" class="offer-img">
                    </div>


                    <div class="col-2" style="padding:45px;">
                        <p>  KNOW MORE ABOUT YOUR PETS!</p>
                        <h2>Your Pet, Your Responsibility</h2>
                        <small><b>A yearly veterinary checkup is the best way to keep your pet as healthy as possible</b> </small>
                        <br>  <a href="pet.jsp" class="btn">Explore Now &#8594</a>
                    </div>
                </div>
            </div>
        </div>     

        <!--     testimonial-->
        <div class="testimonial">
            <div class="small-container">
                <h2 class="title">Testimonials</h2>
                <div class="row">
                    <div class="col-4">
                        <i class="fa fa-quote-left" ></i>
                        <p>“You made it so simple. My new site is so much faster and easier to work with than my old site. I just choose the page, make the change and click save.

                            Thanks, guys!”</p>
                        <div class="rating">
                            <i class="fa fa-star" ></i>
                            <i class="fa fa-star" ></i>
                            <i class="fa fa-star" ></i>
                            <i class="fa fa-star" ></i>
                            <i class="fa fa-star-o" ></i>
                        </div>
                        <img src="image/person1.jpg"><br>
                        <s3>Sandy Mark</s3>
                    </div>
                    <div class="col-4">
                        <i class="fa fa-quote-left" ></i>
                        <p>“You made it so simple. My new site is so much faster and easier to work with than my old site. I just choose the page, make the change and click save.

                            Thanks, guys!”</p>
                        <div class="rating">
                            <i class="fa fa-star" ></i>
                            <i class="fa fa-star" ></i>
                            <i class="fa fa-star" ></i>
                            <i class="fa fa-star" ></i>
                            <i class="fa fa-star-o" ></i>
                        </div>
                        <img src="image/person2.jpg"><br>
                        <s3>Josep Andy</s3>
                    </div>
                    <div class="col-4">
                        <i class="fa fa-quote-left" ></i>
                        <p>“You made it so simple. My new site is so much faster and easier to work with than my old site. I just choose the page, make the change and click save.

                            Thanks, guys!”</p>
                        <div class="rating">
                            <i class="fa fa-star" ></i>
                            <i class="fa fa-star" ></i>
                            <i class="fa fa-star" ></i>
                            <i class="fa fa-star" ></i>
                            <i class="fa fa-star-o" ></i>
                        </div>
                        <img src="image/person3.jpg"><br>
                        <s3>Emily joseph</s3>
                    </div>
                </div>
            </div>
        </div>

           <%@include file="footer.jsp"%>

    </body>
</html>