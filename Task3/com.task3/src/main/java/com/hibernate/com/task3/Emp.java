package com.hibernate.com.task3;

import java.util.Map;

public class Emp {
	private int id;
	private String name;
	// Using Map Collection
	private Map<String,Certificate> certificates; 

	public Emp() {
		System.out.println("Employee Object Created Successfully");
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Map<String, Certificate> getCertificates() {
		return certificates;
	}

	public void setCertificates(Map<String, Certificate> certificates) {
		this.certificates = certificates;
	}

	@Override
	public String toString() {
		return "Emp [id=" + id + ", name=" + name + ", certificates=" + certificates + "]";
	}
	
}
