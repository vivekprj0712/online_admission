package com.arth.controller;

import java.text.SimpleDateFormat;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.arth.Entity.AdmissionEntity;
import com.arth.Entity.MeritEntity;
import com.arth.Entity.PaymentEntity;
import com.arth.Service.MailerService;
import com.arth.repository.AdmissionRepository;
import com.arth.repository.MeritRepository;
import com.arth.repository.PaymentRepository;

@Controller
public class PaymentController {
	
	
	@Autowired
	PaymentRepository paymentRepo;
	
	@Autowired
	AdmissionRepository admissionRepo;
	
	@Autowired
	MailerService mailerService;
	
	@Autowired
	MeritRepository meritRepo;
	
	@PostMapping("/savepayment")
	public String savePayment(PaymentEntity pe , AdmissionEntity ae , @RequestParam("admissionId") Integer admissionId)
	{
		if(pe.getPaymentCost() == 17500)
		{
			pe.setMonth("6 Month");
		}
		else
		{
			pe.setMonth("12 Month");
		}
		PaymentEntity payment =	paymentRepo.save(pe);
		AdmissionEntity admissions = admissionRepo.findById(admissionId).get();
		admissions.setStatus("confirm");
		admissionRepo.save(admissions);
		
		return "redirect:/generateenrollmentreceipt?paymentId=" + payment.getPaymentId()+"&admissionId="+payment.getAdmissionId();
	}
	@GetMapping("/generateenrollmentreceipt")
	public String generateEnrollmetReceipt(Model model , PaymentEntity pe , @RequestParam("paymentId") Integer paymentId , @RequestParam("admissionId") Integer admissionId)
	{
			AdmissionEntity admissions = admissionRepo.findById(admissionId).get();
			mailerService.sendMailForAdmSucc(admissions.getEmail(), "Thank You... Your Admission Comfirmed...");
			PaymentEntity payments = paymentRepo.findById(paymentId).get();
			
			model.addAttribute("payment", payments);
		    model.addAttribute("admission", admissions);
			
		    
		    return "GenerateEnrollmentReceipt";
	}
	
	@GetMapping("/listpayment")
	public String listPayment(PaymentEntity pe , Model model) {
	
	List<PaymentEntity> payments = 	paymentRepo.findAll();
	model.addAttribute("payments", payments);
		return "ListPayment";
	}
	
	@GetMapping("/viewpayment")
	public String viewPayment(@RequestParam("paymentId") Integer paymentId , Model model)
	{
		PaymentEntity payment = paymentRepo.findById(paymentId).get();
		model.addAttribute("payment", payment);
		return "ViewPayment";
	}
	

}
