package com.companyname.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.companyname.entity.Employee;
import com.companyname.service.EmployeeService;

@Controller
public class EmployeeController {

	@Autowired
	private EmployeeService employeeService;
	
	
	@RequestMapping(value = "/employees", method = RequestMethod.GET)
	public String selectEmployees(Model model) {
		
		List<Employee> listEmployees=employeeService.listEmployees();
		//System.out.println(listEmployees);
		
		model.addAttribute("listEmployees", listEmployees);
		
		return "employeesListPage";
	}
}
