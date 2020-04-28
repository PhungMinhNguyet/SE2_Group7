<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>Corona Virus Tracker</title>
<style>
.row {
	
}

.container {
	width: 700px;
}

#country {
	margin-left: 50px;
	width: 100px;
	overflow: scroll;
}

#continent {
	margin-left: 50px;
	width: 200px;
}

#world {
	margin-left: 50px;
	width: 200px;
}

#live {
	margin-left: 50px;
	color: red;
}

#statistic {
	margin-left: 50px;
	color: red;
}

#list {
	margin-left: 50px;
}

#list:hover {
	color: red;
}

#contentNews {
	line-height: 200%;
}

#news {
	margin-top: -1000px;
	margin-left: 500px;
	display: list-item;
	width: 500px;
	margin-left: 500px;
}
</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css">

</head>
<body>
	<jsp:include page="nav_bar.jsp"></jsp:include><br>
	<div id="header">
		<h1 class="text-center">
			<img id="icon" alt="icon"
				src="https://imageog.flaticon.com/icons/png/512/2741/2741128.png?size=1200x630f&pad=10,10,10,10&ext=png&bg=FFFFFFFF"
				style="width: 200px">TrackCorona
		</h1>
	</div>
	<hr>
	<div class="row">
		<div class="container">
			<h2 id="live">Live</h2>

			<table class="table table-bordered" id="world">
				<thead>
					<tr>
						<th>Statistics</th>
						<th>Cases</th>
						<th>Active</th>
						<th>Recovered</th>
						<th>Deaths</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="lstWorld" items="${lstWorld}">
						<tr>
							<td><a
								href="info?countryId=<c:out value='${lstWorld.countryId}' />"><c:out
										value="${lstWorld.countryName}" /></a></td>
							<td><c:out value="${lstWorld.cases}" /></td>
							<td><c:out value="${lstWorld.active}" /></td>
							<td><c:out value="${lstWorld.recovered}" /></td>
							<td><c:out value="${lstWorld.deaths}" /></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>

			<h2 id="live">Continent</h2>

			<table class="table table-bordered" id="continent">
				<thead>
					<tr>
						<th>Statistics</th>
						<th>Cases</th>
						<th>Active</th>
						<th>Recovered</th>
						<th>Deaths</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="lstContinent" items="${lstContinent}">
						<tr>
							<td><a
								href="info?countryId=<c:out value='${lstContinent.countryId}' />"><c:out
										value="${lstContinent.countryName}" /></a></td>
							<td><c:out value="${lstContinent.cases}" /></td>
							<td><c:out value="${lstContinent.active}" /></td>
							<td><c:out value="${lstContinent.recovered}" /></td>
							<td><c:out value="${lstContinent.deaths}" /></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>

			<h2 id="statistic">Country's Statistics</h2>
			<table class="table table-striped" id="country">
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
					<c:forEach var="list" items="${listCountry}">
						<tr>
							<td class="filterable-cell"><a
								href="info?countryId=<c:out value='${list.countryId}' />"><c:out
										value=" ${list.countryName}" /></a></td>
							<td class="filterable-cell"><c:out value=" ${list.cases}" /></td>
							<td class="filterable-cell"><c:out value=" ${list.active}" /></td>
							<td class="filterable-cell"><c:out
									value=" ${list.recovered}" /></td>
							<td class="filterable-cell"><c:out value=" ${list.deaths}" /></td>
						</tr>
					</c:forEach>
				</tbody>

			</table>
			<a href="<%=request.getContextPath()%>/list" id="list">View Full
				List Here</a>
			<div id="news">
				<c:forEach var="lstNews" items="${lstNews}">
					<h3>
						<c:out value=" ${lstNews.title}" />
					</h3>
					<p id="contentNews">
						<c:out value=" ${lstNews.content}" />
					</p>
					<hr>
				</c:forEach>
			</div>
		</div>

	</div>




</body>

</html>
