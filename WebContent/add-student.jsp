<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> Add Student </title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="mystyle.css">
</head>
<body>
    <div class="container one">
        <div class = "row one justify-content-center">
            <div class="form-title">
                <h2><U>Add student record to csv</U></h3>
            </div>
        </div>
    </div>
    <div class="container two">
        <div class="row two justify-content-center">
            <div class="container three">
            	<form class="was-validated" action="userController" method = "POST">
            
		            <div class="form-group">
		                <label for="studentid"><b>Student ID</b></label>
		                <input id="studentid" class="form-control" type="number" name="studentid" required>
		                <div class="valid-feedback">Valid.</div>
		    			<div class="invalid-feedback">Please enter student id.</div>
		            </div>
		
		            <div class="form-group">
		                <label for="studentname"><b>Student Name</b></label>
		                <input id="studentname" class="form-control" type="text" name="studentname" required>
		                <div class="valid-feedback">Valid.</div>
		    			<div class="invalid-feedback">Please enter student name.</div>
		            </div>
		
		            <b> Gender </b>
		            <div class="form-check">
		                <label class="form-check-label" for="radio1">
		                  <input type="radio" class="form-check-input" id="radio1" name="gender" value="Male" required>Male
		                </label>
		              </div>
		            <div class="form-check">
		            <label class="form-check-label" for="radio2">
		                <input type="radio" class="form-check-input" id="radio2" name="gender" value="Female">Female
		            </label>
		            </div><br>
		
		            <div class="form-group">
		                <label for="date"><b> Date Of Birth </b></label>
		                <input id="date" class="form-control" type="date" name="date" required>
		                <div class="valid-feedback">Valid.</div>
		    			<div class="invalid-feedback">Please enter date of birth .</div>
		            </div>
		
		            <div class="form-group">
		                <label for="city"><b> City </b></label>
		                <input id="city" class="form-control" type="text" name="city" required>
		                <div class="valid-feedback">Valid.</div>
		    			<div class="invalid-feedback">Please enter city.</div>
		            </div>
		
		            <div class="form-group">
		                <label for="state"><b> State </b></label>
		                <input id="state" class="form-control" type="text" name="state" required>
		                <div class="valid-feedback">Valid.</div>
		    			<div class="invalid-feedback">Please enter state.</div>
		            </div>
		
		            <div class="form-group">
		                <label for="email"><b> E-Mail </b></label>
		                <input id="email" class="form-control" type="email" name="email" required>
		                <div class="valid-feedback">Valid.</div>
		    			<div class="invalid-feedback">Please enter email.</div>
		            </div>
		
		            <div class="form-group">
		                <label for="qualification"><b> Qualification </b></label>
		                <input id="qualification" class="form-control" type="text" name="qualification" required>
		                <div class="valid-feedback">Valid.</div>
		    			<div class="invalid-feedback">Please enter qualification.</div>
		            </div>
		
		            <div class="form-group">
		                <label for="stream"><b> Stream </b></label>
		                <input id="stream" class="form-control" type="text" name="stream" required>
		                <div class="valid-feedback">Valid.</div>
		    			<div class="invalid-feedback">Please enter stream.</div>
		            </div>
		            <div class="button submit">
		                <input class="btn btn-outline-success" type="submit" name="submit" value="Insert">
		            </div>
        		</form>
           	</div>
         </div>
     </div>
</body>
</html>