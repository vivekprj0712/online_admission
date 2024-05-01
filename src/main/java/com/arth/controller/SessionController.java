package com.arth.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.arth.Entity.AdminEntity;
import com.arth.Entity.StudentEntity;
import com.arth.Service.MailerService;
import com.arth.repository.AdminRepository;
import com.arth.repository.MeritRepository;
import com.arth.repository.StudentRepository;

import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;





@Controller
public class SessionController {
	
	@Autowired 
	StudentRepository studentRepo;
	
	@Autowired 
	AdminRepository adminRepo;
	
	@Autowired
	BCryptPasswordEncoder passwordEncoder;
	
	@Autowired
	MeritRepository meritRepo;
	
	
	@Autowired
	MailerService mailerService;

	@GetMapping("/") //default page open
	public String welcome() //url
	{
		return "Home";  //jsp
	}
	
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "Home";
	}
	
	@GetMapping("/signup")   
	public String signup()
	{
		return "Signup";  
	}
	 
	@PostMapping("/signup")  //if come a data by jsp then use PostMapping
	public String  saveStudent(@Valid StudentEntity student,BindingResult result ,Model model) {
		
		if(result.hasErrors())
		{
			
			return "Signup";			
		}
		
		
			if (!student.getPassword().equals(student.getConfirmPassword())) {
				model.addAttribute("passwordError", "Password and Retype Password Must be same");
				return "Signup";
			}
			
			student.setRoleId(2); //student
			
			// read plain text password
			String plainPassword = student.getPassword();
			
			// encrypt plain text password
			String encPassword = passwordEncoder.encode(plainPassword);
			
			
			// user -> password -> set -> encPassword
			student.setPassword(encPassword);
			studentRepo.save(student);
			return "redirect:/login";
			
		}
	
	@GetMapping("/login")
	public String login()
	{
		return "Login";
	}
	
	@PostMapping("/authenticate")
	public String authenticate(StudentEntity se,AdminEntity ae , Model model , HttpSession session) {
		
		
		StudentEntity loggedInStudent = studentRepo.findByEmail(se.getEmail());
		AdminEntity loggedInAdmin = adminRepo.findByEmail(ae.getEmail());
		
		
		
		if(loggedInStudent == null && loggedInAdmin == null)
		{
			// credentials wrong
			model.addAttribute("error", "Invalid Credentials");
			return "Login";
		}
		else
		{
			if(loggedInStudent != null)
			{
				session.setMaxInactiveInterval(60*60); //24 hr -> no acitivity ->
				session.setAttribute("student", loggedInStudent); //set student into session 
			
			boolean answer = passwordEncoder.matches(se.getPassword(), loggedInStudent.getPassword());// true | false
			
			if (answer == false) {
				model.addAttribute("error", "Invalid Credentials");
				return "Login";
				} 
				else if (loggedInStudent.getRoleId() == null) {
				model.addAttribute("error", "You might be a HACKER");
				return "Login";
				} 
				else if (loggedInStudent.getRoleId() == 2) {
				// Student
				
				return "StudentDashboard";
				}	
			}
			
			else if (loggedInAdmin != null)
			{
				session.setMaxInactiveInterval(60*60); //24 hr -> no acitivity ->
				session.setAttribute("admin", loggedInAdmin);
				boolean answer = passwordEncoder.matches(ae.getPassword(), loggedInAdmin.getPassword());// true | false
				
				if (answer == false) {
					model.addAttribute("error", "Invalid Credentials");
					return "Login";
					} 
				else if (loggedInAdmin.getRoleId() == null) {
					model.addAttribute("error", "You might be a HACKER");
					return "Login";
					} 
				else if (loggedInAdmin.getRoleId() == 1) {
					// Admin
					return "redirect:/admindashboard";
				
					}	
			}
		}
		return "Login";
	}
	
	@GetMapping("/forgetpassword")
	public String forgetPassword()
	{
		return "ForgetPassword";
	}
	@PostMapping("/sendotpforrecoverpassword")
	public String sendOtpForRecoverPassword(StudentEntity se)
	{
	  StudentEntity dbStudent =	studentRepo.findByEmail(se.getEmail());
	  if(dbStudent != null)
	  {
		  //generate otp
		  int otp = (int)(Math.random()*1000000);
		  
		  //send otp on mail
		  mailerService.sendMailForOtp(se.getEmail(), otp);
		  
		  //set otp to user account
		  dbStudent.setOtp(otp);
		  studentRepo.save(dbStudent);  //update query
	  }
		return "UpdatePassword";
	}
	
	@PostMapping("/updatepassword")
	public String updatePassword(StudentEntity se , Model model)
	{
		if(!se.getPassword().equals(se.getConfirmPassword()))
		{
			model.addAttribute("passwordError", "Password and Retype Password Must be same");
			return "UpdatePassword";
		}
		else {
			StudentEntity dbStudent = studentRepo.findByEmail(se.getEmail());
			
			if( dbStudent == null || se.getOtp() == -1 || dbStudent.getOtp() != se.getOtp())
			{
				//error invalid otp or email
				model.addAttribute("error", "Invalid Otp or Email");
				return "UpdatePassword";
				
			}
			else
			{
				
				//correct otp and email
				
				String plainPassword = se.getPassword();
				String encPassword =  passwordEncoder.encode(plainPassword);
				dbStudent.setPassword(encPassword);
				dbStudent.setOtp(-1);
				//update password
				studentRepo.save(dbStudent);
				model.addAttribute("msg" , "Password Modified");
					
				
			}
		}
		//send to login page 
		return "Login";
	}
	
	
	
	
	
	@GetMapping("/studentdashboard")
	public String studentDashboard(HttpSession session , Model model)
	{
		if(session.getAttribute("student") != null)
		{			
			return "StudentDashboard";
		}
		else
		{
			model.addAttribute("error", "Please Login First...!!");
			return "Login";
		}
	}
	
	
	@GetMapping("/ourcollege")
	public String ourCollege(HttpSession session)
	{
		if(session.getAttribute("student") != null)
		{
			System.out.println("student");
			return "StudentOurCollege";
		}
		else
		{
		 	System.out.println("none");
		 	return "OurCollege";
		}
			
	}
	
	
}


