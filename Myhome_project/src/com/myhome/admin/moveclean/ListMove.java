package com.myhome.admin.moveclean;

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

@WebServlet("/admin/moveclean/listmove.do")
public class ListMove extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		HashMap<String,String> map = new HashMap<String, String>();
		
		String search = req.getParameter("search");
		
		if(!(search == null || search.equals(""))) {
			map.put("search", search);
		}
		
		//1. DB 작업 > select
		//2. 목록 반환 + JSP 전달 & 호출하기
		
		HttpSession session = req.getSession();
		
		//1.
		MoveDAO dao = new MoveDAO();
		
		ArrayList<MoveDTO> list = dao.list();
	
		//2.
		req.setAttribute("list", list);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/adminmoveclean/listmove.jsp");
		dispatcher.forward(req, resp);

	}

}