package com.myhome.admin.membermanage;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.myhome.DBUtil;

public class ManageUserDAO {
	
	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private CallableStatement cstat;
	private ResultSet rs;
	
	public ManageUserDAO() {
		
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

	public ArrayList<ManageUserDTO> list() {
		
		try {
			
			String sql  = "select seq, id, name, jumin1, jumin2, tel1, tel2, tel3, address, reportcount from vwUser";
			
			pstat = conn.prepareStatement(sql);
			rs = pstat.executeQuery();
			
			ArrayList<ManageUserDTO> list = new ArrayList<ManageUserDTO>();
			
			while (rs.next()) {
				//레코드 1줄 -> DTO 1개
				
				ManageUserDTO dto = new ManageUserDTO();
				
				dto.setSeq(rs.getString("seq"));
				dto.setName(rs.getString("name"));
				dto.setId(rs.getString("id"));
				dto.setJumin1(rs.getString("jumin1"));
				dto.setJumin2(rs.getString("jumin2"));
				dto.setTel1(rs.getString("tel1"));
				dto.setTel2(rs.getString("tel2"));
				dto.setTel3(rs.getString("tel3"));
				dto.setAddress(rs.getString("address"));
				dto.setReportcount(rs.getString("reportcount"));
				
				list.add(dto);
				
			}
			
			return list;
			
			
		} catch (Exception e) {
			System.out.println(e);
		}
		
		return null;
	}

	public ManageUserDTO get(String seq) {
	
		try {
			
			String sql ="select * from vwUser where seq=?";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, seq);
			
			rs = pstat.executeQuery();
			
			if(rs.next()) {

				ManageUserDTO dto = new ManageUserDTO();
				
				dto.setSeq(rs.getString("seq"));
				dto.setId(rs.getString("id"));
				dto.setName(rs.getString("name"));
				dto.setNickname(rs.getString("nickname"));
				dto.setJumin1(rs.getString("jumin1"));
				dto.setJumin2(rs.getString("jumin2"));
				dto.setPassword(rs.getString("password"));
				dto.setAddress(rs.getString("address"));
				dto.setTel1(rs.getString("tel1"));
				dto.setTel2(rs.getString("tel2"));
				dto.setTel3(rs.getString("tel3"));
				dto.setEmail(rs.getString("email"));
				dto.setState(rs.getString("state"));
				dto.setReportcount(rs.getString("reportcount"));
				dto.setRoomtype(rs.getString("roomtype"));
				/* dto.setTel(rs.getString("tel")); */
				
				String[] location = rs.getString("location").split(" ");
				dto.setTel1(location[0]);
				dto.setTel2(location[1]);
				dto.setTel3(location[2]);
				
				return dto;
				
			}
		
			
		} catch (Exception e) {
			System.out.println(e);
		}
		return null;
	}

}
