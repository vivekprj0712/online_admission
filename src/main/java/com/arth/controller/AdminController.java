package com.arth.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.arth.Entity.AdminEntity;
import com.arth.Entity.AdmissionEntity;
import com.arth.Entity.ContactEntity;
import com.arth.Entity.CourseEntity;
import com.arth.Entity.FeedbackEntity;
import com.arth.Entity.MeritEntity;
import com.arth.Entity.RoleEntity;
import com.arth.Entity.StudentEntity;
import com.arth.Entity.TeacherEntity;
import com.arth.repository.AdminRepository;
import com.arth.repository.AdmissionRepository;
import com.arth.repository.ContactRepository;
import com.arth.repository.CourseRepository;
import com.arth.repository.FeedbackRepository;
import com.arth.repository.MeritRepository;
import com.arth.repository.RoleRepository;
import com.arth.repository.StudentRepository;
import com.arth.repository.TeacherRepository;

import jakarta.servlet.http.HttpSession;

@Controller
public class AdminController {
	
	@Autowired
	AdminRepository adminRepo;
	
	@Autowired
	BCryptPasswordEncoder bcrypt;
	
	@Autowired
	RoleRepository roleRepo;
	
	@Autowired
	StudentRepository studentRepo;
	
	@Autowired
	CourseRepository courseRepo;
	
	@Autowired
	TeacherRepository teacherRepo;
	
	@Autowired
	FeedbackRepository feedbackRepo;
	
	@Autowired
	ContactRepository contactRepo;

	@Autowired
	AdmissionRepository admissionRepo;
	
	@Autowired
	MeritRepository meritRepo;
	
	
	@GetMapping("/newadmin")
	public String NewAdmin()
	{
		return "NewAdmin";
	}
	
	@PostMapping("/saveadmin")
	public String saveAdmin(AdminEntity ae)
	{
		ae.setPassword(bcrypt.encode(ae.getPassword()));

		adminRepo.save(ae);
		return "redirect:/admindashboard";
	}
	
	@GetMapping("/admindashboard")
	public String adminDashboard(HttpSession session , Model model)
	{
		if(session.getAttribute("admin") != null)
		{
		  List<RoleEntity> roles =  roleRepo.findAll();
		  List<StudentEntity> studens =  studentRepo.findAll();
		  List<CourseEntity> courses = courseRepo.findAll();
		  List<TeacherEntity> teachers = teacherRepo.findAll();
		  List<FeedbackEntity> feedbacks = feedbackRepo.findAll();
		  List<ContactEntity> contacts = contactRepo.findAll();
		  List<AdmissionEntity> admissions = admissionRepo.findAll();
		  List<MeritEntity> merits = meritRepo.findAll();
		  List<AdmissionEntity> confirmAdmissions = admissionRepo.findByConfirmAdmission("confirm");
		
		  
		  model.addAttribute("countconfirmAdmission", confirmAdmissions.size());
		  model.addAttribute("roles", roles);
		  model.addAttribute("students", studens);
		  model.addAttribute("courses", courses);
		  model.addAttribute("teachers", teachers);
		  model.addAttribute("feedbacks", feedbacks);
		  model.addAttribute("contacts", contacts);
		  model.addAttribute("admissions", admissions);
		  model.addAttribute("merits", merits);
		  
		    return "AdminDashboard";
		}
		else
		{
			model.addAttribute("error", "Please Loging First...!!");
			return "Login";
		}
	}
}	
