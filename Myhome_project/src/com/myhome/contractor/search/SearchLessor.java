package com.myhome.contractor.search;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/contractor/search-lessor.do")
public class SearchLessor extends HttpServlet{

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//http://localhost:8090/Myhome_project/contractor/search-lessor.do
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/contractor/search-lessor.jsp");
		dispatcher.forward(request, response);
		
	}
}
