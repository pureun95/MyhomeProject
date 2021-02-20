package com.myhome.user;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;

import com.myhome.DBUtil;

public class BoardApplicationDAO {


	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private ResultSet rs;
	
	public BoardApplicationDAO() {
		conn = DBUtil.open();
	}
	
	public void close() {
		try {
			
			conn.close();
			
		} catch (Exception e) {
			System.out.println("BoardApplicationDAO.close()");
			e.printStackTrace();
		}
	}

	public ArrayList<BoardApplicationDTO> list(HashMap<String, String> map) {

		try {
			
			String where = "";
			
			if (map.get("search") != null) {
				
				//관리자가 쓴 글이라 제목과 내용에 포함되는 것만 검색되도록 설정했음
				
				where = String.format("where title like '%%%s%%' or content like '%%%s%%'", map.get("search"), map.get("search"));
			}
			
			String sql = String.format("select * from (select a.*, rownum as rnum from (select * from vwApplicationUserVer %s order by seqApplication desc) a) where rnum between %s and %s", where, map.get("begin"), map.get("end"));
			
			pstat = conn.prepareStatement(sql);
			rs = pstat.executeQuery();
			
			ArrayList<BoardApplicationDTO> list = new ArrayList<BoardApplicationDTO>();
			
			while (rs.next()) {
				
				BoardApplicationDTO dto = new BoardApplicationDTO();
				
				dto.setSeqApplication(rs.getString("seqApplication"));
				dto.setTitle(rs.getString("title"));
				dto.setWriteDate(rs.getString("writeDate"));

				dto.setViewCount(rs.getInt("viewCount"));
				dto.setId(rs.getString("id"));
				dto.setGap(rs.getInt("gap"));
				
				list.add(dto);
				
			}
			
			return list;	
			
		} catch (Exception e) {
			System.out.println("BoardApplicationDAO.list()");
			e.printStackTrace();
		}
		return null;
	}
	
	
	

	public int getTotalCount(HashMap<String, String> map) {

		try {
			String where = "";
			
			if (map.get("search") != null) {
				where = String.format("where title like '%%%s%%' or content like '%%%s%%'", map.get("search"), map.get("search"));
			}
			
			String sql = String.format("select count(*) as cnt from tblApplication %s", where);
			
			stat = conn.createStatement();
			rs = stat.executeQuery(sql);
			
			if (rs.next()) {
				return rs.getInt("cnt");
			}
			
		} catch (Exception e) {
			System.out.println("BoardApplicationDAO.getTotalCount()");
			e.printStackTrace();
		}
		return 0;
	}
	
	

	public void updateViewCount(String seq) {

		try {
			
			String sql = "update tblApplication set viewCount = viewCount +1 where seqApplication = ?";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, seq);
			
			pstat.executeUpdate();
			
		} catch (Exception e) {
			System.out.println("BoardApplicationDAO.updateViewCount()");
			e.printStackTrace();
		}
		
	}

	public BoardApplicationDTO get(String seq) {

		try {
			
			String sql = "select a.*, (select id from tblAdmin where seqAdmin = a.seqAdmin) as id from tblApplication a where seqApplication = ?";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, seq);
			rs = pstat.executeQuery();
			
			if (rs.next()) {
				BoardApplicationDTO dto = new BoardApplicationDTO();
				
				dto.setSeqApplication(rs.getString("seqApplication"));
				dto.setTitle(rs.getString("title"));
				dto.setContent(rs.getString("content"));
				dto.setWriteDate(rs.getString("writeDate"));
				dto.setViewCount(rs.getInt("viewCount"));
				dto.setSeqAdmin(rs.getString("seqAdmin"));
				
				dto.setId(rs.getString("id"));
				
				return dto;
				
			}
			
		} catch (Exception e) {
			System.out.println("BoardApplicationDAO.get()");
			e.printStackTrace();
		}
		return null;
	}
	
	

}
