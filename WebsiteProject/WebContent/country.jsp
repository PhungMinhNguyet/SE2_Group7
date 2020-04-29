<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<style>
#global{
padding: 15px;}
</style>
<meta charset="ISO-8859-1">
<title>Corona Virus Tracker</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css">

</head>
<body>
	<jsp:include page="nav_bar.jsp"></jsp:include><br>

	<div class="row">
		<div class="container">
			<div id = "header">
			<h1 class="text-center"><img id="global" alt="This is a show" src="https://whstrojan.com/wp-content/uploads/2019/05/ModernXP-73-Globe-icon.png" style="width: 150px">WORLD</h1>
			</div>
			<table class="table table-bordered" id="country">
				<thead>
					<tr>
						<th>Country Name</th>
						<th>Cases</th>
						<th>Active</th>
						<th>Recovered</th>
						<th>Deaths</th>
					</tr>
				</thead>
				<tbody style="height: 10px !important; overflow: scroll;">
					<c:forEach var="listCountry" items="${listCountry}">
						<tr>
							<td class="filterable-cell"><a
								href="info?countryId=<c:out value='${listCountry.countryId}' />"><c:out
										value=" ${listCountry.countryName}" /></a></td>
							<td class="filterable-cell"><c:out
									value=" ${listCountry.cases}" /></td>
							<td class="filterable-cell"><c:out
									value=" ${listCountry.active}" /></td>
							<td class="filterable-cell"><c:out
									value=" ${listCountry.recovered}" /></td>
							<td class="filterable-cell"><c:out
									value=" ${listCountry.deaths}" /></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include><br>
</body>

</html>
