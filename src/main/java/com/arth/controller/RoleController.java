package com.arth.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.arth.Entity.RoleEntity;
import com.arth.repository.RoleRepository;



@Controller
public class RoleController {
	
	int countRole = 0;
	
	@Autowired
	RoleRepository roleRepo;
	

	@GetMapping("/newrole")
	public String newRole()
	{
		return "NewRole";
	}
	@PostMapping("/saverole")
	public String saveRole(RoleEntity re)
	{
		//Insert
		roleRepo.save(re);
		countRole = countRole + 1;
		return "redirect:/listrole"; //this will invoke method  ;
	}
	
	@GetMapping("/listrole")
	public String listRole(Model model)  //model interface
	{
		List<RoleEntity> roles =  roleRepo.findAll();  // select * from roles;   

		
		model.addAttribute("roles", roles);
		model.addAttribute("countRole", countRole);
		return "ListRole";  //jsp
	}
	
	//delete
	@GetMapping("/deleterole")
	public String deleteRole(@RequestParam("roleId") Integer roleId)
	{
		roleRepo.deleteById(roleId);
		return "redirect:/listrole"; 
	}	
	
	//edit
		@GetMapping("/editrole")
		public String editRole(@RequestParam("roleId") Integer roleId , Model model)
		{
			RoleEntity role = roleRepo.findById(roleId).get();
			model.addAttribute("editRole", role);
			
			return "EditRole"; 
		}
		
		
   //view
		@GetMapping("/viewrole")
		public String viewModule(@RequestParam("roleId") Integer roleId, Model model) {
			RoleEntity roles = roleRepo.findById(roleId).get();
			model.addAttribute("role", roles);
			return "ViewRole";
		}
}
