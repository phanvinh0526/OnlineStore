package org.model.pojo;


import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.Transient;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.Length;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.NumberFormat;

@NamedQueries({
	@NamedQuery(
			name = "findByEmail",
			query = "from Account where email = :email"
	),
	@NamedQuery(
			name = "findByFirstName",
			query = "from Account where firstname = :firstName"
	),
	@NamedQuery(
			name = "findByUsername",
			query = "from Account where username = :username"
	)
})
@Entity
@Table(name="account")
public class Account {
	private Integer id;
	private String username;
	private String password;
	private String email;
	private String phone;
	private String firstname;
	private String lastname;
	private String address;
	private String picture_url;
	private Date birthday;
	private Date updated_time;
	private Date created_time;
	private Integer gender;
	private String fb_id;
	private String fb_url;
	private Integer verified;
	private Integer role;
	
	@Id
	@GeneratedValue
	@Column(name="ID")
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	
	@Length(min=1, max=100)
	@Column(name="USERNAME")
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	
	@Length(min=1, max=100)
	@Column(name="PASSWORD")
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	@Email
	@Column(name="EMAIL")
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	@NumberFormat
	@Column(name="ROLE")
	public Integer getRole() {
		return role;
	}
	public void setRole(Integer role) {
		this.role = role;
	}
	
	@Length(min=1, max=50)
	@Column(name="FIRST_NAME")
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	
	@Length(min=1, max=50)
	@Column(name="LAST_NAME")
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	
	@Length(min=1, max=50)
	@Column(name="PHONE")
	public final String getPhone() {
		return phone;
	}
	public final void setPhone(String phone) {
		this.phone = phone;
	}
	
	@Length(min=1, max=200)
	@Column(name="ADDRESS")
	public final String getAddress() {
		return address;
	}
	public final void setAddress(String address) {
		this.address = address;
	}
	
	@Length(min=1, max=200)
	@Column(name="PICTURE_URL")
	public final String getPicture_url() {
		return picture_url;
	}
	public final void setPicture_url(String picture_url) {
		this.picture_url = picture_url;
	}
	
	@Length(min=1, max=50)
	@Column(name="BIRTHDAY")
	public final Date getBirthday() {
		return birthday;
	}
	public final void setBirthday(Date birthday) {
		this.birthday = birthday;
	}
	
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name="UPDATED_TIME")
	public final Date getUpdated_time() {
		return updated_time;
	}
	public final void setUpdated_time(Date updated_time) {
		this.updated_time = updated_time;
	}
	
	
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name="CREATED_TIME")
	public final Date getCreated_time() {
		return created_time;
	}
	public final void setCreated_time(Date created_time) {
		this.created_time = created_time;
	}
	
	@NumberFormat
	@Column(name="GENDER")
	public final Integer getGender() {
		return gender;
	}
	public final void setGender(Integer gender) {
		this.gender = gender;
	}
	
	@Length(min=1, max=100)
	@Column(name="FB_ID")
	public final String getFb_id() {
		return fb_id;
	}
	public final void setFb_id(String fb_id) {
		this.fb_id = fb_id;
	}
	
	@Length(min=1, max=100)
	@Column(name="FB_URL")
	public final String getFb_url() {
		return fb_url;
	}
	public final void setFb_url(String fb_url) {
		this.fb_url = fb_url;
	}
	
	@NumberFormat
	@Column(name="VERIFIED")
	public final Integer getVerified() {
		return verified;
	}
	public final void setVerified(Integer verified) {
		this.verified = verified;
	}
	
	@Transient
	public String getFullname(){
		return firstname+" "+lastname;
	}
	
	// Convert String
	public String toString(){
		return "[Fullname] "+getFullname()+" [Email] "+email;
	}
}
