package com.myhome.admin2.contract;

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

@WebServlet("/admin2/contract/list.do")
public class List extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


		// 검색
		HashMap<String, String> map = new HashMap<String, String>();

		String search = req.getParameter("search");

		if (!(search == null || search.trim().equals(""))) {
			map.put("search", search);
		}

		HttpSession session = req.getSession();

		ContractDAO dao = new ContractDAO();

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
					+ "<a class='page-link page-a' href=\"/Myhome_project/admin2/contract/list.do\">"
					+ "이전</a></li>");
		} else {				
			pagebar += String.format("<li class=\"page-item\">"
					+ "<a class=\"page-link page-a\" "
					+ "href=\"/Myhome_project/admin2/contract/list.do?page=%d\">"
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
			+ " href=\"/Myhome_project/admin2/contract/list.do?page=%d\">%d</a></li>", n, n);
			
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
			+ " href=\"/Myhome_project/admin2/contract/list.do?page=%d\">"
			+ "다음</a></li>", n);
		}
		
		

		ArrayList<ContractDTO> list = dao.list(map);
		// 날짜 추출
		for (ContractDTO dto : list) {

			dto.setContractDate(dto.getContractDate().substring(0, 10));

		}
		
		req.setAttribute("list", list);
		req.setAttribute("search", search);
		req.setAttribute("pagebar", pagebar);
		req.setAttribute("nowPage", nowPage);

		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/admin2contract/list.jsp");
		dispatcher.forward(req, resp);

	}

}
