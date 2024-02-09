package com.arth.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.arth.Entity.RoleEntity;
import com.arth.repository.RoleRepository;



@Controller
public class RoleController {
	@Autowired
	RoleRepository roleRepo;
	

	@GetMapping("/newrole")
	public String newRole()
	{
		return "NewRole";
	}
	@PostMapping("/saverole")
	public String saveRole(RoleEntity roleE)
	{
		//Insert
		roleRepo.save(roleE);
		return "redirect:/listrole"; //this will invoke method  ;
	}
	
	@GetMapping("/listrole")
	public String listRole(Model model)  //model interface
	{
		List<RoleEntity> roles =  roleRepo.findAll();  // select * from roles;   

		model.addAttribute("roles", roles);
		return "ListRole";  //jsp
	}
}
