package com.myhome.contractor.mypage;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.myhome.DBUtil;

/**
 * 
 * @ 중개인 전자계약 DAO
 * 
 * */
public class ContractDAO {
	
	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private CallableStatement cstat;
	private ResultSet rs;


	//생성자
	public ContractDAO() {

		try {

			this.conn = DBUtil.open();
			this.stat = conn.createStatement();

		} catch (Exception e) {
			System.out.println("ContractorDAO()");
			e.printStackTrace();
		}

	}
	
	
	//내 전자계약 리스트 & 상세보기 같이 할 것
	public ArrayList<ContractDTO> list(String seqC) {
		
		try {
			
			//전자계약 뷰
			String sql = "select * from vwContract where seqUserC = ?";
			
			//중개인번호 넘겨주기
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, seqC);
			
			rs = pstat.executeQuery();
			
			//ResultSet -> ArrayList<DTO>
			ArrayList<ContractDTO> list = new ArrayList<ContractDTO>();

			while (rs.next()) {
				
				ContractDTO dto = new ContractDTO();
				
				//전자계약 번호
				dto.setSeqContract(rs.getString("seqC"));
				
				//회원들 seq
				dto.setSeqUserC(rs.getString("seqUserC"));
				dto.setSeqUserL(rs.getString("seqUserL"));
				dto.setSeqUserT(rs.getString("seqUserT"));
				
				//매물번호
				dto.setSeqCp(rs.getString("seqCp")); //중개인매물번호(매칭자동)
				dto.setSeqLp(rs.getString("seqLp")); //임대인 매물번호
				dto.setSeqp(rs.getString("seqP")); //모든 매물번호
				
				//이름
				dto.setNameT(rs.getString("nameT"));
				dto.setNameC(rs.getString("nameC"));
				dto.setNameL(rs.getString("nameL"));
				
				//전화번호
				dto.setTelC(rs.getString("telC"));
				dto.setTelL(rs.getString("telL"));
				dto.setTelT(rs.getString("telT"));
				
				//사업자번호 & 주민번호
				dto.setBusinessNum(rs.getString("companyNumberC"));
				dto.setSsnL(rs.getString("idNumberL"));
				dto.setSsnT(rs.getString("idNumberT"));
				
				//암호
				dto.setSignC(rs.getString("tSign"));
				dto.setSignL(rs.getString("lSign"));
				dto.setSignT(rs.getString("cSign"));
				
				//계약일
				dto.setContractDate(rs.getString("cdate"));
				
				//계약 상태
				dto.setState(rs.getString("state"));
				
				//주소
				dto.setLocation(rs.getString("location"));
				
				//보증금(천단위 콤마)
				String deposit = String.format("%,.3", rs.getString("deposit"));
				dto.setDeposit(deposit + "원");
				
				//매매가격
				String dealing = String.format("%,.3", rs.getString("dealing"));
				dto.setDealing(dealing + "원");
				
				//월세
				String monthly = String.format("%,.3", rs.getString("monthlyRent"));
				dto.setMonthlyRent(monthly +"원");
				
			
				list.add(dto);				
			}

			return list; 
			
			
			
		} catch (Exception e) {
			System.out.println(e);
		}
		
		return null;
	

	}
	

}
