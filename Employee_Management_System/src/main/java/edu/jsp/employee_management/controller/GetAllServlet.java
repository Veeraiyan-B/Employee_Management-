package edu.jsp.employee_management.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.jsp.employee_management.dao.EmployeeDao;
import edu.jsp.employee_management.dto.Employee;

@WebServlet("/getall")
public class GetAllServlet  extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		EmployeeDao  dao=new EmployeeDao();
		List<Employee> employees=dao.getAllEmployeeDetails();
		req.setAttribute("list", employees);
		req.getRequestDispatcher("GetAll.jsp").forward(req, resp);
	}
	
	

}
