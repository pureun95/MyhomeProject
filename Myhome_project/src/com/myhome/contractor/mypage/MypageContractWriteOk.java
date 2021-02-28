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
 * @author 박지현
 * 전자계약 암호 입력 완료되는 페이지
 */
@WebServlet("/contractor/mypage-contract-writeok.do")
public class MypageContractWriteOk extends HttpServlet{

	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//계약서에 넣기
		ArrayList<ContractDTO> insertContract = dao.insertContract();  
		 
		  
		//전자계약 정보 보내기 
		req.setAttribute("list", list);
		  
		
	}
}