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
<title>New Ninja</title>
</head>
<body>
	<h1>New Ninja</h1>
    <form:form action="/ninjas" method="post" modelAttribute="ninja">
       <p>
           <form:label path="dojo">Dojo</form:label>
           <select name="dojo_id">
	           <c:forEach items="${dojos}" var="dojo">
	           		<option value="${dojo.id}">${dojo.name}</option>
	           </c:forEach>
           </select>
       </p>
       <p>
           <form:label path="firstName">First Name</form:label>
           <form:input path="firstName"/>
           <form:errors path="firstName" style="color: red;"/>
       </p>
       <p>
           <form:label path="lastName">Last Name</form:label>
           <form:input path="lastName"/>
           <form:errors path="lastName" style="color: red;"/>
       </p>
       <p>
           <form:label path="age">Age</form:label>
           <form:input path="age"/>
           <form:errors path="age" style="color: red;"/>
       </p>
       <input type="submit" value="Create"/>
   </form:form>
</body>
</html>