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
	
	<title>Log In</title>
</head>
<body>
	<h1 class="header"><a href="/">CLΛN<i class="fa fa-gamepad" aria-hidden="true"></i></a></h1>
	<div id="container">
		<!-- <h1 class="header"><a href="/">CLΛN<i class="fa fa-gamepad" aria-hidden="true"></i></a></h1> -->
		<input type="checkbox" id="chk" aria-hidden="true"/>
		<div class="signup">
			<form:form method="POST" action="/registration" modelAttribute="user">
				<div class="form-group">
					<form:errors path="user.username" />
					<form:errors path="user.password" />
				</div>
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
				<input type="submit" value="Register!" class="btn btn-primary"/>
			</form:form>
		</div>
		
		<div class="login">
			<c:if test="${logoutMessage != null}">
				<c:out value="${logoutMessage}"></c:out>
			</c:if>
			<h1>Login</h1>
			<c:if test="${errorMessage != null}">
				<c:out value="${errorMessage}"></c:out>
			</c:if>
			<form method="POST" action="/login">
				<div class="form-group">
					<label for="username">Username:</label> 
					<input type="text" class="form-control" name="username"/>
				</div>
				<div class="form-group">
					<label for="password">Password:</label> 
					<input type="password" class="form-control" name="password"/>
				</div>
				<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" /> 
				<input type="submit" value="Login!" class="btn btn-dark"/>
			</form>
		</div>

	</div>
	<!-- //// JAVASCRIPT LINKS ///////////////////////////////// -->
	<script src="/webjars/jquery/jquery.min.js"></script>
	<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</body>