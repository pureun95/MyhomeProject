package com.myhome.contractor.search;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.myhome.contractor.mypage.PropertyDAO;
import com.myhome.contractor.mypage.PropertyDTO;

@WebServlet("/contractor/search-property-detail.do")
public class SearchPropertyDetail extends HttpServlet{

	
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//http://localhost:8090/Myhome_project/contractor/search-property-detail.do
		
		
		//1. 매물 정보
			PropertyDAO dao = new PropertyDAO();
								
		//2. session 받기
			HttpSession session = req.getSession();
								
		//3. 중개인 seq 쿼리에 보내기
			ArrayList<PropertyDTO> list = dao.list(session.getAttribute("seqAllUser").toString());
								
		//4. 올린매물리스트 보내기
			req.setAttribute("list", list);
				
		
		
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/contractor/search-property-detail.jsp");
		dispatcher.forward(req, resp);
		
	}
}
