package com.example.SpringBootJdbc.web.dao.rowmapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.example.SpringBootJdbc.web.model.Employee;



public class EmployeeRowMapper implements RowMapper<Employee> {

	@Override
	public Employee mapRow(ResultSet rs, int rowNum) throws SQLException {
		
		Employee emp = new Employee();
		emp.setId(rs.getInt(1));
		emp.setFirstName(rs.getString(2));
		emp.setSalary(rs.getDouble(3));
		return emp;
	}

}
