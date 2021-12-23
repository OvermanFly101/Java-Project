<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
    
    	<!-- //// JAVASCRIPT LINKS ///////////////////////////////// -->
	<script src="/webjars/jquery/jquery.min.js"></script>
	<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
    
    <title>Sign Up</title>
</head>
<body>
	<h1 class="header"><a href="/">CLΛN<i class="fa fa-gamepad" aria-hidden="true"></i></a></h1>
	<div id="container">
		<div class="signup">
			<form:form method="POST" action="/registration/admin" modelAttribute="adminUser">
				<form:errors path="user.*" style="color: red"/>
				<div class="form-group">
					<form:label path="username">Username:</form:label>
					<form:input path="username" class="form-control"/>
				</div>
				<div class="form-group">
					<form:label path="password">Password:</form:label>
					<form:password path="password" class="form-control"/>
				</div>
				<div class="form-group">
					<form:label path="passwordConfirmation">Password Confirmation:</form:label>
					<form:password path="passwordConfirmation" class="form-control"/>
				</div>
				<input type="submit" value="Register Admin"  class="btn btn-light"/>
			</form:form>
		</div>
	</div>

</body>