package com.myhome.admin.chart;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.myhome.DBUtil;

public class ChartDAO {
	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private CallableStatement cstat;
	private ResultSet rs;

	
	public ChartDAO() {
		
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

	public ArrayList<ChartDTO> get() {
		
		try {
			
			String sql = "select count(*) as cnt, mseq, (select name from tblMember where seq = tblBoard.mseq) as name from tblBoard group by mseq";
			
			stat = conn.createStatement();
			rs = stat.executeQuery(sql);
			
			ArrayList<ChartDTO> list = new ArrayList<ChartDTO>();
			
			while (rs.next()) {
				
				ChartDTO dto = new ChartDTO();
				dto.setContractdate(rs.getString("contractdate"));
				dto.setContracttype(rs.getString("contracttype"));
				dto.setRoomtype(rs.getString("roomtype"));
				dto.setAvg(rs.getString("avg"));
				
				list.add(dto);

			}
			
			return list;
			
		} catch (Exception e) {
			System.out.println(e);
		}
		return null;
	}

}
