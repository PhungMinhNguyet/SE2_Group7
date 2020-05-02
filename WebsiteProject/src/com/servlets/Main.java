package com.servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.ws.rs.client.Client;
import javax.ws.rs.client.ClientBuilder;
import javax.ws.rs.client.WebTarget;
import javax.ws.rs.core.MediaType;

import org.glassfish.jersey.client.ClientConfig;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import com.models.Country;
import com.models.News;
import com.models.VietNam;
import com.service.NewService;

@WebServlet("/")
public class Main extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static String url = "http://localhost:8080/WebsiteProject/rest/countries";
	private static String vnUrl = "http://localhost:8080/WebsiteProject/rest/vn";
	private NewService news;

	public void init() {
		news = new NewService();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getServletPath();
		try {
			switch (action) {
			case "/list":
				viewAllCountry(request, response);
				break;
			case "/info":
				viewInfo(request, response);
				break;
			case "/vnInfo":
				viewVNInfo(request, response);
				break;
			default:
				viewHomePage(request, response);
				break;
			}
		} catch (Exception e) {

		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

	public void viewHomePage(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<Country> list = new ArrayList<>();
		ClientConfig config = new ClientConfig();
		Client client = ClientBuilder.newClient(config);
		WebTarget target = client.target(url);
		String res = target.request().accept(MediaType.APPLICATION_JSON).get(String.class);
		try {
			JSONArray myResponse = new JSONArray(res.toString());
			for (int i = 1; i < 11; i++) {
				JSONObject json = new JSONObject(myResponse.get(i).toString());
				int countryId = (int) json.get("countryId");
				String countryName = (String) json.get("countryName");
				int cases = (int) json.get("cases");
				int recovered = (int) json.get("recovered");
				int death = (int) json.get("deaths");
				int active = (int) json.get("active");
				int todayCases = (int) json.get("todayCases");
				int todayDeaths = (int) json.get("todayDeaths");
				Country c = new Country(countryId, countryName, cases, death, recovered, active, todayCases, todayDeaths);
				list.add(c);
			}
			JSONObject json1 = new JSONObject(myResponse.get(0).toString());
			List<Country> lstWorld = new ArrayList<>();
			int countryId = (int) json1.get("countryId");
			String countryName = (String) json1.get("countryName");
			int cases = (int) json1.get("cases");
			int recovered = (int) json1.get("recovered");
			int death = (int) json1.get("deaths");
			int active = (int) json1.get("active");
			int todayCases = (int) json1.get("todayCases");
			int todayDeaths = (int) json1.get("todayDeaths");
			Country c1 = new Country(countryId, countryName, cases, death, recovered, active, todayCases, todayDeaths);
			lstWorld.add(c1);
			List<Country> lstContinent = new ArrayList<>();
			for (int i = 0; i < 6; i++) {
				JSONObject json = new JSONObject(myResponse.get(i).toString());
				Country c = new Country(countryId, countryName, cases, death, recovered, active, todayCases, todayDeaths);
				lstContinent.add(c);
			}
			List<News> lstNews = news.getAllNews();
			request.setAttribute("lstNews", lstNews);
			request.setAttribute("lstContinent", lstContinent);
			request.setAttribute("lstWorld", lstWorld);
			request.setAttribute("listCountry", list);
			RequestDispatcher dispatcher = request.getRequestDispatcher("main.jsp");
			dispatcher.forward(request, response);
		} catch (JSONException e) {
			e.printStackTrace();
		}
	}

	public void viewAllCountry(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<Country> listCountry = new ArrayList<>();
		ClientConfig config = new ClientConfig();
		Client client = ClientBuilder.newClient(config);
		WebTarget target = client.target(url);
		String res = target.request().accept(MediaType.APPLICATION_JSON).get(String.class);
		try {
			JSONArray myResponse = new JSONArray(res.toString());
			for (int i = 1; i < 210; i++) {
				JSONObject json = new JSONObject(myResponse.get(i).toString());
				int countryId = (int) json.get("countryId");
				String countryName = (String) json.get("countryName");
				int cases = (int) json.get("cases");
				int recovered = (int) json.get("recovered");
				int death = (int) json.get("deaths");
				int active = (int) json.get("active");
				int todayCases = (int) json.get("todayCases");
				int todayDeaths = (int) json.get("todayDeaths");
				Country c = new Country(countryId, countryName, cases, death, recovered, active, todayCases, todayDeaths);
				listCountry.add(c);
			}
			request.setAttribute("listCountry", listCountry);
			RequestDispatcher dispatcher = request.getRequestDispatcher("country.jsp");
			dispatcher.forward(request, response);
		} catch (JSONException e) {
			e.printStackTrace();
		}
	}

	public void viewInfo(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<Country> listInfoCountry = new ArrayList<>();
		ClientConfig config = new ClientConfig();
		Client client = ClientBuilder.newClient(config);
		WebTarget target = client.target(url);
		String res = target.request().accept(MediaType.APPLICATION_JSON).get(String.class);
		int id = Integer.parseInt(request.getParameter("countryId"));
		try {
			JSONArray myResponse = new JSONArray(res.toString());
			for (int i = 0; i < 210; i++) {
				JSONObject json = new JSONObject(myResponse.get(i).toString());
				int countryId = (int) json.get("countryId");
				if (countryId == id) {
					countryId = id;
					String countryName = (String) json.get("countryName");
					int cases = (int) json.get("cases");
					int recovered = (int) json.get("recovered");
					int death = (int) json.get("deaths");
					int active = (int) json.get("active");
					int todayCases = (int) json.get("todayCases");
					int todayDeaths = (int) json.get("todayDeaths");
					Country c = new Country(countryId, countryName, cases, death, recovered, active, todayCases, todayDeaths);
					listInfoCountry.add(c);
					break;
				}
			}
			request.setAttribute("listInfoCountry", listInfoCountry);
			RequestDispatcher dispatcher = request.getRequestDispatcher("info_country.jsp");
			dispatcher.forward(request, response);
		} catch (JSONException e) {
			e.printStackTrace();
		}
	}

	public void viewVNInfo(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<VietNam> listCity = new ArrayList<>();
		ClientConfig config = new ClientConfig();
		Client client = ClientBuilder.newClient(config);
		WebTarget target = client.target(vnUrl);
		String res = target.request().accept(MediaType.APPLICATION_JSON).get(String.class);
		try {
			JSONArray myResponse = new JSONArray(res.toString());
			for(int i = 0; i < myResponse.length(); i++) {
				JSONObject json = new JSONObject(myResponse.get(i).toString());
				int cityId = (int) json.get("cityId");
				String cityName = (String) json.get("cityName");
				int beingTreated = (int) json.get("beingTreated");
				int cityCases = (int) json.get("cityCases");
				int cityRecovered = (int) json.get("cityRecovered");
				int cityDeaths = (int) json.get("cityDeath");
				VietNam vn1 = new VietNam(cityId, cityName, cityCases, beingTreated, cityRecovered, cityDeaths);
				listCity.add(vn1);
			}
			request.setAttribute("listCity", listCity);
			RequestDispatcher dispatcher = request.getRequestDispatcher("vietnam_page.jsp");
			dispatcher.forward(request, response);
		} catch (JSONException e) {
			e.printStackTrace();
		}
	}
}
