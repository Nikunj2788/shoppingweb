<%@page import="com.bean.customer"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<%
	customer c = (customer)request.getAttribute("abc");
%>
<%
    	for(customer c:list){
    %>
<body>

	<center>
		<h1>Registration</h1>
		<form action="customercontroller" method="post">

			<table>
			<tr>
					<th>Id :</th>
					<td><input type="text" name="id" value=<%=c.getId() %>></td>
				</tr>
				<tr>
					<th>Name :</th>
					<td><input type="text" name="name" value=<%=c.getName() %>></td>
				</tr>

				<tr>
					<th>Phone No :</th>
					<td><input type="text" name="phoneno" value=<%=c.getPhoneno() %>></td>
				</tr>

				<tr>
					<th>Contact :</th>
					<td><input type="text" name="emailid" value=<%=c.getEmailid() %>></td>
				</tr>

				<tr>
					<th>Email :</th>
					<td><input type="email" name="password" value=<%=c.getPassword() %>></td>
				</tr>

				<tr>
					<th>Password :</th>
					<td><input type="password" name="conform" value=<%=c.getConform() %>></td>
				</tr>
				<tr>
					<td><input type="submit" name="action" value="edit">
					</td>
				</tr>
			</table>

		</form>
	</center>
</body>
</html>>