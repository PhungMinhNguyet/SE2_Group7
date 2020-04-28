package com.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import org.json.JSONObject;

import com.models.Country;
import com.service.CountryService;

import org.json.JSONArray;

@WebServlet("/CountryServlet")
public class CountryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static CountryService countryService;

	public void init() {
		countryService = new CountryService();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			call_me();
		} catch (Exception e) {
			System.out.println(e);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

	public static void call_me() throws Exception {
		insertData(0, 6);
		insertData(7, 13);
		insertData(14, 20);
		insertData(21, 220);
	}
	
	public static void insertData(int position, int length) throws Exception{
		String url = "https://coronavirus-19-api.herokuapp.com/countries";
		URL obj = new URL(url);

		HttpURLConnection con = (HttpURLConnection) obj.openConnection();
		BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
		String inputLine;
		StringBuilder response = new StringBuilder();
		while ((inputLine = in.readLine()) != null) {
			response.append(inputLine);
		}
		in.close();
		JSONArray myResponse = new JSONArray(response.toString());
		for (int i = position; i < length; i++) {
			JSONObject res = new JSONObject(myResponse.get(i).toString());
			String countryName = (String) res.get("country");
			int cases = (int) res.get("cases");
			int todayCases = (int) res.get("todayCases");
			int deaths = (int) res.get("deaths");
			int todayDeaths = (int) res.get("todayDeaths");
			int recovered =  (int) res.get("recovered");
			int active = (int) res.get("active");
			int critical = (int) res.get("critical");
			double casesPerOneMillion = (double) res.getDouble("casesPerOneMillion");
			double deathsPerOneMillion = (double) res.getDouble("deathsPerOneMillion");
			double totalTests = (double) res.getDouble("totalTests");
			double testsPerOneMillion = (double) res.getDouble("testsPerOneMillion");
			Country c = new Country(countryName, cases, todayCases, deaths, todayDeaths, recovered, active, critical,
					casesPerOneMillion, deathsPerOneMillion, totalTests, testsPerOneMillion);
			
			if(countryService.selectCountry(c.getCountryName()) == null) {
				countryService.insertCountry(c);
			} else {
				countryService.updateCountry(c);
			}
		}
	}
}
