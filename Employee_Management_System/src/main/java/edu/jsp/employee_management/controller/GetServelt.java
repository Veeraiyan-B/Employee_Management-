package edu.jsp.employee_management.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.jsp.employee_management.dao.EmployeeDao;
import edu.jsp.employee_management.dto.Employee;

@WebServlet("/get")
public class GetServelt  extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	int id=	Integer.parseInt(req.getParameter("id"));
	
	Employee e=new EmployeeDao().getEmployeeById(id);
	req.setAttribute("employee", e);
	req.getRequestDispatcher("Update.jsp").forward(req, resp);
		
	}

	
	
}
