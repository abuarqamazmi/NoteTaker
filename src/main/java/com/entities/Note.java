package com.entities;

import java.util.Random;
import java.util.*;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="notes")
public class Note {
	
	@Id
	int id;
	String title;
	@Column(length = 1500)
	String content;
	Date Date;
	public Note() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Note(String title, String content, java.util.Date date) {
		super();
		this.id = new Random().nextInt(1000);
		this.title = title;
		this.content = content;
		Date = date;
	}
	@Override
	public String toString() {
		return "Note [id=" + id + ", title=" + title + ", content=" + content + ", Date=" + Date + "]";
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
	public Date getDate() {
		return Date;
	}
	public void setDate(Date date) {
		Date = date;
	}
	
}
