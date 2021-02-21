package com.myhome.contractor.mypage;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/contractor/infoedit.do")
public class EditOk extends HttpServlet {
		
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/contractor/infoedit.jsp");
			
		//1. 데이터 가져오기(seq, 비밀번호, 주소, 전화번호, 이메일)
		//2. DB 작업 -> update
		//3. 결과 반환 -> 알림
			
		HttpSession session = req.getSession();
			
		//1. 
		req.setCharacterEncoding("UTF-8");
			
		String seq = req.getParameter("seq");	//회원번호 
		String id = req.getParameter("id");
		String password = req.getParameter("password");
		String name = req.getParameter("name");
		String businessnum = req.getParameter("businessnum");
		String companyname = req.getParameter("companyname");
		String email = req.getParameter("email"); 
		String address = req.getParameter("address");
		String tel1 = req.getParameter("tel1");
		String tel2 = req.getParameter("tel2");	
		String tel3 = req.getParameter("tel3");
		
		//2.
		ContractorDAO dao = new ContractorDAO();
		ContractorDTO dto = new ContractorDTO();
		
		//가져온거 쓰기
		dto.setSeq(seq); //회원번호
		dto.setId(id);
		dto.setBusinessnum(businessnum);
		dto.setCompanyname(companyname); //공인중개소명
		dto.setName(name);
		dto.setPassword(password);
		dto.setEmail(email);
		dto.setAddress(address);
		dto.setTel1(tel1);
		dto.setTel2(tel2);
		dto.setTel3(tel3);
			
		//글수정하기
		int result = dao.edit(dto); 
			
		if (result == 1) {
			//회원정보수정 성공 -> 수정성공 팝업
			resp.sendRedirect("/myhome_project/contractor/mypage-info.do");
				
				
		} else {
			//글수정 실패 -> 경고 + 뒤로 가기
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



