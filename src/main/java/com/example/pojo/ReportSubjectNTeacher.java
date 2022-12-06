package com.example.pojo;


	import javax.persistence.Entity;
	import javax.persistence.GeneratedValue;
	import javax.persistence.GenerationType;
	import javax.persistence.Id;
	@Entity
	public class ReportSubjectNTeacher {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;

	private int cid;
	private String className;
	 
	private int subid;
	private String suBName;
	private int tid;
	private String tName;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public String getClassName() {
		return className;
	}
	public void setClassName(String className) {
		this.className = className;
	}
	public int getSubid() {
		return subid;
	}
	public void setSubid(int subid) {
		this.subid = subid;
	}
	public String getSuBName() {
		return suBName;
	}
	public void setSuBName(String suBName) {
		this.suBName = suBName;
	}
	public int getTid() {
		return tid;
	}
	public void setTid(int tid) {
		this.tid = tid;
	}
	public String gettName() {
		return tName;
	}
	public void settName(String tName) {
		this.tName = tName;
	}


	}


