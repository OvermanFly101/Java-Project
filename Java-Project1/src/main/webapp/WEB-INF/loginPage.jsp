<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
    <div class="figure">
    	<img  src="images/home/figure.png">
    </div>
    <div id="container">
        <div class="signup">
            <c:if test="${logoutMessage != null}">
                <c:out value="${logoutMessage}"></c:out>
            </c:if>
            <form method="POST" action="/login">
            	<h1 style="color: white">Welcome Clansman!</h1>
            	<c:if test="${errorMessage != null}">
                	<p style="color: red"><c:out value="${errorMessage}"></c:out></p>
            	</c:if>
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