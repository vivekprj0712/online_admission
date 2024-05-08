package com.arth.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.arth.Entity.AdminEntity;
import com.arth.Entity.AdmissionEntity;
import com.arth.Entity.CourseEntity;
import com.arth.Entity.MeritEntity;
import com.arth.Entity.RoleEntity;
import com.arth.repository.AdmissionRepository;
import com.arth.repository.CourseRepository;
import com.arth.repository.MeritRepository;

import jakarta.mail.Session;
import jakarta.servlet.http.HttpSession;

@Controller
public class MeritController {

	@Autowired
	MeritRepository meritRepo;

	@Autowired
	CourseRepository courseRepo;

	@Autowired
	AdmissionRepository admissionRepo;

	@GetMapping("/newmerit")
	public String newMerit(CourseEntity ce, Model model, HttpSession session) {
		if (session.getAttribute("admin") != null) {

			List<CourseEntity> courses = courseRepo.findAll();
			model.addAttribute("courses", courses);
			return "NewMerit";
		} else {
			model.addAttribute("error", "Please Loging First...!!");
			return "Login";
		}
	}

	@PostMapping("/savemerit")
	public String saveMerit(MeritEntity me) {
		meritRepo.save(me);

		return "redirect:/listmerit";

	}

	@GetMapping("/listmerit")
	public String listMerit(Model model, HttpSession session) {

		List<MeritEntity> merits = meritRepo.findAll();

		model.addAttribute("merits", merits);

				
		if (session.getAttribute("admin") != null) {
			System.out.println("admin");
			return "AdminMeritList";
		} else if(session.getAttribute("student") != null) {

			return "StudentListMerit";
		}
		else
		{
			return "ListMerit";
		}
	}
	
	@GetMapping("/viewmerit")
	public String viewMerit(@RequestParam("meritId") Integer meritId , Model model , HttpSession session)
	{
		
		MeritEntity me = meritRepo.findById(meritId).get();
		List<AdmissionEntity> generalStudents = admissionRepo.findByAdmissionPerc("general", me.getGeneralCutoff(),me.getGeneralQuota(),me.getRoundTitle());
		List<AdmissionEntity> obcStudents = admissionRepo.findByAdmissionPerc("obc", me.getObcCutoff(),me.getObcQuota(),me.getRoundTitle());
		List<AdmissionEntity> stStudents = admissionRepo.findByAdmissionPerc("st", me.getStCutoff(), me.getStQuota(),me.getRoundTitle());
		List<AdmissionEntity> scStudents = admissionRepo.findByAdmissionPerc("sc", me.getScCutoff(), me.getScQuota(),me.getRoundTitle());

		
		System.out.println("\ngeneral");
		generalStudents.stream().forEach(s->System.out.print(s.getAdmissionId()+" , "));
		System.out.println("\nobc");
		obcStudents.stream().forEach(s->System.out.print(s.getAdmissionId()+" , "));
		System.out.println("\nst");
		stStudents.stream().forEach(s->System.out.print(s.getAdmissionId()+" , "));
		System.out.println("\nsc");
		scStudents.stream().forEach(s->System.out.print(s.getAdmissionId()+" , "));
			 

		List<AdmissionEntity> finalMeritStudents = new ArrayList<>();
		finalMeritStudents.addAll(generalStudents);
		finalMeritStudents.addAll(obcStudents);
		finalMeritStudents.addAll(stStudents);
		finalMeritStudents.addAll(scStudents);
		
		

		for (int i = 0; i < finalMeritStudents.size(); i++) {
			finalMeritStudents.get(i).setStatus(me.getRoundTitle());
		}
		
		admissionRepo.saveAll(finalMeritStudents);
		
		
		
		SimpleDateFormat ft = new SimpleDateFormat("dd-MM-yyyy"); 
		String str = ft.format(new java.util.Date()); 
		model.addAttribute("date", str);
		model.addAttribute("finalmeritStudents", finalMeritStudents);
		model.addAttribute("merits", me);

		if(session.getAttribute("student") !=  null)
		{
			return "StudetViewMerit";
		}
		else if(session.getAttribute("admin") != null)

		{
			return "AdminViewMerit";
					
		}
		else
		{
			return "ViewMerit";
		}
	}
	
	@GetMapping("/enrollment")
	public String enrollment(@RequestParam("admissionId") Integer admissionId ,@RequestParam("meritId") Integer meritId, HttpSession session , Model model)
	{
		MeritEntity me = meritRepo.findById(meritId).get();
		AdmissionEntity admissions = admissionRepo.findById(admissionId).get();
		List<AdmissionEntity> confirmAdmissions = admissionRepo.findByConfirmAdmission("confirm");
		SimpleDateFormat ft = new SimpleDateFormat("dd-MM-yyyy"); 
		String str = ft.format(new java.util.Date()); 
	
		model.addAttribute("date", str);
		
		if(confirmAdmissions.size() != 40)
		{		
		
		if (session.getAttribute("student") != null) {
			
			model.addAttribute("admissions", admissions);
			model.addAttribute("merit",me);
			model.addAttribute("date", str);
			return "EnrollmentPayment";
		}
		
		
		
		else
		{
			model.addAttribute("error", "Please Login First...!!");
			return "Login";
		}
		
		}
		else
		{
			model.addAttribute("msg", "Sorry Admission is Full...");
			return "AdmissionFull";
		}
		
	}
	
	
	
	@GetMapping("/deletemerit")
	public String deleteMerit(@RequestParam("meritId") Integer meritId)
	
	{
		meritRepo.deleteById(meritId);
		return "listmerit";
	}
	
	//edit
	@GetMapping("/editmerit")
	public String editMerit(@RequestParam("meritId") Integer meritId , Model model)
	{
		MeritEntity merit = meritRepo.findById(meritId).get();
		model.addAttribute("editMerit", merit);
				
		return "EditMerit"; 
    }
	
	@GetMapping("/rejectedmerit")
	public String rejectedMerit(@RequestParam("meritId") Integer meritId , Model model)
	{
		List<AdmissionEntity> rejectedStudents = admissionRepo.findByAdmissionReject();
		model.addAttribute("rejectStudents", rejectedStudents);
		
		return "RejectedMerit";
	}
	
	
	@GetMapping("/pendingmerit")
	public String pendingMerit(@RequestParam("meritId") Integer meritId , Model model)
	{
		MeritEntity me = meritRepo.findById(meritId).get();
		List<AdmissionEntity> pendingStudents = admissionRepo.findByAdmissionPending(me.getRoundTitle());
		model.addAttribute("pendingStudents", pendingStudents);
		
		return "PendingMerit";
	}
	
	@GetMapping("/listconfirmadmission")
	public String listConfirmAdmission(Model model , MeritEntity me)
	{
		 
		List<AdmissionEntity> confirmAdmissions = admissionRepo.findByConfirmAdmission("confirm");
		model.addAttribute("confirmAdmission", confirmAdmissions);
		return "ListConfirmAdmission";
		
	}

	
}
