package com.test.user;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//http://localhost:8090/Myhome_project/user/mypage.do

@WebServlet("/user/mypage.do")
public class Mypage extends HttpServlet {

	//http://localhost:8090/Myhome_project/user/mypage.do
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/user/mypage/mypage.jsp");
		dispatcher.forward(req, resp);

	}

}