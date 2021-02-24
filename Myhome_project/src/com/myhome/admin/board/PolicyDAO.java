package com.myhome.admin.board;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;

import com.myhome.DBUtil;

public class PolicyDAO {
	
	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private CallableStatement cstat;
	private ResultSet rs;
	
	public PolicyDAO() {
		
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


	public ArrayList<PolicyDTO> listpolicy(HashMap<String, String> map) {

		try {
			
			String where = "";
			
			if(map.get("search") != null) {
				
				where = String.format("where title like '%%%s%%' or content like '%%%s%%'", map.get("search"), map.get("search"));
			}
			
			String sql = "select seq, title, id, writedate, viewcount from vwPolicy";
			
			pstat = conn.prepareStatement(sql);
			rs = pstat.executeQuery();
					
			ArrayList<PolicyDTO> listpolicy = new ArrayList<PolicyDTO>();
			
			while (rs.next()) {
				//레코드 1줄 -> DTO 1개
				PolicyDTO dto = new PolicyDTO();
				
				dto.setSeq(rs.getString("seq"));
				dto.setTitle(rs.getString("title"));
				dto.setId(rs.getString("id"));
				dto.setWritedate(rs.getString("writedate"));
				dto.setViewcount(rs.getString("viewcount"));
				

				listpolicy.add(dto);
			}
		
			return listpolicy;
			
			
		} catch (Exception e) {
			System.out.println(e);
		}
		return null;
	}

	//AddPolicyOk
	public int addpolicy(PolicyDTO dto) {
		
		try {
			
			String sql = "insert into tblPolicy (seqPolicy, seqAdmin, title, content, writeDate, viewCount) values (SEQPolicy.nextVal, ?, ?, ?, default, default)";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, dto.getSeqadmin());
			pstat.setString(2, dto.getTitle());
			pstat.setString(3, dto.getContent());
			
			return pstat.executeUpdate(); //1 or 0
			
			
		} catch (Exception e) {
			System.out.println(e);
		}
		
		return 0;
	}



	//ViewPolicy 서블릿 -> 글 1개 반환 요청
	public PolicyDTO getpolicy(String seq) {

		try {
			
			String sql = "select * from vwPolicy where seq = ?";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, seq);
			
			rs = pstat.executeQuery();
			
			if(rs.next()) {
				
				PolicyDTO dto = new PolicyDTO();
				
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

	//ViewPolicy -> 조회수 증가
	public void updateReadcount(String seq) {

		try {
			
			String sql = "update tblPolicy set viewcount = viewcount + 1 where seq = ?";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, seq);
			
			pstat.executeUpdate();
			
		} catch (Exception e) {
			System.out.println(e);
		}
		
	}

	//EditPolicyOk -> 글수정
	public int editpolicy(PolicyDTO dto) {
		
		try {
			
			String sql = "update tblPolicy set title = ?, content= ? where seq = ?";
			
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


