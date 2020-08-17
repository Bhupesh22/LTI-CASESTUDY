<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> Welcome | Home Page </title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="mystyle.css">
</head>
<body>
    <div class="container index ">
        <h2> Choose one option </h2>
        <a class="btn btn-outline-dark" href="add-student.jsp" role="button">Add Student</a>
        <a class="btn btn-outline-dark" href="search-student.jsp" role="button">Search Student</a>
        <a class="btn btn-outline-dark" href="display-student.jsp" role="button">Display Students</a>
        <div class="error">
    	<%
    		String message = (String)request.getAttribute("message");
    		Optional<String> check = Optional.ofNullable(message);
    		if(check.isPresent()){
    	%>
    		<p><h3> <%= message %> </h3></p>
    	<%
    		}
    	%>
    	</div>
    </div>
    
</body>
</html>