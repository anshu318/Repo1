package com.example.SpringBootJdbc.web.dao;

import java.util.List;

import com.example.SpringBootJdbc.web.model.Employee;


public interface EmployeeDAO {
	int create(Employee employee);

	int update(Employee employee);
	
	int delete(int id);
	
	Employee read(int id);
	
	List<Employee> read();
}
