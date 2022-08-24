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
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Didact+Gothic&family=Satisfy&display=swap" rel="stylesheet"> 
    <link rel="stylesheet" href="/css/style.css">
    
    
    
    
    
    
<title>Registration and Login</title>
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
	

	 </div>
</nav>

<!-- this is a flex wrapper for the forms section -->
<div class="forms-wrap">
<!-- register form -->
<div class="form">
	<form:form action="/register" method="POST" modelAttribute="newUser" class="col-4 p-4 bg-light text-dark">
	<div class="blade-form">
		<h2 class="">Register</h2>
		<div class="">
			<form:label path="name" class="text-primary">User-Name:</form:label><br/>
			<form:errors path="name" class="error"/>
			<form:input class="input" path="name"/>
		</div>
		<div class="">
			<form:label path="email" class="text-primary">Email:</form:label><br/>
			<form:errors path="email" class="error"/>
			<form:input class="input" path="email"/>
		</div>	
		<div class="">
			<form:label path="password" class="text-primary">Password:</form:label><br/>
			<form:errors path="password" class="error"/>
			<form:input type="password" path="password"/>
		</div>	
		<div class="">
			<form:label path="confirm" class="text-primary">Confirm Password:</form:label><br/>
			<form:errors path="confirm" class="error"/>
			<form:input type="password" path="confirm"/>
		</div>	
		
	</div>
	<div class="submit-buttons-container">
    <div class="submit-buttons-outside">
		  
		  <input class="submit-buttons" type="submit" value="submit"/>
		  
    </div>
    </div>
	
	</form:form>
	
	
</div>

<!-- login form -->
<div class="form">

	<form:form action="/login" method="POST" modelAttribute="newLogin" class="">
	<div class="blade-form">
	
	<h2 class="">Login</h2>
		<div class="">
			<form:label path="email" class="">Email:</form:label><br/>
			<form:errors path="email" class="error"/>
			<form:input class="input" path="email"/>
		</div>
		<div class="">
			<form:label path="password" class="text-success">Password:</form:label><br/>
			<form:errors path="password" class="error"/>
			<form:input type="password" path="password"/>
		</div>
		
		
	</div>
	<div class="submit-buttons-container">
    <div class="submit-buttons-outside">
		  
		  <input class="submit-buttons" type="submit" value="submit"/>
		  
    </div>
    </div>
	
	</form:form>	
	
	
	
</div>
</div>
<footer>Created by: Ian Page-Frontend-Styling// Sheila Jacob front-end logic// Jon Friend Back-end @2022</footer>
</body>
</html>