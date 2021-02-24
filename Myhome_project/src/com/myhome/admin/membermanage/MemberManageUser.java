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

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
					
		//1. 데이터 가져오기 (id, pw)
		//2. DB 작업 > select(등록된 회원이 맞는지 확인)
		//3. 결과 처리
		
		
		HashMap<String,String> map = new HashMap<String, String>();
		
		String search = req.getParameter("search");
		
		if(!(search == null || search.equals(""))) {
			map.put("search", search);
		}
		
		
		HttpSession session = req.getSession();
		
		//1.
		ManageUserDAO dao = new ManageUserDAO();
		
		 ArrayList<ManageUserDTO> list = dao.list();
		 
				
		//2.
		req.setAttribute("list", list);
		
			
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/adminmembermanage/membermanage-user.jsp");
		dispatcher.forward(req, resp);
		
		
	}
	
}
