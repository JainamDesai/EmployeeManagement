package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Query;
import org.hibernate.Session;

import com.helper.FactoryClass;
import com.model.Employee;

/**
 * Servlet implementation class LoginControll
 */
public class LoginControll extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		int id= Integer.valueOf(request.getParameter("id"));
		Session s = FactoryClass.getSessionFactory().openSession();
		Query q = s.createSQLQuery("select * from employee where emp_id ="+id);
		List li = q.list();	
		Employee emp = s.get(Employee.class,id);
	    int listsize = li.size();
	    if(listsize>0){
	    	out.println("<h1>Employee id:"+emp.getEmp_id()+"</h1>");
	    	out.println("<h1>Employee Name:"+emp.getEmp_name()+"</h1>");
	    	out.println("<h1>Employee LastName:"+emp.getLastname()+"</h1>");
	    	out.println("<h1>Employee Location:"+emp.getLocation()+"</h1>");
	    	out.println("<h1>Employee salary:"+emp.getSalary()+"</h1>");	
	    	out.println("<a href=AdminLogin.jsp><h4>back to home</h4></a>");
	    	
	    }
	    else
	    {
	    	RequestDispatcher rd = request.getRequestDispatcher("error.jsp");
	    	rd.forward(request, response);
	    	
	    }
		
		
		
		
	}

}
