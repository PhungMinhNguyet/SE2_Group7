<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.*"%>
<%@ page import="com.google.gson.Gson"%>
<%@ page import="com.google.gson.JsonObject"%>
<%@ page import="com.models.Country"%>
<%
	Gson gsonObj = new Gson();
Map<Object, Object> map = null;
int active = 0;
int recovered = 0;
int deaths = 0;
int cases = 0;
int percentActive = 0;
int percentRecovered = 0;
int percentDeaths = 0;
ArrayList<Country> infoCountry = (ArrayList<Country>) request.getAttribute("listInfoCountry");
for (Country c : infoCountry) {
	active += c.getActive();
	recovered += c.getRecovered();
	deaths += c.getDeaths();
	cases += c.getCases();
}
percentActive += (active * 100) / cases;
percentRecovered += (recovered * 100) / cases;
percentDeaths += (deaths * 100) / cases;
List<Map<Object, Object>> list = new ArrayList<Map<Object, Object>>();

map = new HashMap<Object, Object>();
map.put("label", "Active");
map.put("y", percentActive);
list.add(map);
map = new HashMap<Object, Object>();
map.put("label", "Recovered");
map.put("y", percentRecovered);
list.add(map);
map = new HashMap<Object, Object>();
map.put("label", "Deaths");
map.put("y", percentDeaths);
list.add(map);

String dataPoints = gsonObj.toJson(list);
%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<script type="text/javascript">
	window.onload = function() {

		var chart = new CanvasJS.Chart("chartContainer", {
			theme : "light2", // "light1", "dark1", "dark2"
			exportEnabled : true,
			animationEnabled : true,
			title : {
				text : "Confirmed Cases"
			},
			data : [ {
				type : "pie",
				toolTipContent : "<b>{label}</b>: {y}%",
				indexLabelFontSize : 16,
				indexLabel : "{label} - {y}%",
				dataPoints :
<%out.print(dataPoints);%>
	} ]
		});
		chart.render();

	}
</script>
<!-- <script type="text/javascript">
window.onload = function() { 
 
var dataPoints = [];
 
var chart = new CanvasJS.Chart("chartContainer1", {
	animationEnabled: true,
	theme: "light2",
 	zoomEnabled: true,
	title: {
		text: "Total Biomass Energy Consumption"
	},
	axisY: {
		title: "Biomass Consumption (in Trillion BTU)",
		titleFontSize: 24,
		includeZero: false
	},
	data: [{
		type: "line",
		yValueFormatString: "#,##0.0## Trillion BTU",
		xValueType: "dateTime",
		dataPoints: dataPoints
	}]
});
 
function addData(data) {
	for (var i = 0; i < data.length; i++) {
		dataPoints.push({
			x: data[i].date,
			y: data[i].value
		});
	}
	chart.render();
}
 
$.getJSON("https://pomber.github.io/covid19/timeseries.json", addData);
 
} -->
</script>
<title>Corona Virus Tracker</title>
<style>
#global {
	margin-right: 10px;
	margin-top: 10px;
}

.p-3 {
	padding: 0rem;
}

.navbar-light .navbar-brand {
	padding: 15px 0 15px;
	FONT-VARIANT: JIS04;
}

.text-center {
	text-align: center !important;
	margin-top: 20px;
	margin-bottom: 10px;
}

#tableHeader {
	font-size: 14px;
}

#tableBody {
	font-size: 14px;
}
</style>
<meta charset="ISO-8859-1">
<title>Corona Virus Tracker</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css">


</head>
<body>
	<jsp:include page="nav_bar.jsp"></jsp:include><br>
	<div class="main_header">
		<div class="container">
			<h3 class="text-center">INFORMATION</h3>
			<table class="table table-bordered" id="infoCountry">
				<thead>
					<tr>
						<th id="tableHeader">Country Name</th>
						<th id="tableHeader">Cases</th>
						<th id="tableHeader">Active</th>
						<th id="tableHeader">Recovered</th>
						<th id="tableHeader">Deaths</th>
						<th id="tableHeader">Today's Cases</th>
						<th id="tableHeader">Today's Deaths</th>
					</tr>
				</thead>
				<tbody style="height: 10px !important; overflow: scroll;">
					<c:forEach var="listInfoCountry" items="${listInfoCountry}">
						<tr>
							<td id="tableBody" class="filterable-cell"><a
								href="info?countryId=<c:out value='${listInfoCountry.countryId}' />"><c:out
										value=" ${listInfoCountry.countryName}" /></a></td>
							<td id="tableBody" class="filterable-cell"><c:out
									value=" ${listInfoCountry.cases}" /></td>
							<td id="tableBody" class="filterable-cell"><c:out
									value=" ${listInfoCountry.active}" /></td>
							<td id="tableBody" class="filterable-cell"><c:out
									value=" ${listInfoCountry.recovered}" /></td>
							<td id="tableBody" class="filterable-cell"><c:out
									value=" ${listInfoCountry.deaths}" /></td>
							<td id="tableBody" class="filterable-cell"><c:out
									value=" ${listInfoCountry.todayCases}" /></td>
							<td id="tableBody" class="filterable-cell"><c:out
									value=" ${listInfoCountry.todayDeaths}" /></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<div id="chartContainer" style="height: 370px; width: 100%;"></div> 
<!-- 			<div id="chartContainer1" style="height: 370px; width: 100%;"></div>
			<script src="https://canvasjs.com/assets/script/jquery-1.11.1.min.js"></script>
			<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script> -->
		</div>
	</div>

<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
	<jsp:include page="footer.jsp"></jsp:include><br>
</body>

</html>
