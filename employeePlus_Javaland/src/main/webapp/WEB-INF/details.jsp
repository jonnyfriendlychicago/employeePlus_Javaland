<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Didact+Gothic&family=Satisfy&display=swap" rel="stylesheet"> 
<link rel="stylesheet" href="/css/style.css">

<title>details</title>
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
					<h1>Employee Details</h1>
					<p> Name: ${emp.firstName} ${emp.lastName }  </p>
					<p> Job Title: ${emp.jobTitle } </p>
					<p> Description: ${ emp.workerDescription } </p>
					<p> Employment Type: ${ emp.employmentType} </p>
					<p> Hire Date: ${emp.hireDate } </p>
				</div>
			</div>
				<c:choose>
					<c:when test="${ userId == emp.user.id }">
		       			<a href="/workers/edit/${emp.id}" title="edit employee" class=""><img src="https://img.icons8.com/ios-filled/25/000000/edit--v1.png"/></a>
		       			<a href="/delete/<c:out value="${emp.id}"/>"title="delete"><img src="https://img.icons8.com/external-kiranshastry-solid-kiranshastry/25/000000/external-delete-multimedia-kiranshastry-solid-kiranshastry.png"/></a>
					</c:when>
				</c:choose>
		</div>
	</div>
</body>
</html>