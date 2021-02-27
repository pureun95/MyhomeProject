package com.myhome.admin.board;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/admin/board/addpolicyok.do")
public class AddPolicyOk extends HttpServlet {


	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		
		//1. 데이터 가져오기 (subject, content)
		//2. DB작업 > insert
		//3. 결과 처리
		
		HttpSession session = req.getSession();
		
		
		
		//1.
		req.setCharacterEncoding("UTF-8");
		
		String title = req.getParameter("title");
		String content = req.getParameter("content");
		
		//로그인한 관리자번호
		String seqadmin = (String)session.getAttribute("seqAdmin");
		
	
		
		//2.
		PolicyDAO dao = new PolicyDAO();
		PolicyDTO dto = new PolicyDTO();
		
		dto.setTitle(title);
		dto.setContent(content);
		dto.setSeqadmin(seqadmin);
		dto.setViewcount("0");
		
		int result = dao.addpolicy(dto);
		
		if (result == 1) {
			//글쓰기 성공 -> 게시판 목록으로 이동
			resp.sendRedirect("/Myhome_project/admin/board/listpolicy.do");
			
		} else {
			//글쓰기 실패 -> 경고 + 뒤로가기
			PrintWriter writer = resp.getWriter();
			
			writer.print("<html><body>");
			writer.print("<script>");
			writer.print("alert('filed');");
			writer.print("history.back();");
			writer.print("</script>");
			writer.print("</body></html>");
			
			writer.close();
		}
		
		

	}

}






