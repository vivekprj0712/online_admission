package com.arth.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.arth.Entity.EnrollmentEntity;
import com.arth.repository.EnrollmentRepository;

public class EnrollmentController {
	
	@Autowired
	EnrollmentRepository enrollmentRepo;
	
	
	@GetMapping("/newenrollment")
	public String newEnrollment()
	{
		return "NewEnrollment";
	}
	
	
	@PostMapping("/saveenrollment")
	public String saveEnrollment(EnrollmentEntity enrollmentE)
	{
		enrollmentRepo.save(enrollmentE);
		
		return "Home";
	}
	
}
