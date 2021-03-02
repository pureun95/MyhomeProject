package com.myhome.user;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Q&A 게시판 게시글 상세페이지를 출력하는 클래스입니다.
 * @author Blue
 *
 */
@WebServlet("/Myhome/user/boardqnaview.do")
public class BoardQnAView extends HttpServlet {
	
	/**
	 * 클라이언트 웹브라우저에 DB결과를 전달하는 메소드입니다.
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession session = request.getSession();
		
		String seq = request.getParameter("seq"); //오류나면 여기 수정하기*****
		String search = request.getParameter("search"); //검색어
		String page = request.getParameter("page");
		
		BoardQnADAO dao = new BoardQnADAO();
		
		if (session.getAttribute("read") == null || (boolean)session.getAttribute("read") == false) {
			
			//dao.updateViewCount(seq);
			session.setAttribute("read", true);
		}
		
		BoardQnADTO dto = dao.get(seq);
		
		dao.close();
		dto.setContent(dto.getContent().replace("\r\n", "<br>"));
		
		request.setAttribute("dto", dto);
		request.setAttribute("search", search);
		request.setAttribute("page", page);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/user/board-qna-view.jsp");
		dispatcher.forward(request, response);
		
	}

}
