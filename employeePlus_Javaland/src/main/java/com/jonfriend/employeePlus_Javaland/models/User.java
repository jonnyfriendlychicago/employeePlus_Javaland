package com.jonfriend.employeePlus_Javaland.models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

@Entity
@Table(name="users")
public class User {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;
	
	
	@NotEmpty(message="Please provide a name!")
	@Size(min=3, max=30, message="Username must be between 3 and 30 characters")
	private String name;
	
	@NotEmpty(message="Email is required!")
	@Email(message="Please enter a valid email")
	private String email;
	
	@NotEmpty(message="Password is required!")
	@Size(min=3, max=128, message="Password must be between 3 and 10 characters")
	private String password;
	
	
	// Transient is not saved in database. Checks confirm password same as password
	@Transient
	@NotEmpty(message="Confirm Password is required!")
	@Size(min=3, max=128, message="Password must be between 3 and 10 characters")
	private String confirm;
	
	
	public User() {
	}


	public User(Long id,String name,String email,String password,String confirm) {
		this.id = id;
		this.name = name;
		this.email = email;
		this.password = password;
		this.confirm = confirm;
	}

	// GETTERS & SETTERS
	
	
	public Long getId() {
		return id;
	}


	public void setId(Long id) {
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


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public String getConfirm() {
		return confirm;
	}


	public void setConfirm(String confirm) {
		this.confirm = confirm;
	}
	
	
	
	
	
}
