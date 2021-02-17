package com.test.myhome.member;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/member/register.do")
public class Register extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		HashMap<Integer, String> location = new HashMap<Integer, String>();
		
		MemberDAO dao = new MemberDAO();
		
		//지역 받아옴
		location = dao.getLocation();
		
		//지역 보내줌
		req.setAttribute("location", location);
			
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/Member/Register.jsp");
		dispatcher.forward(req, resp);
	}
}
