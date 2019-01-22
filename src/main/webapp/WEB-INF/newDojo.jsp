<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<script type="text/javascript" src="js/time.js"></script>
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
<title>New Dojo</title>
</head>
<body>
	<h1>New Dojo</h1>
    <form:form action="/dojos" method="post" modelAttribute="dojo">
       <p>
           <form:label path="name">Name</form:label>
           <form:input path="name"/>
           <form:errors path="name" style="color: red;"/>
       </p>
       <input type="submit" value="Create"/>
   </form:form>
</body>
</html>