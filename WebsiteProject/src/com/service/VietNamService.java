package com.service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.models.VietNam;

public class VietNamService {
	Connection conn = null;

	public VietNamService() {
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

	public List<VietNam> getAllCity() {
		List<VietNam> list = new ArrayList<>();
		try {
			String sql = "select * from vietnam";
			PreparedStatement pr = conn.prepareStatement(sql);
			ResultSet rs = pr.executeQuery();
			while (rs.next()) {
				int id = rs.getInt("ID");
				String city = rs.getString("city");
				int cases = rs.getInt("cases");
				int beingTreated = rs.getInt("beingTreated");
				int recovered = rs.getInt("recovered");
				int deaths = rs.getInt("deaths");
				list.add(new VietNam(id, city, cases, beingTreated, recovered, deaths));
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return list;
	}

	public VietNam selectCity(int cityId) {
		VietNam vn = null;
		try {
			String sql = "select * from vietnam where ID=?";
			PreparedStatement pr = conn.prepareStatement(sql);
			pr.setInt(1, cityId);
			ResultSet rs = pr.executeQuery();
			while (rs.next()) {
				cityId = rs.getInt("ID");
				String city = rs.getString("city");
				int cases = rs.getInt("cases");
				int beingTreated = rs.getInt("beingTreated");
				int recovered = rs.getInt("recovered");
				int deaths = rs.getInt("deaths");
				vn = new VietNam(cityId, city, cases, beingTreated, recovered, deaths);
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return vn;
	}

	public void insertCity(VietNam vn) throws SQLException {
		try {
			String sql = "insert into vietnam (city, cases, beingTreated, recovered, deaths) values (?,?,?,?,?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, vn.getCityName());
			ps.setInt(2, vn.getCityCases());
			ps.setInt(3, vn.getBeingTreated());
			ps.setInt(4, vn.getCityRecovered());
			ps.setInt(5, vn.getCityDeath());
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public void updateCity(VietNam vn) throws SQLException {
		try {
			String sql = "UPDATE vietnam SET city = ?, cases = ?, beingTreated = ?, recovered = ?, deaths=? WHERE ID = ?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, vn.getCityName());
			ps.setInt(2, vn.getCityCases());
			ps.setInt(3, vn.getBeingTreated());
			ps.setInt(4, vn.getCityRecovered());
			ps.setInt(5, vn.getCityDeath());
			ps.setInt(6, vn.getCityId());
			ps.executeUpdate();
		} catch (SQLException e) {
			System.out.println(e);
		}
	}

	public void delete(int cityId) {
		String sql = "delete from vietnam where ID = ?";
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, cityId);
			ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}
	}
}
