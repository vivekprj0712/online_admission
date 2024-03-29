package com.arth.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.arth.Entity.CourseEntity;
import com.arth.repository.AdminRepository;
import com.arth.repository.CourseRepository;
import com.arth.repository.StudentRepository;

import jakarta.servlet.http.HttpSession;

//logic
@Controller
public class CourseController {

	@Autowired
	CourseRepository courseRepo;
	
	@Autowired
	StudentRepository studentRepo;
	
	@Autowired
	AdminRepository adminRepo;
	
	
	@GetMapping("/newcourse")
	public String newCourse()
	{
		return "NewCourse";
	}
	
	@PostMapping("/savecourse")
	public String saveCourse(CourseEntity ce)
	{
		courseRepo.save(ce);
		return "redirect:/listcourse";
		
	}
	@GetMapping("/listcourse")
	public String listCourse(Model model , HttpSession session)
	{
		
		 
		 			
		 List<CourseEntity> courses=courseRepo.findAll();
		 model.addAttribute("courses", courses);

		 if(session.getAttribute("admin") != null)
		 {
			 System.out.println("admin");
			 return "AdminListCourses";
		 }
		 if(session.getAttribute("student") != null)
		 {
			 System.out.println("student");
			 return "StudentListCourses";
		 }
		 else
		 {
			 System.out.println("none");
			 return "ListCourse";
	    }
   }
	
	
}
