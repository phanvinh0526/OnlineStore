package org.model.form;

import java.sql.Date;

public class RegistrationForm {
	private String username;
	private String password;
	private String email;
	private String phone;
	private String firstname;
	private String lastname;
	private String address;
	private Date birthday;
	private Integer gender;
	
	private boolean marketingOk = true; 
	private boolean acceptTerms = false;
	
	
	public final boolean isMarketingOk() {
		return marketingOk;
	}
	public final void setMarketingOk(boolean marketingOk) {
		this.marketingOk = marketingOk;
	}
	public final boolean isAcceptTerms() {
		return acceptTerms;
	}
	public final void setAcceptTerms(boolean acceptTerms) {
		this.acceptTerms = acceptTerms;
	}
	public final String getUsername() {
		return username;
	}
	public final void setUsername(String username) {
		this.username = username;
	}
	public final String getPassword() {
		return password;
	}
	public final void setPassword(String password) {
		this.password = password;
	}
	public final String getEmail() {
		return email;
	}
	public final void setEmail(String email) {
		this.email = email;
	}
	public final String getPhone() {
		return phone;
	}
	public final void setPhone(String phone) {
		this.phone = phone;
	}
	public final String getFirstname() {
		return firstname;
	}
	public final void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public final String getLastname() {
		return lastname;
	}
	public final void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public final String getAddress() {
		return address;
	}
	public final void setAddress(String address) {
		this.address = address;
	}
	public final Date getBirthday() {
		return birthday;
	}
	public final void setBirthday(Date birthday) {
		this.birthday = birthday;
	}
	public final Integer getGender() {
		return gender;
	}
	public final void setGender(Integer gender) {
		this.gender = gender;
	}
	
	
}
