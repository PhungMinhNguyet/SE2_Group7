<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<style>
.lout{
	
	color:grey;
    padding:  15px;
	}
	</style>
</head>
<body>
	<header>
		<nav class="navbar navbar-inverse">
			<div class="container-fluid">
				<ul class="nav navbar-nav">
					<li><a href="<%=request.getContextPath()%>/listuser">User</a></li>
					</ul>
					<ul class="nav navbar-nav">
					<li><a href="<%=request.getContextPath()%>/listNew">News</a></li>
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
</body>
</html>
