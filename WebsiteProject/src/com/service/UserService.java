package com.service;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


import com.models.User;

import connect.DBConnect;



public class UserService {
	static Connection conn = null;

	public UserService() {
	}


	public static List<User> getAllUsers() {
		Connection conn = DBConnect.getConnection();
		List<User> list = new ArrayList<>();
		try {
			String sql = "select * from website.users";
			PreparedStatement pr = conn.prepareStatement(sql);
			ResultSet rs = pr.executeQuery();
			while (rs.next()) {
				int id = rs.getInt("id");
				String fullname = rs.getString("fullname");
				String email = rs.getString("email");
				String password = rs.getString("password");
			list.add(new User(id,fullname,email,password));
			}
			
		}catch (Exception e) {
			System.out.println(e);
		}
		return list;
	}
	
	public  User selectUser(int id) {
		User user = null;
		Connection conn = DBConnect.getConnection();
		try {
			String sql = "SELECT * FROM website.users WHERE id = ?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				id = rs.getInt("id");
				String fullname  = rs.getString("fullname");
				String email = rs.getString("email");
				String password = rs.getString("password");
				user = new User(id,fullname,email,password);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return user;
	}

	public void insertUser(User user) throws SQLException {
		Connection conn = DBConnect.getConnection();
		try {
			String INSERT_USER = " INSERT INTO website.users (fullname,email,password) VALUES (?,?,?);";
			PreparedStatement ps = conn.prepareStatement(INSERT_USER);
			ps.setString(1, user.getFullname());
			ps.setString(2, user.getEmail());
			ps.setString(3, user.getPassword());
			ps.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public boolean updateUser(User user) throws SQLException {
		Connection conn = DBConnect.getConnection();
		boolean rowUpdated = false;
		try {
			String sql = "UPDATE website.users SET fullname = ?, email =?, password =? WHERE id = ?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, user.getFullname());
			ps.setString(2, user.getEmail());
			ps.setString(3, user.getPassword());
			ps.setInt(4, user.getId());
			
			rowUpdated = ps.executeUpdate() > 0;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rowUpdated;
	}

	public boolean deleteUser(int id) throws SQLException {
		Connection conn = DBConnect.getConnection();
		boolean rowDeleted = false;
		try {
			String sql = "DELETE FROM website.users where id = ?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, id);
			rowDeleted = ps.executeUpdate() > 0;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rowDeleted;
	}
	
	public static boolean validate(User user) throws ClassNotFoundException{
		 Connection conn = DBConnect.getConnection();
        boolean status = false;
        try{
        	String sql = "SELECT * FROM website.users WHERE  email=? and password=?";
        	PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, user.getEmail());
			ps.setString(2, user.getPassword());
			
            ResultSet rs = ps.executeQuery();
            status = rs.next();

    } catch (SQLException e) {
		e.printStackTrace();
	}
		return status;
}
}





