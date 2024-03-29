package com.arth.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.arth.Entity.EnrollmentEntity;
import com.arth.repository.EnrollmentRepository;


@Controller
public class EnrollmentController {
	
	@Autowired
	EnrollmentRepository enrollmentRepo;
	
	
	@GetMapping("/newenrollment")
	public String newEnrollment()
	{
		return "NewEnrollment";
	}
	
	
	@PostMapping("/saveenrollment")
	public String saveEnrollment(EnrollmentEntity ee)
	{
		enrollmentRepo.save(ee);
		
		return "redirect:/listenrollment";
	}
	@GetMapping("/listenrollment")
	public String listEnrollment(Model model)
	{
		List<EnrollmentEntity> enrollments=enrollmentRepo.findAll();
		model.addAttribute("enrollments", enrollments);
		return "ListEnrollment";
	}
}
