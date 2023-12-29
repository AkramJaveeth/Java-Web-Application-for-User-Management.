package com.techpalle.model;

public class User {

	private int id;
	private String name;
	private String email;
	private String country;
	
	// Getters and Setters:
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
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	
	// Constructors:
	// Update Operation below constructor is used:
	public User(int id, String name, String email, String country)
	{
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.country = country;
	}
	// Insert Operation below constructor is used:
	public User(String name, String email, String country) 
	{
		super();
		this.name = name;
		this.email = email;
		this.country = country;
	}
	// Reading all Operation below constructor is used:
	public User() 
	{
		super();
	}	
	
}
