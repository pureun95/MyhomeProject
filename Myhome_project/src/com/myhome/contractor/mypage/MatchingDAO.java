package com.myhome.contractor.mypage;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.myhome.DBUtil;

public class MatchingDAO {

	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private CallableStatement cstat;
	private ResultSet rs;
	
	  
/*
 * @author 박지현
 * 생성자
 *
 */	 
	
	public MatchingDAO() {
		
		try {

			this.conn = DBUtil.open();
			this.stat = conn.createStatement();

		} catch (Exception e) {
			System.out.println("ContractorDAO()");
			e.printStackTrace();
		}
		
	}
	
	
/*
 * @author 박지현
 * 중개인이 받은 매칭리스트
 *
 */
	public ArrayList<MatchingDTO> listContractor(String seq) {
		
		try {
			
			//중개인에게 들어온 매칭리스트 쿼리
			String sql = "select * from vmatchingTocontractor where seqContractor = ?";
			
			//중개인번호 넘겨주기
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, seq);
			
			rs = pstat.executeQuery();
			
			//ResultSet -> ArrayList<DTO>
			ArrayList<MatchingDTO> list = new ArrayList<MatchingDTO>();

			while (rs.next()) {
				
				MatchingDTO dto = new MatchingDTO();
				
				//모든 매물번호
				dto.setSeqProperty(rs.getInt("seqProperty_lp"));
				dto.setSeqUser(rs.getInt("seqUser"));
				dto.setSeqContractor(rs.getInt("seqContractor"));
				dto.setSeqLessorProperty(rs.getInt("seqLessorProperty"));
				dto.setTitle(rs.getString("title"));
				dto.setNickname(rs.getString("nickname"));
				dto.setMatching(rs.getInt("matching"));
				
				
			
				list.add(dto);				
			}

			return list; 
			
			
			
		} catch (Exception e) {
			System.out.println(e);
		}
		
		return null;
	

		}
		
	
	

/*
 * @author 박지현
 * 중개인이 보낸 매칭리스트
 * 
 */
	public ArrayList<MatchingDTO> listLessor(String seq) {
		
		try {
			
			//중개인이 보낸 매칭리스트 쿼리
			String sql = "select * from  vmatchingToLessor where seqContractor = ?";
			
			//중개인번호 넘겨주기
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, seq);
			
			rs = pstat.executeQuery();
			
			//ResultSet -> ArrayList<DTO>
			ArrayList<MatchingDTO> list = new ArrayList<MatchingDTO>();
	
			while (rs.next()) {
				
				MatchingDTO dto = new MatchingDTO();
				
				//모든 매물번호
				dto.setSeqProperty(rs.getInt("seqProperty"));
				dto.setSeqUser(rs.getInt("seqUser"));
				dto.setSeqContractor(rs.getInt("seqContractor"));
				dto.setSeqLessorProperty(rs.getInt("seqLessorProperty"));
				dto.setTitle(rs.getString("title"));
				dto.setNickname(rs.getString("nickname"));
				dto.setMatching(rs.getInt("matching"));
				
				
			
				list.add(dto);				
			}
	
			return list; 
			
			
			
		} catch (Exception e) {
			System.out.println(e);
		}
		
		return null;
	
	
		}
		
	}
	

