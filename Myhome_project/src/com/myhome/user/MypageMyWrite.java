package com.myhome.user;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/user/mypagemywrite.do")
public class MypageMyWrite extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		//1. 회원 번호 받기..
		//2. DB작업
		//3. 결과 반환
		
		//1.
		HttpSession session = req.getSession();
		
		int seqUser = Integer.parseInt(session.getAttribute("seqAllUser").toString());
		
		//2.1 중고장터(tblUsed), 방올리기(tblLessorProperty), 커뮤니티(tblCommunity)에서 내가 쓴 글 목록 받아오기.
		
		//2.2 /댓글/ 중고장터댓글, 커뮤니티댓글 /후기/ 이삿짐센터후기, 청소업체후기, 중개인후기, 매물후기 에서 내가쓴글 목록 받아오기
		//2.3 /신고/ 중고장터신고, 매물거래신고, 커뮤니티신고  에서 내가 쓴 글 목록 받아오기.
		
		

		
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/user/mypage-mywrite.jsp");
		dispatcher.forward(req, resp);

	}

}
