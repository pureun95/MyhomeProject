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
 *@ 중개인 & 임대인 전체매물 DAO 
 * 매칭여부 확인 가능
 *
 **/
public class PropertyDAO {
	
	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private CallableStatement cstat;
	private ResultSet rs;
	
	
	//생성자
	public PropertyDAO() {

		try {

			this.conn = DBUtil.open();
			this.stat = conn.createStatement();

		} catch (Exception e) {
			System.out.println("ContractorDAO()");
			e.printStackTrace();
		}

	}
	
	
	//1. 마이페이지 올린매물관리 리스트
	public ArrayList<PropertyDTO> list(String seq) {
		
		try {

			String sql = "select * from vuploadProperty where seqContractor = ?";


			//중개인 번호 넘겨주기
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, seq);
			

			rs = pstat.executeQuery();

			//ResultSet -> ArrayList<DTO>
			ArrayList<PropertyDTO> list = new ArrayList<PropertyDTO>();

			while (rs.next()) {
			//레코드 1줄 -> DTO 1개
			PropertyDTO dto = new PropertyDTO();
			
			
			//모든매물 seq
			dto.setSeqProperty(rs.getString("seqProperty_lp"));
			dto.setSeqLessorProperty(rs.getString("seqLessorProperty"));
			
			//1. 방옵션
			dto.setRoomType(rs.getString("roomType"));
			dto.setSpacing(rs.getString("spacing"));
			
			//2. 계약형태
			dto.setContractTypeDetail(rs.getString("contractType"));
			
			//보증금
			String deposit = String.format("%d,.3" + "원", rs.getInt("deposit"));
			dto.setDeposit(deposit);
			
			//월세
			String monthlyRent = String.format("%d,.3" + "원", rs.getInt("monthlyRent"));
			dto.setMonthlyRent(monthlyRent);
			
			//매매
			String dealing = String.format("%d,.3" + "원", rs.getInt("dealing"));			
			dto.setDealing(rs.getString(dealing));
			
			//기간
			String period = String.format("%d,.3" + "개월", rs.getInt("period"));
			dto.setContractPeriod(period);
			
			
			
			//3. 관리비
			dto.setInternet(rs.getInt("internet"));
			dto.setCable(rs.getInt("cabletv"));
			dto.setCleaning(rs.getInt("cleaning"));
			dto.setWater(rs.getInt("water"));
			dto.setGas(rs.getInt("gas"));
			dto.setElectric(rs.getInt("electric"));
			dto.setServiceCharge(rs.getInt("serviceCharge"));
			
			//4. 건물옵션			
			dto.setParking(rs.getInt("parking"));
			dto.setElevator(rs.getInt("elevator"));
			dto.setPet(rs.getInt("pet"));
			dto.setWindow(rs.getInt("window"));
			dto.setFloor(rs.getString("floor"));
			
			//5. 방옵션 12개
			dto.setAirconditional(rs.getInt("airconditional"));
			dto.setWasher(rs.getInt("washer"));
			dto.setBed(rs.getInt("bed"));
			dto.setDesk(rs.getInt("desk"));
			dto.setCloset(rs.getInt("closet"));
			dto.setTv(rs.getInt("tv"));
			dto.setShoebox(rs.getInt("shoebox"));
			dto.setRefrigerator(rs.getInt("refrigerator"));
			dto.setStove(rs.getInt("stove"));
			dto.setInduction(rs.getInt("induction"));
			dto.setMicrowave(rs.getInt("microwave"));
			dto.setBidet(rs.getInt("bidet"));
			
			//6. 지역
			dto.setLocation(rs.getString("location"));
			
			//7. 이미지
			dto.setPath(rs.getString("path"));
			
			
			
			/*
			 * //8. 최종넣기 dto.setSeqContractor(rs.getString("seqContractor"));
			 * dto.setOccupancyDate(rs.getString("occupancyDate"));
			 * dto.setTitle(rs.getString("title")); dto.setContent(rs.getString("content"));
			 */
			
			//etc. 입주 가능 or 계약완료
			dto.setAvailable(rs.getInt("available"));

			list.add(dto);				
		}

			return list; 

		} catch (Exception e) {
			System.out.println("list: " + e);
		}

			return null;
	}
	
	
	
	//2. 매물올리기

		
		
		
	}


