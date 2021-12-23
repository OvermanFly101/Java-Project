<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>All Games</title>
	<!-- CSS -->
	<link rel="stylesheet" type="text/css" href="/css/show.css">
	
	<!-- Bootstrap -->
	<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
	<script src="/webjars/jquery/jquery.min.js"></script>
	<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
	
	 <!-- Icons -->
    <script src="https://use.fontawesome.com/b4a0ba9277.js"></script>
    
</head>
<body id="body">
	<div id="container"> 
		<nav class="nav-links">
            <div>
                <h1 class="header"><a href="/">CLΛN<i class="fa fa-gamepad" aria-hidden="true"></i></a></h1>
            </div>
            <div class="right-nav-links">
                <a href="/games">Games</a>
                <a href="/chat">Chat</a>
                <div class="nav-btns">
                    <a href="/login"><button class="login-btn">Login</button></a>
                    <a href="/registration"><button class="signup-btn">Sign Up</button></a>
                </div>
            </div>
        </nav>
        <div class="body-content">
        	<div class="body-content-header">
        		<h2>${game.title}</h2>
        		<div class="search-section">
        			<input type="text" id="search" placeholder="search"/>
        			<button class="search-icon"><i class="fa fa-search" aria-hidden="true"></i></button>
        		</div>
        	</div>
        	<div class="details">
        		<img src="${game.image}">
        		<div class="info">
        			<h4>Studio: ${game.studio}</h4>
        			<p>${game.description}</p>
        			<a href="/chat" id="chat">Join Chat Forum</a>
        		</div>
        	</div>
        </div>
	</div>
</body>
</html>