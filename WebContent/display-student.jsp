<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> Display Student</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="mystyle.css">
</head>
<body>
	<div class="container">
        <div class="row d-one justify-content-center">
			<form action="userController" method="POST">
        <input class="btn btn-outline-success" type="submit" name="submit" value="Display Students">
    </form>
        </div>
        <div class="row d-two justify-content-center">
        	<% List<List<String>> details = (List<List<String>>) request.getAttribute("allstudents"); %>
    	<table class="table table-bordered">
    		<% 
    		if(details != null){
    			for(List<String> row : details){ %>
    			<tr>
    			<% for(String val : row){ %>
    				<td><%=val%></td>
    			<% } %>
    			</tr>
    		<%
    		}
    		}
    	%>		
    	</table>
        </div>
    </div>
</body>
</html>