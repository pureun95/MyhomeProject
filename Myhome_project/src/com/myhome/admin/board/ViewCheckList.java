package com.myhome.admin.board;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/admin/board/viewchecklist.do")
public class ViewCheckList extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		//1.
		String seq = req.getParameter("seq");
		
		//2.
		ChecklistDAO dao = new ChecklistDAO();
		
		ChecklistDTO dto = dao.getchecklist(seq);
		
		//3.
		req.setAttribute("dto", dto);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/adminboard/viewchecklist.jsp");
		dispatcher.forward(req, resp);

	}

}
