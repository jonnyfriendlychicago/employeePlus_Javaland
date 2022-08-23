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
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Didact+Gothic&family=Satisfy&display=swap" rel="stylesheet"> 
<link rel="stylesheet" href="/css/style.css">


<title>Add A New Employee</title>
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
				<a href="/dashboard">
				<img src="https://img.icons8.com/glyph-neue/40/000000/list--v1.png"/></a>
			</div>
				
		    <div class="menu-button" title="logout">
		     	<a href="/logout">
		  		<img src="https://img.icons8.com/ios-filled/35/000000/logout-rounded.png"/></a>
		    </div>
		    
	 </div>
</nav>
<div class="container">
	<form:form action="/workers/add" method="post" modelAttribute="newWW" class="form-large">
		<div class="blade-form-large">
		<h2> &nbsp; &nbsp;Add Employee +</h2>
		<div class="double-form">
		<div>
			
			 	<div>
				<form:label for="firstName" path="firstName">First Name</form:label><br/>
				<form:errors path="firstName" class="error"/>
				<form:input type="text" path="firstName" class="form-control"/>
				</div>
		        <div>
				<form:label for="lastName" path="lastName">Last Name</form:label><br/>
				<form:errors path="lastName" class="error"/>
				<form:input type="text" path="lastName" class="form-control"/>
				</div>
			
			    <div>
				<form:label for="jobTitle" path="jobTitle">Job Title</form:label><br/>
				<form:errors path="jobTitle" class="error"/>
				<form:input type="text" path="jobTitle" class="form-control"/>
				</div>
			
			</div>
			<div>
		
				<div>
				<form:label for="hireDate" path="hireDate">Hire Date</form:label><br/>
				<form:errors path="hireDate" class="text-danger"/>
				<form:input type="date"  path="hireDate" />
				</div>
				<div>
				<form:label for="employmentType" path="employmentType">Contract Type</form:label><br/>
				<form:errors path="employmentType" class="error"/>
				<form:input type="text"  path="employmentType" class="form-control"/>
				</div>
				<div>
				<form:label for="workerDescription" path="workerDescription">Worker Description:</form:label><br/>
				<form:errors path="workerDescription" class="error"/>
				<form:textarea path="workerDescription" class="form-control" rows="5" cols="33"/>
				</div>
			</div>
			<div class="form-row">
				<form:errors path="user" class="error"/>
				<form:input type="hidden" path="user" value="${sessionId}" class="form-control"/>
			</div>
			
		
		
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
</body>
</html>