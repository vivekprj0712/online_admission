package com.arth.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.arth.Entity.TeacherEntity;
import com.arth.repository.TeacherRepository;

import jakarta.servlet.http.HttpSession;

@Controller
public class TeacherController {

	@Autowired
	TeacherRepository teacherRepo;

	@GetMapping("/newteacher")
	public String newTeacher(Model model) {
//		List<RoleEntity> roles =roleRepo.findAll();
//		model.addAttribute("roleList" , roles);

//		model.addAttribute("teachers", new TeacherEntity());
		return "NewTeacher";
	}

	@PostMapping("/saveteacher")
	public String saveTeacher(TeacherEntity te, @RequestParam("profileImage") MultipartFile file) {

		if (file.isEmpty()) {

		} else {
			// profileImage the file to folder

			try {
				String masterPath = "C:\\Royal\\Internship with Tejas Sir\\24-college-online-admission\\src\\main\\resources\\static\\dist\\images\\";

				File img = new File(masterPath,file.getOriginalFilename());
				FileUtils.writeByteArrayToFile(img, file.getBytes());
				
				
				te.setProfileImagePath("dist/images/" + file.getOriginalFilename());

			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		teacherRepo.save(te);

		return "redirect:/listteacher";

	}

	

	@GetMapping("/listteacher")
	public String StudentListTeacher(Model model , HttpSession session) {

		List<TeacherEntity> teachers = teacherRepo.findAll();
		model.addAttribute("teacherList", teachers);
		
		 if(session.getAttribute("admin") != null)
		 {
			 return "AdminListTeacher";
		 }
		 if(session.getAttribute("student") != null)
		 {
			 System.out.println("student");
			 return "StudentListTeacher";
		 }
		 else
		 {
			 System.out.println("none");
			 return "ListTeacher";
	    }
	}

	@GetMapping("/deleteteacher")
	public String deleteTeacher(@RequestParam("teacherId") Integer teacherId)
	{
		teacherRepo.deleteById(teacherId);
		return "redirect:/listteacher";
	}

}
