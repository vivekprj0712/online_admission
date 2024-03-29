package com.arth.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.arth.Entity.AdmissionEntity;
import com.arth.Entity.CourseEntity;

import com.arth.repository.AdmissionRepository;
import com.arth.repository.CourseRepository;

import jakarta.servlet.http.HttpSession;

@Controller
public class AdmissionController {

	@Autowired
	AdmissionRepository admissionRepo;
	
	@Autowired
	CourseRepository courseRepo;
	
	@GetMapping("/newadmission")
	public String newCourse(Model model , HttpSession session)
	
	{
		
		List<CourseEntity> courses =courseRepo.findAll();
		model.addAttribute("courseList" , courses);
		if(session.getAttribute("student") != null)
		{
			return "NewAdmission";
		}
		else
		{
			model.addAttribute("error", "Please Login First...!!");
			return "Login";
		}
	}
	
	@PostMapping("/saveadmission")
	public String saveCourse(AdmissionEntity ae , Model model )
	{
		
		admissionRepo.save(ae);
		return "Payment";
		
	}
	
	@PostMapping("/checkpayment")
	public String payment(AdmissionEntity ae)
	{
			ae.setPayment(300);
			return "redirect:/generatereceipt";
		
	}
	
	@GetMapping("/generatereceipt")
	public String generateReceipt()
	{
		return "GenerateReceipt";
	}
	
	@GetMapping("/listadmission")
	public String listAdmission(Model model , HttpSession session)
	{
		List<AdmissionEntity> admissions=admissionRepo.findAll();
		model.addAttribute("admissions", admissions);	
		 return "ListAdmission";
		
	}
}
