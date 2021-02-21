package com.myhome.member;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/member/chat.do")
public class Chat extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		
		//http://localhost:8090/Myhome_project/member/chat.do
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/member/chat.jsp");
		dispatcher.forward(req, resp);
	}
}


