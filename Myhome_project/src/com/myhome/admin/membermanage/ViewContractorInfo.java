package com.myhome.admin.membermanage;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/***
 * 중개인회원 상세정보 페이지 입니다.
 * @author 윤지현
 *
 */
@WebServlet("/admin/membermanage/viewcontractorinfo.do")
public class ViewContractorInfo extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//1.
		String seq = req.getParameter("seq");
		
		//2.
		ManageContractorDAO dao = new ManageContractorDAO();
		
		ManageContractorDTO dto = dao.get(seq);
		
		dao.close(); //****
		
		//3. JSP에게 넘겨주기
		req.setAttribute("dto", dto);
		
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/adminmembermanage/viewcontractorinfo.jsp");
		dispatcher.forward(req, resp);
		
	}
	
}
