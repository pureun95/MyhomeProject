package com.myhome.admin.board;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/admin/board/listchecklist.do")
public class ListCheckList extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		
		//1.
		ChecklistDAO dao = new ChecklistDAO();
		
		ArrayList<ChecklistDTO> listchecklist = dao.listchecklist();
		
		//2.
		req.setAttribute("listchecklist", listchecklist);
		
		
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/adminboard/listchecklist.jsp");
		dispatcher.forward(req, resp);

	}

}
