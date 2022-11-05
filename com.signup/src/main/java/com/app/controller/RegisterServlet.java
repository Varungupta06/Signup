package com.app.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.dao.Dao;
import com.app.dao.UserDao;
import com.app.model.User;


@WebServlet("/RegisterServlet")
@MultipartConfig
public class RegisterServlet extends HttpServlet {
	 
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public RegisterServlet() {
        
     
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException  {
		
		doGet(request, response);
		 String check = request.getParameter("check");
		    response.setContentType("text/html");
			PrintWriter out = response.getWriter();
			
			String firstName = request.getParameter("firstName");
			String lastName = request.getParameter("lastName");
			String email = request.getParameter("email");
			String pNumber= request.getParameter("pNumber");
			String password = request.getParameter("pwd");
			
			//create user obejct and set all data to that object
			User user = new User(firstName,lastName,email,pNumber,password);
		
			//database
			 UserDao dao;
			
			try {
				dao = new UserDao(Dao.getConnection());
				 if(dao.saveUser(user)) {
					 out.println("Successfully Register");  
				   }
				 else {
					
					 out.println("Something went Wrong");
					 out.println("Try again!");
				 }
			} catch (ClassNotFoundException | SQLException e) {
				
				e.printStackTrace();
			}
			 
			  
}
		
	}

