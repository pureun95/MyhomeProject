package com.myhome.member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import com.myhome.DBUtil;

public class MemberDAO {

	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private ResultSet rs;

	public MemberDAO() {
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

	public int login(MemberDTO dto) {

		try {

			//쿼리
			String sql = "select count(*) as cnt from tblAllUser where id = ? and password = ?";

			//준비
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, dto.getId());
			pstat.setString(2, dto.getPassword());

			//실행
			rs = pstat.executeQuery();

			//리턴
			if (rs.next()) {
				/* System.out.println("cnt" + rs.getInt("cnt")); */
				return rs.getInt("cnt"); //1 or 0
			}

		} catch (Exception e) {
			System.out.println("MemberDAO.login()");
		}
		
		return 0;
	}

}
