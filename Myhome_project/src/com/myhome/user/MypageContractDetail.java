package com.myhome.user;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/user/mypage-contract-detail.do")
public class MypageContractDetail extends HttpServlet{

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		
		
		
		
		//http://localhost:8090/Myhome_project/user/mypage-contract-detail.do
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/user/mypage-contract-detail.jsp");
		dispatcher.forward(request, response);
		
	}
}
