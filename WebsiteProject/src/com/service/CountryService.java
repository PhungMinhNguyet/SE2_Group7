package com.service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import com.models.Country;

public class CountryService {
	Connection conn = null;

	public CountryService() {
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

	public List<Country> getAllCountry() {
		List<Country> list = new ArrayList<>();
		try {
			String sql = "select * from country";
			PreparedStatement pr = conn.prepareStatement(sql);
			ResultSet rs = pr.executeQuery();
			while (rs.next()) {
				int id = rs.getInt("countryId");
				String country = rs.getString("country");
				int cases = rs.getInt("cases");
				int todayCases = rs.getInt("todayCases");
				int deaths = rs.getInt("deaths");
				int todayDeaths = rs.getInt("todayDeaths");
				int recovered = rs.getInt("recovered");
				int active = rs.getInt("active");
				int critical = rs.getInt("critical");
				double casesPerOneMillion = rs.getDouble("casesPerOneMillion");
				double deathsPerOneMillion = rs.getDouble("deathsPerOneMillion");
				double totalTests = rs.getDouble("totalTests");
				double testsPerOneMillion = rs.getDouble("testsPerOneMillion");
				list.add(new Country(id, country, cases, todayCases, deaths, todayDeaths, recovered, active, critical,
						casesPerOneMillion, deathsPerOneMillion, totalTests, testsPerOneMillion));
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return list;
	}

	public Country selectCountry(int countryId) {
		Country c = null;
		try {
			String sql = "SELECT * FROM country WHERE countryId = ?";
			PreparedStatement pr = conn.prepareStatement(sql);
			pr.setInt(1, countryId);
			ResultSet rs = pr.executeQuery();
			while (rs.next()) {
				countryId = rs.getInt("countryId");
				String countryName = rs.getString("country");
				int cases = rs.getInt("cases");
				int todayCases = rs.getInt("todayCases");
				int deaths = rs.getInt("deaths");
				int todayDeaths = rs.getInt("todayDeaths");
				int recovered = rs.getInt("recovered");
				int active = rs.getInt("active");
				int critical = rs.getInt("critical");
				double casesPerOneMillion = rs.getDouble("casesPerOneMillion");
				double deathsPerOneMillion = rs.getDouble("deathsPerOneMillion");
				double totalTests = rs.getDouble("totalTests");
				double testsPerOneMillion = rs.getDouble("testsPerOneMillion");
				c = new Country(countryId, countryName, cases, todayCases, deaths, todayDeaths, recovered, active, critical,
						casesPerOneMillion, deathsPerOneMillion, totalTests, testsPerOneMillion);
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return c;
	}

	public void insertCountry(Country c) throws SQLException {
		try {
			String sql = " INSERT INTO country (country, cases, todayCases, deaths, todayDeaths, recovered, active, critical, casesPerOneMillion,deathsPerOneMillion, totalTests, testsPerOneMillion)"
					+ " VALUES (?,?,?,?,?,?,?,?,?,?,?,?);";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, c.getCountryName());
			ps.setInt(2, c.getCases());
			ps.setInt(3, c.getTodayCases());
			ps.setInt(4, c.getDeaths());
			ps.setInt(5, c.getTodayDeaths());
			ps.setInt(6, c.getRecovered());
			ps.setInt(7, c.getActive());
			ps.setInt(8, c.getCritical());
			ps.setDouble(9, c.getCasesPerOneMillion());
			ps.setDouble(10, c.getDeathsPerOneMillion());
			ps.setDouble(11, c.getTotalTests());
			ps.setDouble(12, c.getTestsPerOneMillion());
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public void updateCountry(Country c) throws SQLException {
		try {
			String sql = "UPDATE country SET cases =?, todayCases =?, deaths =?, todayDeaths =?, recovered =?, active =?, critical =?, casesPerOneMillion =?, deathsPerOneMillion =?, totalTests =?, testsPerOneMillion =? WHERE country = ?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, c.getCases());
			ps.setInt(2, c.getTodayCases());
			ps.setInt(3, c.getDeaths());
			ps.setInt(4, c.getTodayDeaths());
			ps.setInt(5, c.getRecovered());
			ps.setInt(6, c.getActive());
			ps.setInt(7, c.getCritical());
			ps.setDouble(8, c.getCasesPerOneMillion());
			ps.setDouble(9, c.getDeathsPerOneMillion());
			ps.setDouble(10, c.getTotalTests());
			ps.setDouble(11, c.getTestsPerOneMillion());
			ps.setString(12, c.getCountryName());
			ps.executeUpdate();
		} catch (SQLException e) {
			System.out.println(e);
		}
	}

	public void delete(int id) {
		String sql = "delete from country where countryId= ?";
		try {
			PreparedStatement st = conn.prepareStatement(sql);
			st.setInt(1, id);
			st.executeUpdate();

		} catch (Exception e) {
			System.out.println(e);
		}
	}
}
