package com.myhome.admin.board;

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

@WebServlet("/admin/board/listpolicy.do")
public class ListPolicy extends HttpServlet {

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
		
		/* session .setAttribute("read", value); */
		
		
		//1.
		PolicyDAO dao = new PolicyDAO();
		
		ArrayList<PolicyDTO> listpolicy = dao.listpolicy(map);
		
		/*
		 * for (PolicyDTO dto : list) {
		 * 
		 * dto.setWritedate(dto.getWritedate().substring(0, 10)); }
		 */
		
		//2.
		req.setAttribute("listpolicy", listpolicy);
		req.setAttribute("search", search);
		/*
		 * //페이징 int nowPage = 0; //현재 페이지 번호 int totalCount = 0; //총 게시물 수 int pageSize
		 * = 10; //한페이지 당 출력 개수 int totalPage = 0; //총 페이지 수 int begin = 0; //rnum 시작 번호
		 * int end = 0; //rnum 끝 번호 int n = 0; //페이지바 관련 변수 int loop = 0; //페이지바 관련 변수
		 * int blockSize = 10; //페이지바 관련 변수
		 * 
		 * String page = req.getParameter("page");
		 * 
		 * if (page == null || page == "") { //기본 -> page = 1 nowPage = 1; } else {
		 * nowPage = Integer.parseInt(page); }
		 * 
		 * 
		 * begin = ((nowPage - 1) * pageSize) + 1; end = begin + pageSize - 1;
		 * 
		 * map.put("begin", begin + ""); map.put("end", end + "");
		 * 
		 * totalCount = dao.getTotalCount(map); //총 게시물 수
		 * System.out.println(totalCount); //274개
		 * 
		 * totalPage = (int)Math.ceil((double)totalCount / pageSize); //총 페이지 수
		 * System.out.println(totalPage); //27페이지 -> 28페이지
		 */
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/adminboard/listpolicy.jsp");
		dispatcher.forward(req, resp);

	}

}
