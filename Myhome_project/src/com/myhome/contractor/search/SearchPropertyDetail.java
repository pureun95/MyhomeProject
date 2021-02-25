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
			
		//중개인, 일반회원 닉네임으로 구분
		//session 형변환
			String nickname = (String) session.getAttribute("nickname");
			System.out.println(nickname);
			
		//3-1. 중개인 seq 쿼리에 보내기
			ArrayList<PropertyDTO> list = dao.list(session.getAttribute("seqAllUser").toString());
			
			
		//3-2. 일반회원 seq 쿼리에 보내기
			ArrayList<PropertyDTO> lessorList = dao.LessorList(session.getAttribute("seqAllUser").toString());
		
			
		//4-1. 올린매물리스트 보내기
			req.setAttribute("list", list);
			
		//4-2. 일반회원 매물거래내역 리스트 보내기	
			req.setAttribute("lessorList", lessorList);	
			req.setAttribute("nickname", nickname);
		
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/contractor/search-property-detail.jsp");
		dispatcher.forward(req, resp);
		
	}
}
