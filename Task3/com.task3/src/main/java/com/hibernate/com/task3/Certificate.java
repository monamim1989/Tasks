package com.hibernate.com.task3;

public class Certificate {
	private int id;
	private String name;
	
	public Certificate(String name) {
		System.out.println("Certificate Object Created Successfully");
		this.name=name;
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

	@Override
	public String toString() {
		return "Certificate [id=" + id + ", name=" + name + "]";
	}
	
}
