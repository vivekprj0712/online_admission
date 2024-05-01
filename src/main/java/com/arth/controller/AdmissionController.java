package com.arth.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.List;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.arth.Entity.AdmissionEntity;
import com.arth.Entity.CourseEntity;
import com.arth.Entity.StudentEntity;
import com.arth.Service.MailerService;
import com.arth.repository.AdmissionRepository;
import com.arth.repository.CourseRepository;

import jakarta.servlet.http.HttpSession;

@Controller
public class AdmissionController {

	@Autowired
	AdmissionRepository admissionRepo;
	
	@Autowired
	CourseRepository courseRepo;
	
	@Autowired
	MailerService mailerService;
	
	@GetMapping("/newadmission")
	public String newAdmission(Model model , HttpSession session)
	
	{
		
		List<CourseEntity> courses =courseRepo.findAll();
		model.addAttribute("courseList" , courses);
		if(session.getAttribute("student") != null)
		{
			return "NewAdmission";
		}
		else
		{
			model.addAttribute("error", "Please Login First...!!");
			return "Login";
		}
	}
	
	@PostMapping("/saveadmission")
	public String saveAdmission(AdmissionEntity ae  , @RequestParam("photo_f") MultipartFile img , @RequestParam("marksheet_12th_f") MultipartFile ms12th , @RequestParam("marksheet_10th_f") MultipartFile ms10th)
	{
		 
		if (img.isEmpty() && ms10th.isEmpty() && ms12th.isEmpty()) {

		} else {
//			// Photo , marksheet12th , marksheet10th the file to folder

			try {
				String masterPathImg = "C:\\Royal\\Internship with Tejas Sir\\24-college-online-admission\\src\\main\\resources\\static\\dist\\images\\";
				String masterPath12th = "C:\\Royal\\Internship with Tejas Sir\\24-college-online-admission\\src\\main\\resources\\static\\dist\\marksheet12th\\";
				String masterPath10th = "C:\\Royal\\Internship with Tejas Sir\\24-college-online-admission\\src\\main\\resources\\static\\dist\\marksheet10th\\";

		    File pic = new File(masterPathImg,img.getOriginalFilename());
		    File marksheet12th = new File(masterPath12th,ms12th.getOriginalFilename());
		    File marksheet10th = new File(masterPath10th,ms10th.getOriginalFilename());
			
		    System.out.println(pic);
		    System.out.println(masterPath10th);
		    System.out.println(masterPath12th);
		    
				FileUtils.writeByteArrayToFile(pic, img.getBytes());
				FileUtils.writeByteArrayToFile(marksheet12th, ms12th.getBytes());
				FileUtils.writeByteArrayToFile(marksheet10th, ms10th.getBytes());
				
				ae.setPhoto("dist/images/" + img.getOriginalFilename());
				ae.setMarksheet_12th("dist/marksheet12th/" + ms12th.getOriginalFilename());
				ae.setMarksheet_10th("dist/marksheet10th/" + ms10th.getOriginalFilename());

				
				System.out.println(ae.getPhoto());
				System.out.println(ae.getMarksheet_10th());
				System.out.println(ae.getMarksheet_12th());
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		admissionRepo.save(ae);
		return "redirect:/payment?admissionId=" + ae.getAdmissionId();
		
	}
	
	@GetMapping("/payment")
	public String payment(AdmissionEntity ae , @RequestParam("admissionId") Integer admissionId , Model model)
	{
		AdmissionEntity admissions = admissionRepo.findById(admissionId).get();
		
		model.addAttribute("admissions", admissions);
		return "Payment";
		
	}
	
	@PostMapping("/generatereceipt")
	public String generateReceipt(Model model , AdmissionEntity ae)
	{
     		mailerService.sendMailForAdmSucc(ae.getEmail(), "Admission Form  Successfully Submitted..");
			AdmissionEntity admission = admissionRepo.save(ae);
			model.addAttribute("admission", admission);
			SimpleDateFormat ft = new SimpleDateFormat("dd-MM-yyyy"); 
			String str = ft.format(new java.util.Date()); 
			
			model.addAttribute("date", str);
			
			return "GenerateReceipt";
	}
	
	@GetMapping("/listadmission")
	public String listAdmission(Model model , HttpSession session)
	{
		List<AdmissionEntity> admissions=admissionRepo.findAll();
		model.addAttribute("admissions", admissions);	
		 
		if(session.getAttribute("admin") != null)
		 {
			 return "ListAdmission";
		 }
		 else {
			 return "Home";
		 }
		
	}
	
	@GetMapping("/deleteadmission")
	public String deleteAdmission(@RequestParam("admissionId") Integer admissionId)
	{
		admissionRepo.deleteById(admissionId);
		return "redirect:/listadmission";
	}

	@GetMapping("/viewadmission")
	public String viewAdmission(@RequestParam("admissionId") Integer admissionId , Model model)
	{
		AdmissionEntity admissions = admissionRepo.findById(admissionId).get();
		model.addAttribute("admission", admissions);
		return "ViewAdmission";
	}
}
