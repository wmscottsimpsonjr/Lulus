<%-- 
    Document   : SelectOrders
    Created on : Mar 28, 2019, 10:12:56 PM
    Author     : wmscottsimpsonjr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
﻿<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <link rel="stylesheet" href="CSS_SCSS/MainStyle.css" />
        <link rel="stylesheet" href="CSS_SCSS/OrderJSPStyle.css" />
        
        <!-- Adds an icon library to the website -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,600" rel="stylesheet"> 
        <title>Cart - Lulu's Local Eatery</title>
    </head>
	<body id="page-top">
		<div class="containera">
			<div class="containera2">
				<header>
					<div class="logo"><img src="images/logogreen.jpg" width="250"></div>
					<nav>
						<a href="index.html">Home</a> -
						<a href="menu.html">Menu</a> -
						<a href="order.html">Order</a> - 
						<a href="ping_pong.html">Ping Pong Bar</a> -
						<a href="contact_us.html">Contact Us</a>
					</nav>
				</header>
				<article id="viewcustomers">
                                    ${msg}
                                    <table>
                                        <tr>
                                            <td><span class=tableheader>Name</span></td>
                                            <td><span class=tableheader>Phone</span></td>
                                            <td><span class=tableheader>Email</span></td>
                                            <td><span class=tableheader>ID</span></td>
                                        </tr>
                                        <c:forEach var="customer" items="${customers}">
                                            <tr>
                                                <td>${customer.lname}, ${customer.fname}</td>
                                                <td>${customer.phone}</td>
                                                <td>${customer.email}</td>
                                                <td>${customer.customerID}</td>
                                            </tr>
                                        </c:forEach>
                                        
                                    </table>
                                    
				</article>
				<footer id="info">
					<a href="https://www.google.com/maps/place/Lulu's+Local+Eatery,+LLC/@38.5989912,-90.2430857,15z/data=!4m8!1m2!3m1!2sLulu's+Local+Eatery,+LLC!3m4!1s0x0:0x5e32f72323d673d7!8m2!3d38.5989918!4d-90.2430859" target="_blank">3201 S Grand Ave St. Louis, MO 63118</a><br />
					314-300-8215 // Monday&ndash;Saturday 11:30am&ndash;9pm<br />
					Ping-pong bar above Lulu's open all day // full bar open 5pm&ndash;12am<br />
					<a href="https://squareup.com/gift/M0H6A3WHHA1NG/order" target="_blank">PURCHASE A GIFT CARD</a> <br/>
					Holiday Hours: Closed December 24<sup>th</sup> &amp; December 25<sup>th</sup>, Closed December 31<sup>st</sup> &amp; January 1<sup>st</sup> <br />
					<a href="https://www.facebook.com/Lulus-Local-Eatery-132285260224330/" class="fa fa-facebook" target="_blank"></a>
					<a href="https://www.instagram.com/luluslocaleatery/" class="fa fa-instagram" target="_blank"></a>
				</footer>
			</div>
		</div>
	</body>
</html>
