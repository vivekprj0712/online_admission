package com.arth.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.arth.Entity.FeedbackEntity;
import com.arth.repository.FeedbackRepository;

import jakarta.servlet.http.HttpSession;

@Controller
public class FeedbackController {

	@Autowired
	FeedbackRepository feedbackRepo;
	
	
	
	@GetMapping("/newfeedback")
	public String newFeedback(Model model , HttpSession session)
	{
		
		if(session.getAttribute("student") != null)
		{
			return "StudentNewFeedback";
		}
		else
		{
			return "NewFeedback";
		}
	}
	
	@PostMapping("/savefeedback")
	public String saveFeedback(FeedbackEntity fe , Model model)
	{
		feedbackRepo.save(fe);
		model.addAttribute("msg","Thank You For FeedBack..!!");
		return "NewFeedback";
		
	}
	@GetMapping("/listfeedback")
	public String listFeedback(Model model)
	{
		
		List<FeedbackEntity> feedbacks =feedbackRepo.findAll();
		model.addAttribute("feedbackList", feedbacks);
		
		return "ListFeedback";
	}
	
	@GetMapping("/deletefeedback")
	public String deletefeedback(@RequestParam Integer feedbackId)
	{
		feedbackRepo.deleteById(feedbackId);
		return "redirect:/listfeedback"; 
	}
	
	
}
