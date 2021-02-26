package com.myhome.user;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/user/mypagecontract.do")
public class MypageContract extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//1. 회원번호를 가져온다.
		//2. DB 작업 -> insert -> 나와 관련된 모든 전자계약 목록 요청
		//3. 결과 반환
		
		
		HttpSession session = req.getSession();
		int seqUser = Integer.parseInt(session.getAttribute("seqAllUser").toString());
		
		
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/user/mypage-contract.jsp");
		dispatcher.forward(req, resp);

	}

}