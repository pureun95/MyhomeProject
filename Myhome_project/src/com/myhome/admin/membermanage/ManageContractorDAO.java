package com.myhome.admin.membermanage;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.myhome.DBUtil;

public class ManageContractorDAO {

	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private CallableStatement cstat;
	private ResultSet rs;
	
	public ManageContractorDAO() {
		
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

	public ArrayList<ManageContractorDTO> list() {
		
		try {
			
			String sql = "select seq, name, id, email, companynumber, password, contractorname, tel1, tel2, tel3, address, state, reportcount from vwContractor";
			
			pstat = conn.prepareStatement(sql);
			rs = pstat.executeQuery();
			
			ArrayList<ManageContractorDTO> list = new ArrayList<ManageContractorDTO	>();
			
			while (rs.next()) {
				//레코드 1줄 -> DTO 1개
				
				ManageContractorDTO dto = new  ManageContractorDTO();
				
				dto.setSeq(rs.getString("seq"));
				dto.setId(rs.getString("id"));
				dto.setName(rs.getString("name"));
				dto.setContractorname(rs.getString("contractorname"));
				dto.setCompanynumber(rs.getString("companynumber"));
				dto.setPassword(rs.getString("password"));
				dto.setAddress(rs.getString("address"));
				dto.setTel1(rs.getString("tel1"));
				dto.setTel2(rs.getString("tel2"));
				dto.setTel3(rs.getString("tel3"));
				dto.setEmail(rs.getString("email"));
				dto.setState(rs.getString("state"));
				dto.setReportcount(rs.getString("reportcount"));
				
				list.add(dto);
				
			}
			
			return list;
			
		} catch (Exception e) {
			System.out.println(e);
		}
		return null;
	}

	public ManageContractorDTO get(String seq) {

		try {
			
			String sql ="select * from vwContractor where seq=?";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, seq);
			
			rs = pstat.executeQuery();
			
			if(rs.next()) {
				
				ManageContractorDTO dto = new ManageContractorDTO();
				
				dto.setSeq(rs.getString("seq"));
				dto.setId(rs.getString("id"));
				dto.setName(rs.getString("name"));
				dto.setContractorname(rs.getString("contractorname"));
				dto.setCompanynumber(rs.getString("companynumber"));
				dto.setPassword(rs.getString("password"));
				dto.setAddress(rs.getString("address"));
				dto.setTel1(rs.getString("tel1"));
				dto.setTel2(rs.getString("tel2"));
				dto.setTel3(rs.getString("tel3"));
				dto.setEmail(rs.getString("email"));
				dto.setState(rs.getString("state"));
				dto.setReportcount(rs.getString("reportcount"));
				
				return dto;
				
				
			}
				
					
			
		} catch (Exception e) {
			System.out.println(e);
		}
		
		return null;
	}
	
	
}








