package com.servlets;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

import com.models.Continent;
import com.service.ContinentService;

@WebServlet("/ContinentServlet")
public class ContinentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static ContinentService continentService;

	public void init() {
		continentService = new ContinentService();
	}
	
	public ContinentServlet() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			call_me();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
	
	public static void call_me() throws Exception {
		insertData(0, 6);

	}
	public static void insertData(int position, int length) throws Exception{
		String url = "https://corona.lmao.ninja/v2/continents";
		URL obj = new URL(url);
		HttpURLConnection con = (HttpURLConnection) obj.openConnection();
		con.addRequestProperty("User-Agent", "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.0)");
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
			String continentName = (String) res.get("continent");
			int cases = (int) res.get("cases");
			int todayCases = (int) res.get("todayCases");
			int deaths = (int) res.get("deaths");
			int recovered =  (int) res.get("recovered");
			int todayRecovered =  (int) res.get("todayRecovered");
			int active = (int) res.get("active");
			int critical = (int) res.get("critical");
			Continent c = new Continent(continentName, cases, todayCases, deaths, recovered, todayRecovered, active, critical);
			if(continentService.selectContinent(c.getContinentName()) == null) {
				continentService.insertContinent(c);
			} else {
				continentService.updateContinent(c);
			}
		
		}
	}

}
