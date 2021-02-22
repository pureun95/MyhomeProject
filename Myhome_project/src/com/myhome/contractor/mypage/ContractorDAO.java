package com.myhome.contractor.mypage;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
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

	//회원목록 달라고 위임
	public ArrayList<ContractorDTO> list(String seq) {

		try {

			String sql = "select * from vwContractor where seq = ?";

			//System.out.println(sql);

			//회원번호 넘겨주기
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, seq);


			rs = pstat.executeQuery();

			//ResultSet -> ArrayList<DTO>
			ArrayList<ContractorDTO> list = new ArrayList<ContractorDTO>();

			while (rs.next()) {
				//레코드 1줄 -> DTO 1개
				ContractorDTO dto = new ContractorDTO();

				dto.setSeq(rs.getString("seq"));
				dto.setId(rs.getString("id"));
				dto.setAddress(rs.getString("address"));
				//split으로 하기
				dto.setBusinessNum1(rs.getString("companynumber"));
				dto.setBusinessNum2(rs.getString("companynumber"));
				dto.setBusinessNum3(rs.getString("companynumber"));
				dto.setEmail(rs.getString("email"));
				dto.setPassword(rs.getString("password"));
				dto.setCompanyname(rs.getString("companyname"));
				dto.setName(rs.getString("name"));
				dto.setTel1(rs.getString("tel").substring(0, 3));
				dto.setTel2(rs.getString("tel").substring(4, 8));
				dto.setTel3(rs.getString("tel").substring(9, 13));

				list.add(dto);				
			}

			return list; 

		} catch (Exception e) {
			System.out.println(e);
		}

		return null;
	}

	public int edit(ContractorDTO dto) {

		try {

			String sql = "update tblAllUser set password = ?, email=?, phoneNumber=?, address=? where seqAllUser = ?";

			pstat = conn.prepareStatement(sql);

			pstat.setString(1, dto.getPassword());
			pstat.setString(2, dto.getEmail());
			pstat.setString(3, dto.getTel1() + "-" + dto.getTel2() + "-" + dto.getTel3());
			pstat.setString(4, dto.getAddress());
			pstat.setString(5, dto.getSeq()); //중개인 seq


			return pstat.executeUpdate();


		} catch (Exception e) {
			System.out.println("EditContractorOk.edit()" + e);
		}

		return 0;

	}

}
