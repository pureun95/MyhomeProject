package com.myhome.admin2.report;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * 신고게시글 목록 반환 페이지 서블릿 
 * @author 이대홍
 *
 */
@WebServlet("/admin2/report/list.do")
public class List extends HttpServlet {

/*
<option value="1"> 중고장터</option>
<option value="2"> 커뮤니티</option>
<option value="3"> 매물거래</option>

*/	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HashMap<String, String> map = new HashMap<String, String>();

		String search = req.getParameter("search");
		
		
		String category = req.getParameter("category");
		
		if(category==null || category.trim().equals("") ) {
			category="0";
		}
		
		map.put("category", category);
		
		
		System.out.println("category : " +category);
		
		if (!(search == null || search.trim().equals(""))) {
			map.put("search", search);
		}
		
		
		HttpSession session = req.getSession();
		session.setAttribute("read", false);
		
		ReportDAO dao = new ReportDAO();

		// 페이징
		int nowPage = 0; // 현재 페이지 번호
		int totalCount = 0; // 총 게시물 수
		int pageSize = 10; // 한페이지 당 출력 개수
		int totalPage = 0; // 총 페이지 수
		int begin = 0; // rnum 시작 번호
		int end = 0; // rnum 끝 번호
		int n = 0; // 페이지바 관련 변수
		int loop = 0; // 페이지바 관련 변수
		int blockSize = 10; // 페이지바 관련 변수

		String page = req.getParameter("page");

		if (page == null || page == "") {
			// 기본 -> page = 1
			nowPage = 1;
		} else {
			nowPage = Integer.parseInt(page);
		}

		begin = ((nowPage - 1) * pageSize) + 1;
		end = begin + pageSize - 1;
		
		map.put("begin", begin + "");
		map.put("end", end + "");
		

		totalCount = dao.totalCount(map); //총 게시물 수
				
		totalPage = (int)Math.ceil((double)totalCount / pageSize); //총 페이지 수
		
		
		String pagebar = "";
		
		loop = 1;
		n = ((nowPage - 1) / blockSize) * blockSize + 1;
		

		// 이전10페이지
		if (n == 1) {
			pagebar += String.format("<li class='page-item disabled'>"
					+ "<a class='page-link page-a' href=\"/Myhome_project/admin2/report/list.do\">"
					+ "이전</a></li>");
		} else {				
			pagebar += String.format("<li class=\"page-item\">"
					+ "<a class=\"page-link page-a\" "
					+ "href=\"/Myhome_project/admin2/report/list.do?page=%d\">"
					+ "이전</a></li>"
					, n - 1);
		}
		
//<li class="page-item"><a class="page-link page-a" href="">1</a></li>
		
		while (!(loop > blockSize || n > totalPage)) {
			
			if (nowPage == n) {
				pagebar += "<li class='page-item'>";
			} else {
				pagebar += "<li>";
			}
			
			pagebar += String.format("<a class='page-link page-a' "
			+ " href=\"/Myhome_project/admin2/report/list.do?page=%d\">%d</a></li>", n, n);
			
			loop++;
			n++;
		}
		
		
//다음 10페이지로 이동
//<li><a class="page-link page-a" href="">다음</a></li>
				
		if (n > totalPage) {
			pagebar += String.format(
			"<li><a class='page-link page-a disabled' href=\"\">"
			+ "다음</a></li> ");
		} else {
			pagebar += String.format(
			"<li><a class='page-link page-a ' "
			+ " href=\"/Myhome_project/admin2/report/list.do?page=%d\">"
			+ "다음</a></li>", n);
		}
		

		ArrayList<ReportDTO> list = dao.list(map);
	
		dao.close();
		if( !category.equals("0")) {
			req.setAttribute("list", list);
			req.setAttribute("search", search);
			req.setAttribute("pagebar", pagebar);
			req.setAttribute("nowPage", nowPage);
				
		};
		
		req.setAttribute("category", category);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/admin2report/list.jsp");
		dispatcher.forward(req, resp);

	}

}
