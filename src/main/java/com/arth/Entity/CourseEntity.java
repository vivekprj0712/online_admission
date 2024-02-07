package com.arth.Entity;
//dataread

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
@Entity
@Table(name="Courses")
public class CourseEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer courseId;
	private String name;
	private Boolean active;
	private Integer totalSeats;
	private Integer paidSeats;
	private String academicCycle;
	private Integer developmentCost;
	public Integer getCourseId() {
		return courseId;
	}
	public void setCourseId(Integer courseId) {
		this.courseId = courseId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Boolean getActive() {
		return active;
	}
	public void setActive(Boolean active) {
		this.active = active;
	}
	public Integer getTotalSeats() {
		return totalSeats;
	}
	public void setTotalSeats(Integer totalSeats) {
		this.totalSeats = totalSeats;
	}
	public Integer getPaidSeats() {
		return paidSeats;
	}
	public void setPaidSeats(Integer paidSeats) {
		this.paidSeats = paidSeats;
	}
	public String getAcademicCycle() {
		return academicCycle;
	}
	public void setAcademicCycle(String academicCycle) {
		this.academicCycle = academicCycle;
	}
	public Integer getDevelopmentCost() {
		return developmentCost;
	}
	public void setDevelopmentCost(Integer developmentCost) {
		this.developmentCost = developmentCost;
	}
	
	
}
