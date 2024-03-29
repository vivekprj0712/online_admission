package com.arth.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.arth.Entity.RoleEntity;
//import com.arth.Entity.RoleEntity;
import com.arth.Entity.StudentEntity;
import com.arth.repository.RoleRepository;
//import com.arth.repository.RoleRepository;
import com.arth.repository.StudentRepository;

@Controller
public class StudentController {

	@Autowired
	StudentRepository studRepo;
	
	@Autowired
	RoleRepository roleRepo;
	
	@Autowired
	BCryptPasswordEncoder bcrypt;
	
	@GetMapping("/newstudent")
	public String newStudent(Model model)
	{
		List<RoleEntity> roles =roleRepo.findAll();
		model.addAttribute("roleList" , roles);
		return "NewStudent";
	}
	
	@PostMapping("/savestudent")
	public String saveStudent(StudentEntity se)
	{
		se.setPassword(bcrypt.encode(se.getPassword()));
		studRepo.save(se);
		return "redirect:/liststudent";
		
	}
	@GetMapping("/liststudent")
	public String listStudent(Model model)
	{
		
		List<StudentEntity> students =studRepo.findAll();
		model.addAttribute("studentList", students);
		return "ListStudent";
	}
	@GetMapping("/deletestudent")
	public String deleteStudent(@RequestParam Integer studentId)
	{
		studRepo.deleteById(studentId);
		return "redirect:/liststudent";
	}
	
}
