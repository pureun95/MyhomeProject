package com.myhome.user;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;

import com.myhome.DBUtil;

public class BoardCommunityDAO {

	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private ResultSet rs;
	
	public BoardCommunityDAO() {
		conn = DBUtil.open();
	}
	
	public void close() {		
		try {
			
			conn.close();
						
		} catch (Exception e) {
			System.out.println("BoardCommunityDAO.close()");
			e.printStackTrace();
		}
	}

	public ArrayList<BoardCommunityDTO> list(HashMap<String, String> map) {
		
		try {
			
			String where = "";
			
			if (map.get("search") != null) {
				
				//제목과 내용에 포함되는 것만 검색되도록 설정했음.. 추후에 작성자도 검색할 수 있도록 코드 수정할 것*****
				where = String.format("where nickName like '%%%s%%' or title like '%%%s%%' or content like '%%%s%%'", map.get("search"), map.get("search"), map.get("search"));
			}
			
			String sql = String.format("select * from (select a.*, rownum as rnum from (select * from vwCommunityUserVer %s order by seqCommunity desc) a) where rnum between %s and %s", where, map.get("begin"), map.get("end"));
			
			pstat = conn.prepareStatement(sql);
			rs = pstat.executeQuery();
			
			ArrayList<BoardCommunityDTO> list = new ArrayList<BoardCommunityDTO>();
			
			while (rs.next()) {
				
				BoardCommunityDTO dto = new BoardCommunityDTO();
				
				dto.setSeqCommunity(rs.getString("seqCommunity"));
				dto.setTitle(rs.getString("title"));
				dto.setWriteDate(rs.getString("writeDate"));
//				dto.setSeqUser(rs.getString("seqUser"));
				dto.setViewCount(rs.getInt("viewCount"));
				dto.setNickName(rs.getString("nickName"));
				dto.setGap(rs.getInt("gap"));
				
				list.add(dto);
				
			}
			
			return list;	
			
		} catch (Exception e) {
			System.out.println("BoardCommunityDAO.list()");
			e.printStackTrace();
		}
		
		return null;
	}

	//조회수 증가시키기
	public void updateViewCount(String seq) { //오류나면 여기수정하기*****
		
		try {
			
			String sql = "update tblCommunity set viewCount = viewCount +1 where seqCommunity = ?";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, seq);
			
			pstat.executeUpdate();
			
		} catch (Exception e) {
			System.out.println("BoardCommunityDAO.updateViewCount()");
			e.printStackTrace();
		}
		
	}
	
	
	

	//public BoardCommunityDTO get(String seqCommunity) { //오류나면 여기 수정하기*****
	public BoardCommunityDTO get(String seq) { //오류나면 여기 수정하기*****
		
		try {
			
			//오류나면 여기 수정하기*****
			String sql = "select a.*, (select nickName from tblAllUser where seqAllUser = a.seqUser) as nickName from tblCommunity a where seqCommunity = ?";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, seq);
			
			rs = pstat.executeQuery();
			
			if (rs.next()) {
				BoardCommunityDTO dto = new BoardCommunityDTO();
				
				dto.setSeqCommunity(rs.getString("seqCommunity"));
				dto.setTitle(rs.getString("title"));
				dto.setContent(rs.getString("content"));
				dto.setWriteDate(rs.getString("writeDate"));
				dto.setViewCount(rs.getInt("viewCount"));
				dto.setSeqUser(rs.getString("seqUser"));
				
				dto.setNickName(rs.getString("nickName"));
				
				return dto;
				
			}
			
		} catch (Exception e) {
			System.out.println("BoardCommunityDAO.get()");
			e.printStackTrace();
		}
		
		return null;
	}

	public int getTotalCount(HashMap<String, String> map) {
		
		try {
			
			String where = "";
			
			if (map.get("search") != null) {
				where = String.format("where nickName like '%%%s%%' or title like '%%%s%%' or content like '%%%s%%'", map.get("search"), map.get("search"), map.get("search"));
			}
			
			String sql = String.format("select count(*) as cnt from tblCommunity %s", where);
			
			stat = conn.createStatement();
			rs = stat.executeQuery(sql);
			
			if (rs.next()) {
				return rs.getInt("cnt");
			}
			
			
		} catch (Exception e) {
			System.out.println("BoardCommunityDAO.getTotalCount()");
			e.printStackTrace();
		}
		
		return 0;
	}

	public int write(BoardCommunityDTO dto) {

		try {
			
			String sql = "insert into tblCommunity (seqCommunity, seqUser, title, content, viewCount, writeDate) values (seqCommunity.nextVal, ?, ?, ?, 1, sysdate";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, dto.getSeqUser());
			pstat.setString(2, dto.getTitle());
			pstat.setString(3, dto.getContent());
			
			return pstat.executeUpdate();
			
		} catch (Exception e) {
			System.out.println("BoardCommunityDAO.write()");
			e.printStackTrace();
		}
		
		return 0;
	}
	
	
	
	
	
}
















