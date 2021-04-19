<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.servlet.LoginServlet"%>
<%
	LoginServlet.isLoggedIn = false;
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>welcome</title>
</head>
<body>

	<div ALIGN="center" style="background-color:powderblue;">
		<h1>We are FlyAway</h1>
		<h2>Welcome to our booking portal</h2>
		<div ALIGN="right">
		<h3>Admin Login</h3>
		<form action="LoginServlet" method="post"
			class="form-container">
			
			<div class="form-group mb-2">
				<label for="inputEmail" class="sr-only">Email address</label> <input
					type="email" name="emailEntered" class="form-control"
					id="inputEmail" aria-describedby="emailHelp"
					placeholder="Enter email"> <br> <small id="emailHelp"
					class="form-text text-muted">&nbsp;&nbsp;Email :
					admin@flyaway.com</small></div>
											
			<div class="form-group mx-sm-3 mb-2">
				<label for="inputPassword" class="sr-only">Password</label> 
				<input type="password" name="passwordEntered" class="form-control"
					id="inputPassword" placeholder="Password"> <br> 
					<small id="passwordHelp" class="form-text text-muted">&nbsp;&nbsp;
					Current Password :&nbsp;<%=LoginServlet.password%></small>
			</div>
			
			<button type="submit" class="btn btn-success btn-block"
				value="Submit">Login</button>
		</form>
	</div></div>
	<br>
	<br>

	<div ALIGN="left" style="background-color:orange;">
		<h1>Make your booking here...</h1>
		<form action="Search_Servlet" method="post">
			<label for="date">Date:</label> <input type="date" name="date">
			<label for="source">Source</label>
			 
			<select class="form-control" id="source" name="source">
				<option value="United Kingdom">United Kingdom</option>
				<option value="Bulgaria">Bulgaria</option>
				<option value="India">India</option>
				<option value="Italy">Italy</option>
			</select> 
			
			<label for="destination">Destination</label> 
			<select class="form-control" name="destination">
				<option value="United Kingdom">United Kingdom</option>
				<option value="Bulgaria">Bulgaria</option>
				<option value="India">India</option>
				<option value="Italy">Italy</option>
			</select> 
			
			<label for="persons">No of Persons</label> 
			<select class="form-control" name="persons">
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				<option value="4">4</option>
				<option value="5">5</option>
			</select><br> <br> 
			
			<input type="submit" class="btn btn-success" value="Search">
		</form>
	</div>	
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<div class="footer" align="center" style="background-color:green;"><br><br><br>Copyrights by George Futekov<br><br><br></div>
	
</body>
</html>