package com.service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.models.News;

public class NewService {
	Connection conn = null;

	public NewService() {
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

	public List<News> getAllNews() {
		List<News> lstNews = new ArrayList<News>();
		try {
			String sql = "select * from news";
			PreparedStatement pr = conn.prepareStatement(sql);
			ResultSet rs = pr.executeQuery();
			while (rs.next()) {
				int id = rs.getInt("ID");
				String title = rs.getString("title");
				String content = rs.getString("content");
				lstNews.add(new News(id, title, content));
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return lstNews;
	}

	public News getNews(int id) {
		News n = null;
		try {
			String sql = "select * from news where ID = ?";
			PreparedStatement pr = conn.prepareStatement(sql);
			pr.setInt(1, id);
			ResultSet rs = pr.executeQuery();
			while (rs.next()) {
				id = rs.getInt("ID");
				String title = rs.getString("title");
				String content = rs.getString("content");
				n = new News(id, title, content);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return n;
	}

	public void insertNews(News news) throws SQLException {
		try {
			String sql = "insert into news (title, content) values (?,?);";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, news.getTitle());
			ps.setString(2, news.getContent());
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public void updateNews(News n) throws SQLException {
		try {
			String sql = "UPDATE news SET title=?, content=? WHERE ID=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, n.getTitle());
			ps.setString(2, n.getContent());
			ps.setInt(3, n.getId());
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public void deleteNews(int id) throws SQLException {
		try {
			String sql = "DELETE FROM news where ID = ?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, id);
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
