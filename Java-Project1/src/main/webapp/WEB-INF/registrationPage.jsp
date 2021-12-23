<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- c:out ; c:forEach etc. -->
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- Formatting (dates) -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- form:form -->
<%@ page isErrorPage="true"%>
<!-- for rendering errors on PUT routes -->

<!--/////////////////////////////////////////////////////
//	REGISTRATION PAGE JSP
///////////////////////////////////////////////////////// -->

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- CSS -->
    <link rel="stylesheet" type="text/css" href="/css/login.css">
    
    <!-- Bootstrap -->
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
    <script src="/webjars/jquery/jquery.min.js"></script>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
    
    <!-- Icons -->
    <script src="https://use.fontawesome.com/b4a0ba9277.js"></script>
    
    <title>Sign Up</title>
</head>
<body>	
	<h1 class="header"><a href="/">CLΛN<i class="fa fa-gamepad" aria-hidden="true"></i></a></h1>
		<div id="container">
			<div class="signup">
				<form:form method="POST" action="/registration" modelAttribute="user">
					<!-- not showing error messages-->
					<form:errors path="user.*" style="color: red"/>
					<form:errors path="password" style="color: red"/>
					<form:errors path="passwordConfirmation" style="color: red"/>
					<div class="form-group">
						<form:label path="username">Username:</form:label>
						<form:input path="username" class="form-control" />
					</div>
					<div class="form-group">
						<form:label path="password">Password:</form:label>
						<form:password path="password" class="form-control" />
					</div>
					<div class="form-group">
						<form:label path="passwordConfirmation">Password Confirmation:</form:label>
						<form:password path="passwordConfirmation" class="form-control" />
					</div>
					<input type="submit" value="Register!" class="btn btn-light"/>
				</form:form>
			</div>
		</div>
	 <footer>
            <p class="footer-copyright">&copy; CLAN CO. ALL RIGHTS RESERVED<br>Lorem ipsum dolor sit amet consectetur adipisicing elit. </p>
                <ul class="footer-links">
                    <li><a href="#">ABOUT</a></li>
                    <p class="triangle">&#9653;</p>
                    <li><a href="#">SUPPORT</a></li>
                    <p class="circle">&#9711;</p>
                    <li><a href="#">PRIVACY POLICY</a></li>
                    <p class="x">&#x2715;</p>
                    <li><a href="#contact-section">CONTACT US</a></li>
                    <p class="square">&#9634;</p>
                </ul> 
        </footer>



	<!-- //// JAVASCRIPT LINKS ///////////////////////////////// -->
	<script src="/webjars/jquery/jquery.min.js"></script>
	<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</body>