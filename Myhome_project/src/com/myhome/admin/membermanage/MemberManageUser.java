package com.myhome.admin.membermanage;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/admin/membermanage/membermanage-user.do")
public class MemberManageUser extends HttpServlet{

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
					
		//1. 데이터 가져오기 (id, pw)
		//2. DB 작업 > select(등록된 회원이 맞는지 확인)
		//3. 결과 처리
			
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/adminmembermanage/membermanage-user.jsp");
		dispatcher.forward(request, response);
		
		
	}
	
}
