package com.example.SpringBootJdbc.web.dao.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import com.example.SpringBootJdbc.web.dao.EmployeeDAO;
import com.example.SpringBootJdbc.web.dao.rowmapper.EmployeeRowMapper;
import com.example.SpringBootJdbc.web.model.Employee;

@Component("employeeDAO")
public class EmployeeDAOImpl implements EmployeeDAO {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	@Override
	public int create(Employee employee) {
		String sql = "insert into emp values(?,?,?)";
		int result = jdbcTemplate.update(sql, employee.getId(), employee.getFirstName(), employee.getSalary());
		return result;
	}

	@Override
	public int update(Employee employee) {
		String sql = "update emp set name=?, salary=? where id=?";
		int result = jdbcTemplate.update(sql, employee.getFirstName(), employee.getSalary(), employee.getId());
		return result;
	}

	@Override
	public int delete(int id) {
		String sql = "delete from emp where id=?";
		int result = jdbcTemplate.update(sql,id);
		return result;
	}

	@Override
	public Employee read(int id) {
		String sql = "select * from emp where id=?";
		EmployeeRowMapper emprowmapper = new EmployeeRowMapper();
		Employee employee = jdbcTemplate.queryForObject(sql, emprowmapper,id);
		return employee;
	}

	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}

	@Override
	public List<Employee> read() {
		String sql = "select * from emp";
		EmployeeRowMapper emprowmapper = new EmployeeRowMapper();
		List<Employee> result = jdbcTemplate.query(sql, emprowmapper);
		return result;
	}

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}


}
