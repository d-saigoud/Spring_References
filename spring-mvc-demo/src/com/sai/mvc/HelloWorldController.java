package com.sai.mvc;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/hello")
public class HelloWorldController {

	@RequestMapping("/showForm")
	public String showForm() {
		return "my-form";
	}
	
	@RequestMapping("/processForm")
	public String processForm() {
		return "form-data";
	}
	
	@RequestMapping("/modelDataBasicVersion")
	public String addDataToModel(HttpServletRequest request, Model model) {
		
		String formData = request.getParameter("formData");
		
		formData = "Hi " + formData.toUpperCase() + ",";
		
		model.addAttribute("message", formData);
		
		return "form-data";
		
		
		
	}
	
	@RequestMapping("/modelDataRequestParam")
	public String addDataToModel(@RequestParam("formData") String formData, Model model) {
		
		formData = "Hi there " + formData.toUpperCase() + ",";
		
		model.addAttribute("message", formData);
		
		return "form-data";
		
		
		
	}
	
}
