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


@WebServlet("/admin/membermanage/membermanage-contractor.do")
public class MemberManageContractor extends HttpServlet{

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
					
			
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/admin/membermanage-contractor.jsp");
		dispatcher.forward(request, response);
		
		
	}
	
}
