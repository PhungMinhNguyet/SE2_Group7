<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.*" %>
<%@ page import="com.google.gson.Gson"%>
<%@ page import="com.google.gson.JsonObject"%>
<%@ page import="com.models.Country" %>
<%
Gson gsonObj = new Gson();
Map<Object,Object> map = null;
int active = 0;
int recovered = 0;
int deaths = 0;
int cases = 0;
int percentActive=0;
int percentRecovered=0;
int percentDeaths=0;
ArrayList<Country> infoCountry= (ArrayList<Country>) request.getAttribute("listInfoCountry");
for(Country c : infoCountry){
	active += c.getActive();
	recovered += c.getRecovered();
	deaths += c.getDeaths();
	cases += c.getCases();
}
percentActive += (active *100)/cases;
percentRecovered += (recovered*100)/cases;
percentDeaths += (deaths*100)/cases;
List<Map<Object,Object>> list = new ArrayList<Map<Object,Object>>();
 
map = new HashMap<Object,Object>(); map.put("label", "Active"); map.put("y", percentActive); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "Recovered"); map.put("y", percentRecovered); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "Deaths"); map.put("y", percentDeaths); list.add(map); 

String dataPoints = gsonObj.toJson(list);
%>
<!DOCTYPE html>
<html>
<head>
<style>
#chartContainer{
text-align: center;
}
</style>
<meta charset="ISO-8859-1">
<script type="text/javascript">
window.onload = function() { 
 
var chart = new CanvasJS.Chart("chartContainer", {
	theme: "light2", // "light1", "dark1", "dark2"
	exportEnabled: true,
	animationEnabled: true,
	title: {
		text: "Typical Day"
	},
	data: [{
		type: "pie",
		toolTipContent: "<b>{label}</b>: {y}%",
		indexLabelFontSize: 16,
		indexLabel: "{label} - {y}%",
		dataPoints: <%out.print(dataPoints);%>
	}]
});
chart.render();
 
}
</script>
<title>Corona Virus Tracker</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css">

</head>
<body>
	<jsp:include page="nav_bar.jsp"></jsp:include><br>
	<div class="row">
		<div class="container">
			<h3 class="text-center">INFORMATION</h3>
			<table class="table table-bordered" id="infoCountry">
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
					<c:forEach var="listInfoCountry" items="${listInfoCountry}">
						<tr>
							<td class="filterable-cell"><a
								href="info?countryId=<c:out value='${listInfoCountry.countryId}' />"><c:out
										value=" ${listInfoCountry.countryName}" /></a></td>
							<td class="filterable-cell"><c:out
									value=" ${listInfoCountry.cases}" /></td>
							<td class="filterable-cell"><c:out
									value=" ${listInfoCountry.active}" /></td>
							<td class="filterable-cell"><c:out
									value=" ${listInfoCountry.recovered}" /></td>
							<td class="filterable-cell"><c:out
									value=" ${listInfoCountry.deaths}" /></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
				<div id="chartContainer" style="height: 370px; width: 100%; "></div>
		</div>
	</div>

<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
</body>

</html>
