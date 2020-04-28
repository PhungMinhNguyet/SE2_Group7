<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<style>
#header {
	display: inline;
}
</style>
<meta charset="ISO-8859-1">
<title>Corona Virus Tracker</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css">

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
					<li><a href="<%=request.getContextPath()%>/addCity">Add City</a></li>
				</ul>
				<ul class="nav navbar-nav">
					<li><a href="<%=request.getContextPath()%>/logout">Log out</a></li>
				</ul>

			</div>
		</nav>

	</header><br>

	<div class="row">
		<div class="container">
			<div id="header">
				<h1 class="text-center">
					<img id="banhmi" alt="This is a show"
						src="https://thumbs.dreamstime.com/b/banh-mi-isolated-white-background-vietnamese-style-sandwich-hand-drawn-asian-food-vietnamese-street-food-great-icon-menu-design-179845742.jpg"
						style="width: 150px">VIETNAM
				</h1>
			</div>
			<table class="table table-bordered" id="vietnam">
				<thead>
					<tr>
						<th>City Name</th>
						<th>Cases</th>
						<th>Being Treated</th>
						<th>Recovered</th>
						<th>Deaths</th>
						<th>Options</th>
					</tr>
				</thead>
				<tbody style="height: 10px !important; overflow: scroll;">
					<c:forEach var="listCity" items="${listCity}">
						<tr>
							<td class="filterable-cell"><c:out
									value=" ${listCity.cityName}" /></td>
							<td class="filterable-cell"><c:out
									value=" ${listCity.cityCases}" /></td>
							<td class="filterable-cell"><c:out
									value=" ${listCity.beingTreated}" /></td>
							<td class="filterable-cell"><c:out
									value=" ${listCity.cityRecovered}" /></td>
							<td class="filterable-cell"><c:out
									value=" ${listCity.cityDeath}" /></td>
							<td><a
								href="editCity?id=<c:out value='${listCity.cityId}' />">Edit</a>
								&nbsp;&nbsp;&nbsp;&nbsp; <a
								href="deleteCity?id=<c:out value='${listCity.cityId}' />">Delete</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</body>

</html>
