<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> Search Student </title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="mystyle.css">
</head>
<body>
	<div class="container">
        <div class="row d-one justify-content-center">
        	<div class="container three">
			<form class="was-validated" action="userController" method="POST">
            <div class="form-group">
                <label for="sid"><b>Enter Student ID : </b></label>
                <input id="sid" class="form-control" type="number" name="sid" required>
                <div class="valid-feedback">Valid.</div>
    			<div class="invalid-feedback">Please enter student id.</div>
            </div>
            <input class="btn btn-outline-success" type="submit" name="submit" value="Search">
        </form>
        </div>
        </div>
        <div class="row d-two justify-content-center">
        <div class="container three">
    	<%
    		String message = (String)request.getAttribute("message");
    		if(message != null){
    	%>
    		<p><h3> <%= message %> </h3></p>
    	<%
    		}else {
 
    List<String> result = (List<String>) request.getAttribute("studentList");
    if(result != null){
    %>
    <table class="table table-bordered">
    <%
    		Iterator<String> it = result.iterator();
    		while(it.hasNext()){
    %>
    	<tr>
    		<td><b>Student ID :</b></td>
    		<td><%= it.next() %>
    	</tr>
    	<tr>
    		<td><b>Name : </b></td>
    		<td><%= it.next() %>
    	</tr>
    	<tr>
    		<td><b>Gender : </b></td>
    		<td><%= it.next() %>
    	</tr>
    	<tr>
    		<td><b>Date Of Birth :</b></td>
    		<td><%= it.next() %>
    	</tr>
    	<tr>
    		<td><b>City : </b></td>
    		<td><%= it.next() %>
    	</tr>
    	<tr>
    		<td><b>State : </b></td>
    		<td><%= it.next() %>
    	</tr>
    	<tr>
    		<td><b>Email-ID : </b></td>
    		<td><%= it.next() %>
    	</tr>
    	<tr>
    		<td><b>Qualification : </b></td>
    		<td><%= it.next() %>
    	</tr>
    	<tr>
    		<td><b>Stream : </b></td>
    		<td><%= it.next() %>
    	</tr>
    <%
    		}
    	}
    }
    %>
    </table>
        </div>
        </div>
    </div>
</body>
</html>