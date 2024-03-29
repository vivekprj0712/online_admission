package com.arth.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.arth.Entity.AdminEntity;
import com.arth.repository.AdminRepository;

import jakarta.servlet.http.HttpSession;

@Controller
public class AdminController {
	
	@Autowired
	AdminRepository adminRepo;
	
	@Autowired
	BCryptPasswordEncoder bcrypt;

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
			return "AdminDashboard";
		}
		else
		{
			model.addAttribute("error", "Please Loging First...!!");
			return "Login";
		}
	}
}	
