package com.jonfriend.employeePlus_Javaland.models;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="workers")
public class Worker {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;
	
	@NotEmpty(message="Enter first name")
	private String firstName;
	
	@NotEmpty(message="Enter last name")
	private String lastName;
	
	@NotEmpty(message="job title needed")
	private String jobTitle;	
	
	@NotEmpty(message="description needed needed")
	private String workerDescription;
	
	@NotEmpty(message="employment type")
	private String employmentType;
   
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date hireDate;//thats what is going in the html page
    
    
	@Column(updatable=false)
	private Date createdAt;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date updatedAt;
	//need a many to one, and the join column is the user 
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name="postedBy")
	private User user;
	
	// instantiate the model: 
	public Worker() {}

	public Worker(Long id, String firstName, String lastName,String jobTitle,String workerDescription, String employmentType, Date createdAt,Date hireDate,  Date updatedAt, User user) {
		this.id = id;
		this.firstName = firstName;
		this.lastName = lastName;
		this.jobTitle = jobTitle;
		this.workerDescription = workerDescription;
		this.employmentType = employmentType;
		this.hireDate = hireDate;
		this.createdAt = createdAt;
		this.updatedAt = updatedAt;
		this.user = user;
	}
	//getters and setters
	
	
	// add methods to populate maintain createdAt/UpdatedAt
    @PrePersist
    protected void onCreate(){
        this.createdAt = new Date();
    }
    public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getJobTitle() {
		return jobTitle;
	}

	public void setJobTitle(String jobTitle) {
		this.jobTitle = jobTitle;
	}

	public String getWorkerDescription() {
		return workerDescription;
	}

	public void setWorkerDescription(String workerDescription) {
		this.workerDescription = workerDescription;
	}

	public String getEmploymentType() {
		return employmentType;
	}

	public void setEmploymentType(String employmentType) {
		this.employmentType = employmentType;
	}

	public Date getHireDate() {
		return hireDate;
	}

	public void setHireDate(Date hireDate) {
		this.hireDate = hireDate;
	}

	public Date getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}

	public Date getUpdatedAt() {
		return updatedAt;
	}

	public void setUpdatedAt(Date updatedAt) {
		this.updatedAt = updatedAt;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	// add methods to populate maintain createdAt/UpdatedAt
	@PreUpdate
    protected void onUpdate(){
        this.updatedAt = new Date();
    }
}
