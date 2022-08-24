<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Home page</title>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Didact+Gothic&family=Satisfy&display=swap" rel="stylesheet"> 
<link rel="stylesheet" href="/css/style.css">

</head>
<body>
	<div class="nav-background-white"></div>
	<nav class="nav-container">
	<div>
		 <div class="morph-shape a">  <img src="https://img.icons8.com/fluency-systems-filled/75/men-age-group-5.png"/></div>
		 <div class="morph-shape b"> <img src="https://img.icons8.com/fluency-systems-filled/75/men-age-group-5.png"/></div>
		 <div class="morph-shape c"><img src="https://img.icons8.com/fluency-systems-filled/75/men-age-group-5.png"/> </div>
		 <div class="morph-shape d"> <img src="https://img.icons8.com/fluency-systems-filled/75/men-age-group-5.png"/></div>
		 <div class="morph-shape e"> <img src="https://img.icons8.com/fluency-systems-filled/75/men-age-group-5.png"/></div>
		 <div class="morph-shape f"> <img src="https://img.icons8.com/fluency-systems-filled/75/men-age-group-5.png"/></div>
		 <div class="morph-shape g"> <img src="https://img.icons8.com/fluency-systems-filled/75/men-age-group-5.png"/></div>
		 <div class="morph-shape h"> <img src="https://img.icons8.com/fluency-systems-filled/75/men-age-group-5.png"/></div>
		 <div class="logo">Employee+Plus</div>
		    
	</div>
		 
	<!-- navbar buttons -->	  
		    
	<div class="buttons">
	
		  <div>
		<h3 class="text-white">Welcome, <c:out value="${user.name}"></c:out>!</h3>

		</div>
		
			<div class="menu-button">
				<a href="/home" title="home">
			  	<img src="https://img.icons8.com/android/45/000000/home.png"/></a>
			</div>
			    
			<div class="menu-button">
			    <a href="/workers/new" title="add a employee">
				<img src="https://img.icons8.com/fluency-systems-filled/60/men-age-group-5.png"/></a>
			</div>
			    
			<div class="menu-button" title="employee list">
				<a href="/workers">
				<img src="https://img.icons8.com/glyph-neue/40/000000/list--v1.png"/></a>
			</div>
				
		    <div class="menu-button" title="logout">
		     	<a href="/logout">
		  		<img src="https://img.icons8.com/ios-filled/35/000000/logout-rounded.png"/></a>
		    </div>
		    
	 </div>
</nav>


	<div class="container">
  
	<div class="main">
    	<div class="blade-left">
     	<div>
  	 	<h1>Welcome to Employee Plus</h1>
  	 	<p>Welcome to your HR solution for tracking your employees.  
  	 	You can add a employees to your employee list, then edit/delete 
  	 	as needed, helping you keep track of who works where.
  	 	</p>
 
    </div>
    
  	</div>
	</div>
  	<div class="main">
    	<div class="blade-right">
      		<div>
      		<h1>Our Mission</h1>
      		<p>We are a group of developers grinding away to make your HR nightmares a
      		 HR dream.  Stay tuned for added features! </p>
    </div>
    </div>

</div>
  
</div>
	



</body>
</html>