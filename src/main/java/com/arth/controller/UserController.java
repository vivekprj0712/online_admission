package com.arth.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.arth.Entity.UserEntity;
import com.arth.repository.UserRepository;

@Controller
public class UserController {

	@Autowired
	UserRepository userRepo;
	
	@GetMapping("/newuser")
	public String newUser()
	{
		return "NewUser";
	}
	
	@PostMapping("/saveuser")
	public String saveUser(UserEntity userE)
	{
		userRepo.save(userE);
		return "redirect:/listuser";
		
	}
	@GetMapping("/listuser")
	public String listUser(Model model)
	{
		
		List<UserEntity> users =userRepo.findAll();
		model.addAttribute("users", users);
		return "ListUser";
	}
}
