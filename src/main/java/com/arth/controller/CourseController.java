package com.arth.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.arth.Entity.CourseEntity;
import com.arth.repository.CourseRepository;

//logic
@Controller
public class CourseController {

	@Autowired
	CourseRepository courseRepo;
	
	@GetMapping("/newcourse")
	public String newCourse()
	{
		return "NewCourse";
	}
	
	@PostMapping("/savecourse")
	public String saveCourse(CourseEntity courseE)
	{
		courseRepo.save(courseE);
		return "redirect:/listcourse";
		
	}
	@GetMapping("/listcourse")
	public String listCourse(Model model)
	{
		 List<CourseEntity> courses=courseRepo.findAll();
		 model.addAttribute("courses", courses);
		 return "ListCourse";
	}
	
	
	
}
