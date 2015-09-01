package com.laojiang.entity;

import java.util.Date;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name="my_article")
public class MyArticle implements java.io.Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 5654074928232755858L;
	@Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	private String title;
	private String content;
	@Temporal(TemporalType.DATE)
	private Date date = new Date();
	@Temporal(TemporalType.TIME)
	private Date time = new Date();
	
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
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public Date getTime() {
		return time;
	}
	public void setTime(Date time) {
		this.time = time;
	}
	

}
