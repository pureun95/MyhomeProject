package com.myhome.admin.property;

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



@WebServlet("/admin/property/viewproperty.do")
public class ViewProperty extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		//1.
		String seq = req.getParameter("seq");
		
		//2.
		PropertyDAO dao = new PropertyDAO();
		
		/* 번호를 넘겨주면 글번호에 해당하는 글을 가져온다 */
		PolicyDTO dto = dao.get(seq);
		
		dao.close(); //****
		
		//3. JSP에게 넘겨주기
		req.setAttribute("dto", dto);
		
		
		
		
		
/*		
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
		
		
		//3-2. 중개인 매물번호 쿼리에 보내기
			int seqProperty = Integer.parseInt(req.getParameter("seq").toString());
			ArrayList<PropertyDTO> lessorList = dao.LessorList(seqProperty);
			
		//4-1. 올린매물리스트 보내기
			req.setAttribute("list", list);
		
			
		//4-2. 일반회원 매물거래내역 리스트 보내기	
			req.setAttribute("lessorList", lessorList);	
			req.setAttribute("nickname", nickname);
*/			
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/adminproperty/viewproperty.jsp");
		dispatcher.forward(req, resp);
		
	}
}
