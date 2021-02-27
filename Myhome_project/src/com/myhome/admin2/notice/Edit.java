package com.myhome.admin2.notice;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/admin2/notice/edit.do")
public class Edit extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		
	HttpSession session= req.getSession();
		
		String seq = req.getParameter("seq");// 청약테이블 번호

		NoticeDAO dao = new NoticeDAO();
		NoticeDTO dto = dao.view(seq);

		
		
		dto.setWriteDate(dto.getWriteDate().substring(0, 10));
		
		req.setAttribute("dto", dto);

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/admin2notice/edit.jsp");
		dispatcher.forward(req, resp);

	}

}
