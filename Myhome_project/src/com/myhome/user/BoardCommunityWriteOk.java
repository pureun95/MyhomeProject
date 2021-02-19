package com.myhome.user;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/Myhome/user/boardcommunitylwriteok.do")
public class BoardCommunityWriteOk extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession session = req.getSession();
		
		//1.
		req.setCharacterEncoding("UTF-8");
		
		String title = "";
		String content = "";
		String seqUser = (String)session.getAttribute("seq"); //오류나면 이부분 수정하기*****
		
		try {
			
			//첨부파일 코드 부분!!! 오류나면 여기 수정하기*****
			
		} catch (Exception e) {
			System.out.println("BoardCommunityWriteOk.doPost()");
			e.printStackTrace();
		}
		
		
		//2.
		BoardCommunityDAO dao = new BoardCommunityDAO();
		BoardCommunityDTO dto = new BoardCommunityDTO();
		
		dto.setTitle(title);
		dto.setContent(content);
		dto.setSeqUser(seqUser);
		
		int result = dao.write(dto);
		
		
		//*****로그인 연동한 뒤에 이 기능 설정하기. 로그인까지 확인한후 수정하기*****
		if (result == 1) {
			resp.sendRedirect("/Myhome_project/Myhome/user/boardcommunitylist.do");
		} else {
			PrintWriter writer = resp.getWriter();
			
			writer.print("<html><body>");
			writer.print("<script>");
			writer.print("alert('로그인이 필요합니다.');");
			writer.print("history.back();");
			writer.print("</script>");
			writer.print("</body></html>");
			
			writer.close();
		}
			
		
		//임시로 설정해 놓은 글쓰기 기능임. 로그인 연동 후 꼭 수정하기*********
//		if (result != 1) {
//			resp.sendRedirect("/Myhome_project/Myhome/user/boardcommunitylist.do");
//		}

		
	}

}
