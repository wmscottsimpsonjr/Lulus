<%-- 
    Document   : order
    Created on : Mar 21, 2019, 5:54:04 PM
    Author     : Scott Simpson
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
    
    <link rel="stylesheet" href="CSS_SCSS/OrderJSPStyle.css" />
    <!-- Adds an icon library to the website -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,600" rel="stylesheet"> 

<!--https://www.jqueryscript.net/time-clock/Datetime-Picker-jQuery-Moment.html-->
    <script src="https://code.jquery.com/jquery-1.12.4.min.js" 
        integrity="sha384-nvAa0+6Qg9clwYCGGPpDQLVpLNn0fRaROjHqs13t4Ggj3Ez50XnGQqc/r8MhnRDZ" 
        crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.22.0/moment-with-locales.min.js"></script>
    <link href="CSS_SCSS/datetimepicker.css" rel="stylesheet">
    <script src="js/datetimepickerNEW.js"></script>

<div class="pickerholder">
    <script type="text/javascript">
    $(document).ready( function () {
        $('#picker').dateTimePicker({title: "Select Order Ready Date and Time"});
       
    })
    </script>
</div>
        
		<title>Order - Lulu's Local Eatery</title>
	</head>
	<body id="page-top">
		<div class="containera">
			<div class="containera2">
				<header>
					<div class="logo"><img src="images/logogreen.jpg" width="250"></div>
					<nav>
						<a href="index.html">Home</a> -
						<a href="menu.html">Menu</a> -
						<a href="#order">Order</a> - 
						<a href="ping_pong.html">Ping Pong Bar</a> -
						<a href="contact_us.html">Contact Us</a>
					</nav>
				</header>
				<article id="order">
                                <form action="Cart" method="post">
                                    <div class="message">
                                        ${msg}
                                    </div>
                                    <c:if test = "${param.readynow == 'later' || readynow == 'later'}">
                                        <div class="calendar">
                                            When would you like your order to be ready?
                                                <div id="picker"> </div>
                                                <input type="hidden" name="pickuptime" id="pickuptime" value="${ptformat}" />
                                            (Pickup available Monday&ndash;Saturday, Noon&ndash;8:30 PM)
                                          
                                            
                                            
                                        </div>
                                    </c:if>
					<p>
                                            Select the menu items you would like to order:
					</p>
                                        <br>
                                        
                                            <div class="ordertitle">
                                                    Starters, Salads, &amp; Sides
                                            </div>
                                            <table>
                                                <tr>
                                                    <td><span class=tableheader>Add</span></td>
                                                    <td><span class=tableheader>Quantity</span></td>
                                                    <td><span class=tableheader>Name</span></td>
                                                    <td><span class=tableheader>Price</span></td>
                                                </tr>
                                            <c:forEach var="item" items="${items}">
                                                <c:if test="${item.category == 'Starter'}">
                                                    
                                                        <tr>
                                                            <td><input type="checkbox" name="itemID" value="${item.itemID}" ${paramValues.itemID.stream().anyMatch(v->v == item.itemID).get() ? 'checked' : ''}></td><!--https://stackoverflow.com/questions/3937624/how-can-i-retain-html-form-field-values-in-jsp-after-submitting-form-to-servlet-->
                                                            <td>
                                                                <select name="${item.itemID}">
                                                                    <c:forEach var="i" begin="1" end="20">
                                                                        <option value="${i}" ${paramValues[item.itemID.toString()].stream().anyMatch(v->v == i).get() ? 'selected' : ''}>${i}</option>
                                                                    </c:forEach>
                                                                </select>
                                                            </td>
                                                            <td>${item.name}</td>
                                                            <td><fmt:formatNumber value="${item.price}" type="currency"/></td>
                                                        </tr>
                                                    
                                                </c:if>
                                            </c:forEach>
                                            </table>
                                            <br />
                                            <div class="ordertitle">
                                                    Burgers &amp; Wraps
                                            </div>
                                            <table>
                                                <tr>
                                                    <td><span class=tableheader>Add</span></td>
                                                    <td><span class=tableheader>Quantity</span></td>
                                                    <td><span class=tableheader>Name</span></td>
                                                    <td><span class=tableheader>Price</span></td>
                                                </tr>
                                                <c:forEach var="item" items="${items}">
                                                    <c:if test="${item.category == 'Burger'}">
                                                        <tr>
                                                            <td><input type="checkbox" name="itemID" value="${item.itemID}" ${paramValues.itemID.stream().anyMatch(v->v == item.itemID).get() ? 'checked' : ''}></td>
                                                            <td>
                                                                <select name="${item.itemID}">
                                                                    <c:forEach var="i" begin="1" end="20">
                                                                        <option value="${i}" ${paramValues[item.itemID.toString()].stream().anyMatch(v->v == i).get() ? 'selected' : ''}>${i}</option>
                                                                    </c:forEach>
                                                                </select>
                                                            </td>
                                                            <td>${item.name}</td>
                                                            <td><fmt:formatNumber value="${item.price}" type="currency"/></td>
                                                        </tr>
                                                    </c:if>
                                                </c:forEach>
                                            </table>
                                            <br>
                                            <div class="ordertitle">
                                                    Tacos &amp; Burritos
                                            </div>
                                            <table>
                                                <tr>
                                                    <td><span class=tableheader>Add</span></td>
                                                    <td><span class=tableheader>Quantity</span></td>
                                                    <td><span class=tableheader>Name</span></td>
                                                    <td><span class=tableheader>Price</span></td>
                                                </tr>
                                            <c:forEach var="item" items="${items}">
                                                <c:if test="${item.category == 'Tacos'}">
                                                    
                                                        <tr>
                                                            <td><input type="checkbox" name="itemID" value="${item.itemID}" ${paramValues.itemID.stream().anyMatch(v->v == item.itemID).get() ? 'checked' : ''}></td>
                                                            <td>
                                                                <select name="${item.itemID}">
                                                                    <c:forEach var="i" begin="1" end="20">
                                                                        <option value="${i}" ${paramValues[item.itemID.toString()].stream().anyMatch(v->v == i).get() ? 'selected' : ''}>${i}</option>
                                                                    </c:forEach>
                                                                </select>
                                                            </td>
                                                            <td>${item.name}</td>
                                                            <td><fmt:formatNumber value="${item.price}" type="currency"/></td>
                                                        </tr>
                                                    
                                                </c:if>
                                            </c:forEach>
                                            </table>
                                            <br>
                                            <div class="ordertitle">
                                                    Entree Bowls
                                            </div>
                                            <table>
                                                <tr>
                                                    <td><span class=tableheader>Add</span></td>
                                                    <td><span class=tableheader>Quantity</span></td>
                                                    <td><span class=tableheader>Name</span></td>
                                                    <td><span class=tableheader>Price</span></td>
                                                </tr>
                                            <c:forEach var="item" items="${items}">
                                                <c:if test="${item.category == 'Bowl'}">
                                                    
                                                        <tr>
                                                            <td><input type="checkbox" name="itemID" value="${item.itemID}" ${paramValues.itemID.stream().anyMatch(v->v == item.itemID).get() ? 'checked' : ''}></td>
                                                            <td>
                                                                <select name="${item.itemID}">
                                                                    <c:forEach var="i" begin="1" end="20">
                                                                        <option value="${i}" ${paramValues[item.itemID.toString()].stream().anyMatch(v->v == i).get() ? 'selected' : ''}>${i}</option>
                                                                    </c:forEach>
                                                                </select>
                                                            </td>
                                                            <td>${item.name}</td>
                                                            <td><fmt:formatNumber value="${item.price}" type="currency"/></td>
                                                        </tr>
                                                    
                                                </c:if>
                                            </c:forEach>
                                            </table>
                                            <br>
                                            <div class="ordertitle">
                                                    Kids
                                            </div>
                                            <table>
                                                <tr>
                                                    <td><span class=tableheader>Add</span></td>
                                                    <td><span class=tableheader>Quantity</span></td>
                                                    <td><span class=tableheader>Name</span></td>
                                                    <td><span class=tableheader>Price</span></td>
                                                </tr>
                                            <c:forEach var="item" items="${items}">
                                                <c:if test="${item.category == 'Kids'}">
                                                    
                                                        <tr>
                                                            <td><input type="checkbox" name="itemID" value="${item.itemID}" ${paramValues.itemID.stream().anyMatch(v->v == item.itemID).get() ? 'checked' : ''}></td>
                                                            <td>
                                                                <select name="${item.itemID}">
                                                                    <c:forEach var="i" begin="1" end="20">
                                                                        <option value="${i}" ${paramValues[item.itemID.toString()].stream().anyMatch(v->v == i).get() ? 'selected' : ''}>${i}</option>
                                                                    </c:forEach>
                                                                </select>
                                                            </td>
                                                            <td>${item.name}</td>
                                                            <td><fmt:formatNumber value="${item.price}" type="currency"/></td>
                                                        </tr>
                                                    
                                                </c:if>
                                            </c:forEach>
                                            </table>
                                            <br>
                                            <div class="buttonholder">
						<input type="submit" id="submit" name="viewcart" value="Review Cart">
                                            </div>
                                        </form>
				</article>
			</div>
		</div>
	</body>
</html>

