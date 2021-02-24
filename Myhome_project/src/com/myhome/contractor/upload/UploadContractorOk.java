package com.myhome.contractor.upload;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@WebServlet("/contractor/upload-contractor-ok.do")
public class UploadContractorOk extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//1. 데이터 가져오기(subject, content)
		//2. DB 작업 > insert
		//3. 결과 처리
				
		HttpSession session = req.getSession();
				
		//1. 
		req.setCharacterEncoding("UTF-8");
				
//		int roomType = "";
		String content = "";
		String filename = "";
		String orgfilename = "";
				
		
		//세션에서 회원 seq 가져오기
		String mseq = (String)session.getAttribute("seq"); //로그인한 회원 번호 & 글쓴이 번호
		String reply = "";
		int parentThread = 0;
		int parentDepth = 0;
				
		try {
					
			MultipartRequest multi = new MultipartRequest(
												req,
												req.getRealPath("/files"),
												1024 * 1024 * 100,
												"UTF-8",
												new DefaultFileRenamePolicy()
											);
			System.out.println(req.getRealPath("/files"));

				subject = multi.getParameter("subject");
				content = multi.getParameter("content");
				filename = multi.getFilesystemName("attach");
				orgfilename = multi.getOriginalFileName("attach");
				reply = multi.getParameter("reply");
					
				//view.do -> 부모글의 thread값 + 부모글의 depth값
				parentThread = Integer.parseInt(multi.getParameter("thread"));
				parentDepth = Integer.parseInt(multi.getParameter("depth"));
					
			} catch (Exception e) {
				System.out.println(e);
			}
				
		
		
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/contractor/upload-contractor-ok.jsp");

		dispatcher.forward(req, resp);
	}
}
