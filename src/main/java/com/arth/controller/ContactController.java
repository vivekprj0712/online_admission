package com.arth.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.arth.Entity.ContactEntity;
import com.arth.repository.ContactRepository;

import jakarta.servlet.http.HttpSession;

@Controller
public class ContactController {

	@Autowired
	ContactRepository contactRepo;
	

	@GetMapping("/newcontact")
	public String newContact(HttpSession session)
	{
		if(session.getAttribute("student") != null)
		{
			return "StudentNewContact";
		}
		else
		{
			return "NewContact";
		}
	}
	@PostMapping("/savecontact")
	public String saveContact(ContactEntity ce, Model model , HttpSession session)
	{
		contactRepo.save(ce);
		if(session.getAttribute("student") != null)
		{
			model.addAttribute("msg","Message Successfully Reached..");
			return "NewContact";
		}
		else 
		{
			model.addAttribute("msg","Message Successfully Reached..");
			return "NewContact";		
		}
		
	}
	@GetMapping("/listcontact")
	public String listContact(Model model , HttpSession session)
	{
		
		 
		 			
		 List<ContactEntity> contacts=contactRepo.findAll();
		 model.addAttribute("contacts", contacts);

		 if(session.getAttribute("admin") != null)
		 {
			 return "ListContact";
		 }
		 else {
			 return "Home";
		 }
		 
   }
	
	@GetMapping("/deletecontact")
	public String deleteConatct(@RequestParam("contactId") Integer contactId)
	{
		contactRepo.deleteById(contactId);
		return "redirect:/listcontact";
	}	


	
}
