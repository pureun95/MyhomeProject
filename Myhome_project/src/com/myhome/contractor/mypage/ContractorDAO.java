package com.myhome.contractor.mypage;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import com.myhome.DBUtil;

public class ContractorDAO {
	
	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private CallableStatement cstat;
	private ResultSet rs;
	
	
	public ContractorDAO() {
		
		try {
		
			this.conn = DBUtil.open();
			this.stat = conn.createStatement();
			
		} catch (Exception e) {
			System.out.println("ContractorDAO()");
			e.printStackTrace();
		}
		
	}
	

	public int edit(ContractorDTO dto) {
		
		try {
			
			String sql = "update tblAllUser set password = ?, "
					+ "                email= ?, "
					+ "                nickName= ?, "
					+ "                phoneNumber = ?, "
					+ "                address= ?"
					+ " where seqAllUser = 1";
			
			pstat = conn.prepareStatement(sql);
			
			pstat.setString(1, dto.getPassword());
			pstat.setString(2, dto.getEmail());
			//pstat.setString(3, dto.getName());	//공인중개소명
			pstat.setString(4, dto.getTel());
			pstat.setString(5, dto.getAddress());
			/*
			 * pstat.setString(6, dto.getSeq()); //AllUser seq
			 */			
	
			return pstat.executeUpdate();
			
			
		} catch (Exception e) {
			System.out.println(e);
		}
		
		return 0;
		
	}

}
