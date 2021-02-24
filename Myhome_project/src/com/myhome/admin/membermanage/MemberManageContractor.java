package com.myhome.admin.membermanage;

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

import com.myhome.admin.board.PolicyDAO;
import com.myhome.admin.board.PolicyDTO;


@WebServlet("/admin/membermanage/membermanage-contractor.do")
public class MemberManageContractor extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			
		HashMap<String,String> map = new HashMap<String, String>();
		
		String search = req.getParameter("search");
		
		if(!(search == null || search.equals(""))) {
			map.put("search", search);
		}
		
		
		HttpSession session = req.getSession();
		
		//1.
		ManageContractorDAO dao = new ManageContractorDAO();
		
		 ArrayList<ManageContractorDTO> list = dao.list();
		 
				
		//2.
		req.setAttribute("list", list);
		
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/adminmembermanage/membermanage-contractor.jsp");
		dispatcher.forward(req, resp);
		
		
	}
	
}
