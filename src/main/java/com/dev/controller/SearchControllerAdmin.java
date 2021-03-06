package com.dev.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.dev.dao.EmpInfoDAO;
import com.dev.dao.HIBERNATE_Impl;
import com.dev.dto.Employee;

@Controller
@RequestMapping("/search")
public class SearchControllerAdmin {

	/*@RequestMapping(value="/searchForm", method= RequestMethod.GET)
	public String  getSearchForm()
	{
		return "Search";
	}*/
	
	@RequestMapping(value="/searchReturnAdmin", method=RequestMethod.POST)
	public String searchReturn(Employee emp, Model model,HttpServletRequest req)
	{
		//Employee emp = new Employee();
		HttpSession session = req.getSession(false);
		
		if(session!=null)
		{ 
			EmpInfoDAO em = new HIBERNATE_Impl();
			Employee emp1 = em.searchEmp(emp.getEmp_ID()); 
			model.addAttribute("emp1", emp1);
			System.out.println(emp1);
			return "AdminEdit";
			 
		}
		else
		{
			return "AdminLogin";
		}
	
		
	
		
	}

	
}
