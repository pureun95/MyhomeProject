package com.myhome.contractor.mypage;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/contractor/mypage-info.do")
public class MypageInfo extends HttpServlet{

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//http://localhost:8090/Myhome_project/contractor/mypage-info.do
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/contractor/mypage-info.jsp");
		dispatcher.forward(request, response);
		
	}
}
