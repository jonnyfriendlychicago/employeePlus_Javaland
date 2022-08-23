<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

<title>Add New</title>
</head>
<body>
<div class="d-flex justify-content-start">
 	<div><a href="/workers" class="btn btn-success">Back to workers</a></div>
</div>
    <div class="d-flex justify-content-end" >
        <a href="/logout"  class="btn btn-dark">logout</a>
    </div>
    <nav class="navbar navbar-expand-sm bg-light justify-content-center">
	<h3 class="text-primary">add employees</h3>
	</nav>
<div class="container">
	<form:form action="/workers/add" method="post" modelAttribute="newWW" class="form">
			<div class="form-row">
			 	
				<form:label for="firstName" path="firstName">First Name</form:label>
				<form:errors path="firstName" class="error"/>
				<form:input type="firstName" path="firstName" class="form-control"/>
				
			</div>
			
			<div class="form-row">
				<form:errors path="lastName" class="error"/><br>
				<form:label for="lastName" path="lastName">Last Name</form:label>
				<form:input type="lastName" path="lastName" class="form-control"/>
			</div>
			
			<div class="form-row">
				<form:errors path="jobTitle" class="error"/><br>
				<form:label for="jobTitle" path="jobTitle">Job Title</form:label>
				<form:textarea path="jobTitle" class="form-control"/>
			</div>
			<div class="form-row">
				<form:errors path="workerDescription" class="error"/><br>
				<form:label for="workerDescription" path="workerDescription">Worker Description:</form:label>
				<form:textarea path="workerDescription" class="form-control"/>
			</div>
			<div class="form-row">
				<form:errors path="employmentType" class="error"/><br>
				<form:label for="employmentType" path="employmentType">Type:Full Time,Part-Time, Contract</form:label>
				<form:textarea path="employmentType" class="form-control"/>
			</div>
			<div>
				<form:errors path="hireDate" class="text-danger"/>
				<form:label for="hireDate" path="hireDate">Hire Date</form:label>
				<form:input path="hireDate" type="date"/>
			</div>
			<div class="form-row">
				<form:errors path="user" class="error"/>
				<form:input type="hidden" path="user" value="${sessionId}" class="form-control"/>
			</div>
			
			<div class="d-flex justify-content-center">
				<input type="submit" value="Submit" class="btn-primary"/>
			</div>
	</form:form>
</div>
</body>
</html>