package com.myhome.member;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/member/login.do")
public class Login extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//1. 데이터 가져오기(id, pw)
		//2. DB 작업 > select(등록된 회원이 맞는지 확인)
		//3. 결과 처리
		
		//1.
		String id = req.getParameter("id");
		String password = req.getParameter("password");
		
		//2.
		MemberDAO dao = new MemberDAO();
		MemberDTO dto = new MemberDTO();
		
		dto.setId(id);
		dto.setPassword(password);
		
		int seqAllUser = dao.login(dto); // 0 or 0이상
		
		//확인용
		//System.out.println(id + " " + password);
		//System.out.println(seqAllUser);
		
		
		//3.
		if (seqAllUser > 0) {
			
			MemberDTO mdto = dao.getMember(seqAllUser);
			
			HttpSession session = req.getSession();
			session.setAttribute("seqAllUser", seqAllUser); 
			session.setAttribute("name", mdto.getName());
			
			//시작 페이지로 이동
			resp.sendRedirect("/Myhome_project/Myhome/main.do");			
			
		} else {
			//로그인 실패
			PrintWriter writer = resp.getWriter();
			
			writer.print("<html><body>");
			writer.print("<script>");
			writer.print("alert('failed');");
			writer.print("history.back();");
			writer.print("</script>");
			writer.print("</body></html>");
			
			writer.close();
			
		}
		

	}
	
}








