package edu.jsp.employee_management.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.jsp.employee_management.dao.EmployeeDao;
import edu.jsp.employee_management.dto.Employee;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String email=req.getParameter("email");
		String password=req.getParameter("password");
		
		EmployeeDao dao=new EmployeeDao();
		
		Employee e=dao.getEmployeeByEmail(email);
		if(e!=null) {
			if(password.equals(e.getPassword())) {
				
				req.getRequestDispatcher("getall").forward(req, resp);
			}else {
				
				resp.getWriter().print("<h1>invalid password</h1>");
				req.getRequestDispatcher("Login.jsp").include(req, resp);
			}
			
			
		}else{
		
			resp.getWriter().print("<h1>invalid Email</h1>");
			req.getRequestDispatcher("Signup.jsp").include(req, resp);

		}
		
		
		
		
		
		
		
		
		
		
		
	}
	
	
	

}
