package com.arth.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.arth.bean.UserBean;

@Controller
public class SessionController {

	@GetMapping("/") //default page open
//	@GetMapping("/welcome")   //if you open a jsp then use getMapping
	public String welcome() //url
	{
		return "Welcome";  //jsp
	}
	
	
	@GetMapping("/signup")   
	public String signup()
	{
		return "Signup";  
	}
	
	@GetMapping("/login")
	public String login()
	{
		return "Login";
	}
	
	@GetMapping("/vivek")
	public String vivek()
	{
		return "Vivek";
	}
	
//	@PostMapping("/saveuser")   //if come a data by jsp then use PostMapping
//	public String saveuser(UserBean sb)
//	{
//		System.out.println(sb.getUserName());
//		System.out.println(sb.getEmail());
//		System.out.println(sb.getPassword());
//		System.out.println("Saveuser");
//		return "Home";
//	}
}

