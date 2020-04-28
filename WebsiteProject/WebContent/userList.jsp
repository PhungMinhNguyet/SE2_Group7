<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Admin</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
</head>
<body>
	<header>
		<nav class="navbar navbar-inverse">
			<div class="container-fluid">
				<ul class="nav navbar-nav">
					<li><a href="<%=request.getContextPath()%>/login">Main</a></li>
				</ul>
				<ul class="nav navbar-nav">
					<li><a href="<%=request.getContextPath()%>/new"> Add User
					</a></li>
				</ul>
				
				<ul class="nav navbar-nav">
					<li><a href="<%=request.getContextPath()%>/logout">Log out</a></li>
				</ul>				

			</div>
		</nav>
	</header>

	<br>

	<div class="row">
		<div class="container">
			<h3 class="text-center">USER LIST</h3>
			<table class="table table-bordered">
				<thead>
					<tr>
						<th>ID</th>
						<th>Full Name</th>
						<th>Email</th>
						<th>Password</th>
						<th>Options</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="user" items="${listUser}">

						<tr>
							<td><c:out value="${user.id}" /></td>
							<td><c:out value="${user.fullname}" /></td>
							<td><c:out value="${user.email}" /></td>
							<td><c:out value="${user.password}" /></td>
							<td><a href="edit?id=<c:out value='${user.id}' />">Edit</a>
								&nbsp;&nbsp;&nbsp;&nbsp; <a
								href="delete?id=<c:out value='${user.id}' />">Delete</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>

