package com.myhome.member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.HashMap;

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

	/**
	 * 로그인
	 * @param dto
	 * @return 결과유무
	 */
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

	/**
	 * tblAllUser insert
	 * @param dto
	 * @return 결과유무
	 */
	public int add(MemberDTO dto) {

		try {
			String sql = "insert into tblAllUser(seqAllUser, id, name, password, email, nickname, state, phonenumber, address) values " +
					"(seqAllUser.nextVal, ?, ?, ?, ?, ?, 0, ?, ?)";

			pstat = conn.prepareStatement(sql);
			pstat.setString(1, dto.getId());
			pstat.setString(2, dto.getName());
			pstat.setString(3, dto.getPassword());
			pstat.setString(4, dto.getEmail());
			pstat.setString(5, dto.getNickname());
			pstat.setString(6, dto.getPhonenumber());
			pstat.setString(7, dto.getAddress());


			return pstat.executeUpdate();

		} catch (Exception e) {
			System.out.println("MemberDAO.add()"+e);
		}
		return 0;
	}

	/**
	 * tblLocation select
	 * @return 지역 리스트
	 */
	public HashMap<Integer, String> getLocation() {

		HashMap<Integer, String> location = new HashMap<Integer, String>();

		try {

			String sql = "select * from tblLocation";

			stat = conn.createStatement();

			rs = stat.executeQuery(sql);

			while(rs.next()) {
				location.put(rs.getInt("seqLocation"), rs.getString("location"));
			}
			
			return location;


		} catch (Exception e) {
			System.out.println("MemberDAO.getLocation()"+e);
		}

		return null;
	}

	/**
	 * tblUser insert
	 * @param dto
	 * @param roomtype
	 * @param alarm
	 * @param location 
	 * @param seqAllUser 
	 * @return
	 */
	public int addUser(MemberDTO dto, String roomtype, String alarm, int seqUser, String location) {
		
		try {
			//쿼리작성
			String sql = "insert into tblUser (seqUser, seqLocation, seqPropertyRoomTypeDetail, idNumber, Alarm, ReportCount)"
						+ "values (?, ?, ?, ?, ?, 0)";
			
			//준비
			pstat = conn.prepareStatement(sql);
			pstat.setInt(1, seqUser);
			pstat.setInt(2, Integer.parseInt(location));
			pstat.setInt(3, Integer.parseInt(roomtype));
			pstat.setString(4, dto.getIdNumber());
			pstat.setInt(5, Integer.parseInt(alarm));
			
			//실행 + 결과
			return pstat.executeUpdate();
			
		} catch (Exception e) {
			System.out.println("MemberDAO.addUser()"+e);
		}
		return 0;
	}

	/**
	 * tblAllUser select
	 * @param dto
	 * @return 시퀀스
	 */
	public int getSeq(MemberDTO dto) {
		
		try {
			//쿼리작성 -> seq만뽑아오는 쿼리
			String sql = "select seqAllUser from tblAllUser where id=? and password=?";
			
			//준비
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, dto.getId());
			pstat.setString(2, dto.getPassword());
			
			//실행
			rs = pstat.executeQuery();
			
			int seqAllUSer = 0;
			//결과
			while(rs.next()) {
				seqAllUSer = rs.getInt("seqAllUser");
			}
			
			return seqAllUSer;
			
		} catch (Exception e) {
			System.out.println("MemberDAO.getSeq()"+e);
		}
		return 0;
	}

}
