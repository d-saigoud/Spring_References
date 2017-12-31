package com.sai.mvc;

import javax.validation.Valid;

import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/customer")
public class CustomerController {

	@RequestMapping("/showForm")
	public String showForm(Model model) {
		
		model.addAttribute("customer", new Customer());
		
		return "customer-form";
	}
	
	@RequestMapping("/processForm")
	public String processForm(@Valid @ModelAttribute("customer") Customer customer, BindingResult bindingResult) {
		
		System.out.println("Customer Last Name : " + customer.getLastname());
		
		System.out.println("Binding Result: " + bindingResult);
		
		if(bindingResult.hasErrors()) {
			return "customer-form";
		}
		else {
			return "customer-details";
		}
		
	}
	
	@InitBinder
	public void initBinder(WebDataBinder webDataBinder) {
		
		StringTrimmerEditor stringTrimEditor = new StringTrimmerEditor(true);
		webDataBinder.registerCustomEditor(String.class, stringTrimEditor);
		
	}
	
}
