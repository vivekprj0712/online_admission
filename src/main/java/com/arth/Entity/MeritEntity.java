package com.arth.Entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "Merits")
public class MeritEntity {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer meritId;
	private String year;
	private String roundTitle;
	private Float generalCutoff;
	private Float obcCutoff;
	private Float stCutoff;
	private Float scCutoff;
	private Integer generalQuota;
	private Integer obcQuota;
	private Integer stQuota;
	private Integer scQuota;
	private Integer totalSeat;
	private Integer courseId;
	public Integer getMeritId() {
		return meritId;
	}
	public void setMeritId(Integer meritId) {
		this.meritId = meritId;
	}
	
	public String getYear() {
		return year;
	}
	public void setYear(String year) {
		this.year = year;
	}
	public String getRoundTitle() {
		return roundTitle;
	}
	public void setRoundTitle(String roundTitle) {
		this.roundTitle = roundTitle;
	}
	public Float getGeneralCutoff() {
		return generalCutoff;
	}
	public void setGeneralCutoff(Float generalCutoff) {
		this.generalCutoff = generalCutoff;
	}
	public Float getObcCutoff() {
		return obcCutoff;
	}
	public void setObcCutoff(Float obcCutoff) {
		this.obcCutoff = obcCutoff;
	}
	public Float getStCutoff() {
		return stCutoff;
	}
	public void setStCutoff(Float stCutoff) {
		this.stCutoff = stCutoff;
	}
	public Float getScCutoff() {
		return scCutoff;
	}
	public void setScCutoff(Float scCutoff) {
		this.scCutoff = scCutoff;
	}
	public Integer getGeneralQuota() {
		return generalQuota;
	}
	public void setGeneralQuota(Integer generalQuota) {
		this.generalQuota = generalQuota;
	}
	public Integer getObcQuota() {
		return obcQuota;
	}
	public void setObcQuota(Integer obcQuota) {
		this.obcQuota = obcQuota;
	}
	public Integer getStQuota() {
		return stQuota;
	}
	public void setStQuota(Integer stQuota) {
		this.stQuota = stQuota;
	}
	public Integer getScQuota() {
		return scQuota;
	}
	public void setScQuota(Integer scQuota) {
		this.scQuota = scQuota;
	}
	public Integer getTotalSeat() {
		return totalSeat;
	}
	public void setTotalSeat(Integer totalSeat) {
		this.totalSeat = totalSeat;
	}
	public Integer getCourseId() {
		return courseId;
	}
	public void setCourseId(Integer courseId) {
		this.courseId = courseId;
	}
	
	
	
	
}
