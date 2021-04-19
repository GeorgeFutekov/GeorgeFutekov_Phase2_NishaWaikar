<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@page import="com.servlet.LoginServlet"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Dashboard</title>
</head>
<body>
	<%
		if (LoginServlet.isLoggedIn) {
	%>
	<h2 align="center">
		<b>Admin Dashboard</b>
	</h2>
	<p align="center">
		<span><strong>You are LoggedIn as : <%=LoginServlet.email%>.
				Your Password is : <%=LoginServlet.password%></strong></span>
	</p>
	<br>
	<br>
	<center>
	<form method="post"
		action="${pageContext.request.contextPath}/changepassword.jsp">
		<button type="submit" class="btn btn-success mb-2 btn-block">Change
			Password</button>
	</form>
	&ensp;
	<br>
	<br>

	<form method="post" action="welcome.jsp">
		<button type="submit" class="btn mb-2 btn-danger btn-block">Logout</button>
	</form></center><br>
	<center>
		<table border="1">
			<tr
				style="background-color: yellow; color: blue; font-weight: bold;">
				<td>Flight_ID</td>
				<td>Name</td>
				<td>Source</td>
				<td>Destination</td>
				<td>Day</td>
				<td>Price</td>

			</tr>
			<%
				Connection conn = null;
					Statement st = null;
					ResultSet rs = null;

					try {
						Class.forName("com.mysql.jdbc.Driver");
						conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/flyawaydb", "root", "Alexander2011");
						st = conn.createStatement();
						String qry = "select * from flights";
						rs = st.executeQuery(qry);
						while (rs.next()) {
			%>
			<tr>
				<td><%=rs.getString(1)%></td>
				<td><%=rs.getString(2)%></td>
				<td><%=rs.getString(3)%></td>
				<td><%=rs.getString(4)%></td>
				<td><%=rs.getString(5)%></td>
				<td><%=rs.getString(6)%></td>
			</tr>
			<%
				}

					} catch (Exception e) {
						e.printStackTrace();
					}
				} else {
					out.print("Login first please");
				}
			%>
		</table>
	</center>
	<br>
	<br>
	<div class="footer" align="center">Copyrights by George Futekov</div>
</body>
</body>
</html>