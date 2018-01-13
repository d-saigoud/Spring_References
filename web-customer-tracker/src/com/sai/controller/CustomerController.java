package com.sai.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sai.dao.CustomerDAO;
import com.sai.entity.Customer;

@Controller
@RequestMapping("/customer")
public class CustomerController {

	@Autowired
	private CustomerDAO customerDao;
	
	@RequestMapping("/list")
	public String listCustomers(Model model) {
		
		//Get Customers from Dao
		List<Customer> customers = customerDao.getCustomers();
		
		//Add customers to the model
		model.addAttribute("customers", customers);
		
		return "list-customers";
	}
	
}
