package com.service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.models.Continent;
import com.models.Country;

public class ContinentService {
	Connection conn = null;

	public ContinentService() {
		String DB_URL = "jdbc:mysql://localhost:3306/website";
		String PASSWORD = "30bto7caudien";
		String USER_NAME = "root";
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(DB_URL, USER_NAME, PASSWORD);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public List<Continent> getAllContinent() {
		List<Continent> list = new ArrayList<>();
		try {
			String sql = "select * from continent";
			PreparedStatement pr = conn.prepareStatement(sql);
			ResultSet rs = pr.executeQuery();
			while (rs.next()) {
				int continentId = rs.getInt("continentId");
				String continentName = rs.getString("continentName");
				int continentCases = rs.getInt("cases");
				int continentTodayCases = rs.getInt("todayCases");
				int continentDeaths = rs.getInt("deaths");
				int continentRecovered = rs.getInt("recovered");
				int continentTodayRecovered = rs.getInt("todayRecovered");
				int continentActive = rs.getInt("active");
				int continentCritical = rs.getInt("critical");
				list.add(new Continent(continentId, continentName, continentCases, continentTodayCases, continentDeaths,
						continentRecovered, continentTodayRecovered, continentActive, continentCritical));
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return list;
	}

	public Continent selectContinent(int continentId) {
		Continent c = null;
		try {
			String sql = "SELECT * FROM continent WHERE continentId = ?";
			PreparedStatement pr = conn.prepareStatement(sql);
			pr.setInt(1, continentId);
			ResultSet rs = pr.executeQuery();
			while (rs.next()) {
				continentId = rs.getInt("continentId");
				String continentName = rs.getString("continentName");
				int continentCases = rs.getInt("cases");
				int continentTodayCases = rs.getInt("todayCases");
				int continentDeaths = rs.getInt("deaths");
				int continentRecovered = rs.getInt("recovered");
				int continentTodayRecovered = rs.getInt("todayRecovered");
				int continentActive = rs.getInt("active");
				int continentCritical = rs.getInt("critical");
				c = new Continent(continentId, continentName, continentCases, continentTodayCases, continentDeaths,
						continentRecovered, continentTodayRecovered, continentActive, continentCritical);

			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return c;
	}
	
	public Continent selectContinent(String continentName) {
		Continent c = null;
		try {
			String sql = "SELECT * FROM continent WHERE continentName = ?";
			PreparedStatement pr = conn.prepareStatement(sql);
			pr.setString(1, continentName);
			ResultSet rs = pr.executeQuery();
			while (rs.next()) {
				int continentId = rs.getInt("continentId");
				continentName = rs.getString("continentName");
				int continentCases = rs.getInt("cases");
				int continentTodayCases = rs.getInt("todayCases");
				int continentDeaths = rs.getInt("deaths");
				int continentRecovered = rs.getInt("recovered");
				int continentTodayRecovered = rs.getInt("todayRecovered");
				int continentActive = rs.getInt("active");
				int continentCritical = rs.getInt("critical");
				c = new Continent(continentId, continentName, continentCases, continentTodayCases, continentDeaths,
						continentRecovered, continentTodayRecovered, continentActive, continentCritical);

			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return c;
	}

	public void insertContinent(Continent c) throws SQLException {
		try {
			String sql = " INSERT INTO continent (continentName, cases, todayCases, deaths, recovered, todayRecovered, active, critical)"
					+ " VALUES (?,?,?,?,?,?,?,?);";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, c.getContinentName());
			ps.setInt(2, c.getContinentCases());
			ps.setInt(3, c.getContinentTodayCases());
			ps.setInt(4, c.getContinentDeaths());
			ps.setInt(5, c.getContinentRecovered());
			ps.setInt(6, c.getContinentTodayRecovered());
			ps.setInt(7, c.getContinentActive());
			ps.setInt(8, c.getContinentCritical());
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public void updateContinent(Continent c) throws SQLException {
		try {
			String sql = "UPDATE continent SET cases =?, todayCases =?, deaths =?, recovered =?, todayRecovered =?, active =?, critical =? WHERE continentName = ?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, c.getContinentCases());
			ps.setInt(2, c.getContinentTodayCases());
			ps.setInt(3, c.getContinentDeaths());
			ps.setInt(4, c.getContinentRecovered());
			ps.setInt(5, c.getContinentTodayRecovered());
			ps.setInt(6, c.getContinentActive());
			ps.setInt(7, c.getContinentCritical());
			ps.setString(8, c.getContinentName());
			ps.executeUpdate();
		} catch (SQLException e) {
			System.out.println(e);
		}
	}
}
