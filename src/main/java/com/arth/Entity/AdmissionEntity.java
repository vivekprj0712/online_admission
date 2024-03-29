package com.arth.Entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
@Entity
@Table(name="Admissions")
public class AdmissionEntity {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)  // auto generate
	private Integer admissionId;
	private String firstName;
	private String middleName;
	private String LastName;
	private Long contactNo;
	private String email;
	private String category;
	private String dob;
	private String gender;
	private String address;
	private String city;
	private Long pinCode;
	private String state;
	private String country;
	private Float perc_10th;
	private Float perc_12th;
	private String marksheet_12th;
	private String marksheet_10th;
	private String courseName;
	private String photo;
	private Integer payment;
	
	public Integer getAdmissionId() {
		return admissionId;
	}
	public void setAdmissionId(Integer admissionId) {
		this.admissionId = admissionId;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getMiddleName() {
		return middleName;
	}
	public void setMiddleName(String middleName) {
		this.middleName = middleName;
	}
	public String getLastName() {
		return LastName;
	}
	public void setLastName(String lastName) {
		LastName = lastName;
	}
	public Long getContactNo() {
		return contactNo;
	}
	public void setContactNo(Long contactNo) {
		this.contactNo = contactNo;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public Long getPinCode() {
		return pinCode;
	}
	public void setPinCode(Long pinCode) {
		this.pinCode = pinCode;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public Float getPerc_10th() {
		return perc_10th;
	}
	public void setPerc_10th(Float perc_10th) {
		this.perc_10th = perc_10th;
	}
	public Float getPerc_12th() {
		return perc_12th;
	}
	public void setPerc_12th(Float perc_12th) {
		this.perc_12th = perc_12th;
	}
	public String getMarksheet_12th() {
		return marksheet_12th;
	}
	public void setMarksheet_12th(String marksheet_12th) {
		this.marksheet_12th = marksheet_12th;
	}
	public String getMarksheet_10th() {
		return marksheet_10th;
	}
	public void setMarksheet_10th(String marksheet_10th) {
		this.marksheet_10th = marksheet_10th;
	}
	public String getCourseName() {
		return courseName;
	}
	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}	
	
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	public Integer getPayment() {
		return payment;
	}
	public void setPayment(Integer payment) {
		this.payment = payment;
	}
	
}
