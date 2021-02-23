package com.myhome.contractor.mypage;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 * 
 * @author 박지현
 * 전자계약 작성하는 페이지입니다.
 *
 */
@WebServlet("/contractor/mypage-contract-write.do")
public class MypageContractWrite extends HttpServlet{

	
	//http://localhost:8090/Myhome_project/contractor/mypage-contract-write.do
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		/*
		 * //1. 전자계약 정보 ContractDAO dao = new ContractDAO();
		 * 
		 * //2. session 받기 HttpSession session = req.getSession();
		 * 
		 * //3. 중개인 seq 쿼리에 보내기 ArrayList<ContractDTO> list =
		 * dao.list(session.getAttribute("seqAllUser").toString());
		 * 
		 * //4. 전자계약 정보 보내기 req.setAttribute("list", list);
		 */
				
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/contractor/mypage-contract-write.jsp");
		dispatcher.forward(req, resp);
		
	}
}
