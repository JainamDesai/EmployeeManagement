package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.helper.FactoryClass;
import com.model.Employee;

/**
 * Servlet implementation class EmployeeInfo
 */
public class EmployeeInfo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EmployeeInfo() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		response.getWriter().append("Served at: ").append(request.getContextPath());
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String location = request.getParameter("location");
		String lastname = request.getParameter("lastname");
		int salary = Integer.valueOf(request.getParameter("salary"));
		Session s = FactoryClass.getSessionFactory().openSession();
		Employee emp = new Employee();
		emp.setEmp_name(username);
		emp.setLocation(location);
		emp.setSalary(salary);
		emp.setPass(password);
		emp.setLastname(lastname);
		Transaction tc = s.beginTransaction();
		s.save(emp);
		tc.commit();
		out.println("<h1>Data save Successfully</h1>");
		s.close();
	}

	

}
