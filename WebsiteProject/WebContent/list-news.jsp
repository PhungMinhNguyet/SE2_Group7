<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>News Management</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
</head>
<body>
	<header>
		<nav class="navbar navbar-inverse">
			<div class="container-fluid">
				<ul class="nav navbar-nav">
					<li><a href="<%=request.getContextPath()%>/">Homepage</a></li>
				</ul>
				<ul class="nav navbar-nav">
					<li><a href="<%=request.getContextPath()%>/insertNew"> Add
							New </a></li>
				</ul>
				<ul class="nav navbar-nav">
					<li><a href="<%=request.getContextPath()%>/listuser">User</a></li>
				</ul>
				<ul class="nav navbar-nav">
					<li><a href="<%=request.getContextPath()%>/vietnam">VietNam</a></li>
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
			<h3 class="text-center">News LIST</h3>
			<table class="table table-bordered">
				<thead>
					<tr>
						<th>ID</th>
						<th>Title</th>
						<th>Content</th>
						<th>Option</th>

					</tr>
				</thead>
				<tbody>
					<c:forEach var="anew" items="${listNews}">
						<tr>
							<td><c:out value="${anew.id}" /></td>
							<td><c:out value="${anew.title}" /></td>
							<td><c:out value="${anew.content}" /></td>

							<td><a href="editNews?id=<c:out value='${anew.id}' />">Edit</a>
								&nbsp;&nbsp;&nbsp;&nbsp; <a
								href="deleteNews?id=<c:out value='${anew.id}' />">Delete</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>

