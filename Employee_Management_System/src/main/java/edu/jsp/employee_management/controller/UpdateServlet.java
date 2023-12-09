package edu.jsp.employee_management.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.jsp.employee_management.dao.EmployeeDao;
import edu.jsp.employee_management.dto.Employee;

@WebServlet("/update")
public class UpdateServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id=Integer.parseInt(req.getParameter("id"));
		
		String name=req.getParameter("name");
		String cname=req.getParameter("cname");
		String job=req.getParameter("job");
        double sal=Double.parseDouble(req.getParameter("sal"));
        String email=req.getParameter("email");
        String password=req.getParameter("password");
        long phone=Long.parseLong(req.getParameter("phone"));
        
        Employee employee=new Employee();
        employee.setId(id);
        employee.setName(name);
        employee.setCname(cname);
        employee.setJob(job);
        employee.setEmail(email);
        employee.setPassword(password);
        employee.setSal(sal);
        employee.setPhone(phone);
		
		new EmployeeDao().UpdateEmployee(employee);
		resp.getWriter().print("<h1>Update</h1>");
        
		
	}

	
	
}
