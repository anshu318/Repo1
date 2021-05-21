package com.example.SpringBootJdbc.web.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.example.SpringBootJdbc.web.dao.EmployeeDAO;
import com.example.SpringBootJdbc.web.dao.Impl.EmployeeDAOImpl;
import com.example.SpringBootJdbc.web.model.Employee;



@Controller
@SessionAttributes("firstName")
public class EmpController {
	@Autowired
	EmployeeDAO emp;
	
	@RequestMapping(value = "/list-emp", method = RequestMethod.GET)
	public String showempList(ModelMap model) {
		String name = (String) model.get("firstName");
		List<Employee> result = emp.read();
		model.put("emps",result);
		return "list-emp";
	}
	
	@RequestMapping(value = "/add-emp", method = RequestMethod.GET)
	public String showAddTodoPage(ModelMap model) {
		model.addAttribute("emp", new Employee(0,"",0.0));
		return "add-emp";
	}
	
	@RequestMapping(value = "/add-emp", method = RequestMethod.POST)
	public String addTodo(ModelMap model,  @Valid Employee empl, BindingResult result) {
		if(result.hasErrors()) {
			return "add-emp";
		}
		emp.create(empl);
		return "redirect:/list-emp";
	}
	
	@RequestMapping(value = "/delete-emp", method = RequestMethod.GET)
	public String deleteEmp(@RequestParam int id) {
		
		emp.delete(id);
		return "redirect:/list-emp";
	}
	
	@RequestMapping(value = "/update-emp", method = RequestMethod.GET)
	public String showUpdateEmpPage(@RequestParam int id,ModelMap model) {
		Employee empl = emp.read(id);
		model.put("emp",empl);
		return "add-emp";
	}
	
	@RequestMapping(value = "/update-emp", method = RequestMethod.POST)
	public String updateEmp(ModelMap model, @Valid Employee empl, BindingResult result) {
		
		if(result.hasErrors()) {
			return "add-emp";
		}
		emp.update(empl);
		return "redirect:/list-emp";
	}
}
