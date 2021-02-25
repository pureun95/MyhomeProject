package com.myhome.user;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.myhome.DBUtil;

public class MypageMatchingDAO {



	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private ResultSet rs;
	private CallableStatement cstat;

	public MypageMatchingDAO() {
		// DB 연결
		conn = DBUtil.open();
	}

	public void close() {
		try {
			conn.close();
		} catch (Exception e) {
			System.out.println(e);
		}
	}

	//받은 매칭 목록 요청
	public ArrayList<MypageMatchingDTO> getReceiveMatchingList(int seqUser) {
		ArrayList<MypageMatchingDTO> list = new ArrayList<MypageMatchingDTO>();
		
		try {
			
			String sql = "select * from vwReceiveMatching where seqUser = ?";
			
			pstat = conn.prepareStatement(sql);
			pstat.setInt(1, seqUser);
			
			rs = pstat.executeQuery();
			
			while(rs.next()) {
				
				MypageMatchingDTO dto = new MypageMatchingDTO();
				
				dto.setSeqMatching(rs.getInt("seqMatching"));
				dto.setSeqUser(rs.getInt("seqUser"));
				dto.setSeqProperty(rs.getInt("seqProperty"));
				dto.setSeqLessorProperty(rs.getInt("seqLessorProperty"));
				dto.setSeqContractor(rs.getInt("seqContractor"));
				dto.setTitle(rs.getString("title"));
				dto.setContractorName(rs.getString("contractorName"));
				dto.setName(rs.getString("name"));
				dto.setResponse(rs.getString("response"));
				
				list.add(dto);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
	//보낸 매칭 목록 요청
	public ArrayList<MypageMatchingDTO> getSendMatchingList(int seqUser) {
ArrayList<MypageMatchingDTO> list = new ArrayList<MypageMatchingDTO>();
		
		try {
			
			String sql = "select * from vwSendMatching where seqUser = ?";
			
			pstat = conn.prepareStatement(sql);
			pstat.setInt(1, seqUser);
			
			rs = pstat.executeQuery();
			
			while(rs.next()) {
				
				MypageMatchingDTO dto = new MypageMatchingDTO();
				
				dto.setSeqMatching(rs.getInt("seqMatching"));
				dto.setSeqUser(rs.getInt("seqUser"));
				dto.setSeqProperty(rs.getInt("seqProperty"));
				dto.setSeqContractor(rs.getInt("seqContractor"));
				dto.setTitle(rs.getString("title"));
				dto.setContractorName(rs.getString("contractorName"));
				dto.setName(rs.getString("name"));
				dto.setResponse(rs.getString("response"));
				dto.setLocation(rs.getString("location"));
				
				list.add(dto);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
	//들어온 매칭 -> 매칭 거절
	public int reject(int seqMatching) {

		int result = 0;
		
		try {
			
			String sql = "{call procRejectMatching(?)}";
			
			cstat = conn.prepareCall(sql);
			cstat.setInt(1, seqMatching);
			
			result = cstat.executeUpdate();
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
			
	}

	//들어온 매칭 -> 매칭 수락
	public int accept(int seqMatching, int seqLessorProperty, int seqContractor) {

		int result = 0;
		
		try {
			
			String sql = "{call procAcceptMatching(?,?,?)}";
			
			cstat = conn.prepareCall(sql);
			cstat.setInt(1, seqMatching);
			cstat.setInt(2, seqLessorProperty);
			cstat.setInt(3, seqContractor);
			
			result = cstat.executeUpdate();
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
			
	}
	
	
}
