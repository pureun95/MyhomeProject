package com.myhome.admin.board;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.myhome.DBUtil;

public class ChecklistDAO {
	
	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private CallableStatement cstat;
	private ResultSet rs;
	
	public ChecklistDAO() {
		
		//DB 연결
		conn = DBUtil.open();
	}
	
	public void close() {
		try {
			conn.close();
		} catch (Exception e) {
			System.out.println(e);
		}
	}

	public ArrayList<ChecklistDTO> listchecklist() {

		try {
			
			String sql = "select seq, title, id, writedate, viewcount from vwChecklist";
			
			pstat = conn.prepareStatement(sql);
			rs = pstat.executeQuery();
			
			ArrayList<ChecklistDTO> listchecklist = new ArrayList<ChecklistDTO>();
			
			while (rs.next()) {
				//레코드 1줄 -> DTO 1개
				ChecklistDTO dto = new ChecklistDTO();
				
				dto.setSeq(rs.getString("seq"));
				dto.setTitle(rs.getString("title"));
				dto.setId(rs.getString("id"));
				dto.setWritedate(rs.getString("writedate"));
				dto.setViewcount(rs.getString("viewcount"));
				

				listchecklist.add(dto);
			}
		
			return listchecklist;
			
		} catch (Exception e) {
			System.out.println(e);
		}
		
		return null;
	}

	public int addchecklist(ChecklistDTO dto) {
		// TODO Auto-generated method stub
		return 0;
	}

	//ViewChecklist 서블릿 -> 글 1개 반환 요청
	public ChecklistDTO getchecklist(String seq) {

		try {
			
			String sql ="select * from vwChecklist where seq = ?";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, seq);
			
			rs = pstat.executeQuery();
			
			if(rs.next()) {
				
				ChecklistDTO dto = new ChecklistDTO();
				
				dto.setSeq(rs.getString("seq"));
				dto.setTitle(rs.getString("title"));
				dto.setContent(rs.getString("content"));
				dto.setId(rs.getString("id"));
				dto.setViewcount(rs.getString("viewcount"));
				dto.setWritedate(rs.getString("writeDate"));
				
				return dto;
			}
			
		} catch (Exception e) {
			System.out.println(e);
		} 
		
		return null;
	}

	public int editchecklist(ChecklistDTO dto) {

		try {
			
			String sql = "update tblCheacklist set title =?, content =? where seq = ?";
		
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, dto.getTitle());
			pstat.setString(2, dto.getContent());
			pstat.setString(3, dto.getSeq()); //글번호
			
			return pstat.executeUpdate(); //1 or 0
		
		} catch (Exception e) {
			System.out.println(e);
		}
		return 0;
	}

}
