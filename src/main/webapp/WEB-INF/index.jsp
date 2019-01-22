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
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<title>Index Page</title>
</head>
<body>
	<h4><a href="/ninjas/new">Add New Ninja</a> | <a href="/dojos/new">Add New Dojo</a></h4>
	<h1>Information</h1>
	<table class="table table-striped">
        <thead>
            <tr>
                <th scope="col">Dojo Name</th>
                <th scope="col">Ninja Count</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${dojos}" var="dojo">
                <tr>
                    <td><a href="/dojos/${dojo.id}">${dojo.name}</a></td>
                    <td>${fn:length(dojo.ninjas)}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>