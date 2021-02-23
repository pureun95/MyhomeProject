package com.myhome.admin.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/admin/board/addpolicyok.do")
public class AddPolicyOk extends HttpServlet {


	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		
		//1. 데이터 가져오기 (subject, content)
		//2. DB작업 > insert
		//3. 결과 처리
		
		HttpSession session = req.getSession();
		
		
		
		//1.
		req.setCharacterEncoding("UTF-8");
		
		
		String subject = "";
		String content = "";
		
		//로그인한 관리자번호
		String aseq = (String)session.getAttribute("seq");

	}

}