package com.myhome.company;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.myhome.DBUtil;

import oracle.jdbc.internal.OracleTypes;

public class CompanyDAO {

	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private CallableStatement cstat;
	private ResultSet rs;

	public CompanyDAO() {
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

	//회사 리스트
	public ArrayList<CompanyDTO> getCompanyList(String sel1, String location, int begin, int end) {

		try {
			String table = "";
			//이사 or 청소에따라 테이블이 달라짐
			if(sel1.equals("move")) {
				table = "vMove";
			} else if(sel1.equals("clean")) {
				table = "vClean";
			}
			
			String sql = "select * from (select a.*, rownum as rnum from (select * from " + table + ""
					+ " where location like '%" + location + "%') a) where rnum between ? and ?";
			
			System.out.println(sql);
			
			pstat = conn.prepareStatement(sql);

			pstat.setInt(1, begin);
			pstat.setInt(2, end);
			
			rs = pstat.executeQuery();

			ArrayList<CompanyDTO> dto = new ArrayList<CompanyDTO>();
			

			while(rs.next()) {
				CompanyDTO cdto = new CompanyDTO();
				

				cdto.setSeq(rs.getInt("seq"));
				cdto.setSeqLocation(rs.getInt("seqLocation"));
				cdto.setLocation(rs.getString("location"));
				cdto.setName(rs.getString("name"));
				cdto.setImagePath(rs.getString("imagePath"));
				cdto.setPrice(rs.getInt("price"));
				cdto.setAvgRating(rs.getInt("avgRating"));
				cdto.setTel(rs.getString("tel"));
				cdto.setIntroduce(rs.getString("introduce"));
				
				dto.add(cdto);
			}

			return dto;

	} catch (Exception e) {
		System.out.println("CompanyDAO.getCompanyList()" + e);
	}
	return null;
}

	//회사의 총 개수
	public int getTotalCount(String sel1, String location) {
		
		try {
			String table = "";
			//이사 or 청소에따라 테이블이 달라진다
			if(sel1.equals("move")) {
				table = "vMove";
			} else if(sel1.equals("clean")) {
				table = "vClean";
			}
			
			String sql = "select count(*) as cnt from " + table + " where location like '%" + location + "%'"; 
			
			
			stat = conn.createStatement();
			rs = stat.executeQuery(sql);
			
			if (rs.next()) {
				return rs.getInt("cnt");
			}
			
			int result = 0;
			return result;
		} catch (Exception e) {
			System.out.println("CompanyDAO.getTotalCount()" + e);
		}
		
		return 0;
	}

}
