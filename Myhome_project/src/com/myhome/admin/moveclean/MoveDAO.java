package com.myhome.admin.moveclean;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.myhome.DBUtil;

public class MoveDAO {
	
	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private CallableStatement cstat;
	private ResultSet rs;
	
	public MoveDAO() {
		
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

	public ArrayList<MoveDTO> list() {
		
		try {
			
			String sql = "select * from vwMove order by seq asc";
			
			pstat = conn.prepareStatement(sql);
			rs = pstat.executeQuery();
			
			ArrayList<MoveDTO> list = new ArrayList<MoveDTO>();
			
			while (rs.next()) {
				//레코드 1줄 -> DTO 1개
				
				MoveDTO dto = new MoveDTO();
				
				dto.setSeq(rs.getString("seq"));
				dto.setLocation(rs.getString("location"));
				dto.setImage(rs.getString("image"));
				dto.setName(rs.getString("name"));
				dto.setTel(rs.getString("tel"));
				dto.setAddress(rs.getString("address"));
				dto.setBusinessnum(rs.getString("businessnum"));
				dto.setPrice(rs.getString("price"));
				dto.setIntroduce(rs.getString("introduce"));
				
				list.add(dto);
			}
			
			return list;
			
		} catch (Exception e) {
			System.out.println(e);
		}
		return null;
	}

	
}










