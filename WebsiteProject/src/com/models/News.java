package com.models;

public class News {
	protected int id;
	protected String title;
	protected String content;
	//NEW UPDATE: VIDEO IN NEW
	protected String video;
	protected String image;
	public News() {

	}

	public News(int id, String title, String content) {
		this.id = id;
		this.title = title;
		this.content = content;
	}

	public News(String title, String content) {
		this.title = title;
		this.content = content;
	}
	public News(int id, String title, String content, String video, String image) {
		this.id=id;
		this.title = title;
		this.content = content;
		this.video = video;
		this.image=image;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}
	public String getVideo() {
		return video;
	}

	public void setVideo(String video) {
		this.video = video;
	}
	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}
	
	

}

//protected int id;
//protected String title;
//protected String content;
//
//public News() {
//
//}
//
//public News(int id, String title, String content) {
//	this.id = id;
//	this.title = title;
//	this.content = content;
//}
//
//public News(String title, String content) {
//	this.title = title;
//	this.content = content;
//}
//
//public int getId() {
//	return id;
//}
//
//public void setId(int id) {
//	this.id = id;
//}
//
//public String getTitle() {
//	return title;
//}
//
//public void setTitle(String title) {
//	this.title = title;
//}
//
//public String getContent() {
//	return content;
//}
//
//public void setContent(String content) {
//	this.content = content;
//}