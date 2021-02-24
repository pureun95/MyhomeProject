package com.myhome.contractor.upload;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

/*
 * 중개인 본인 매물 올리기 DAO
 * 
 * */
public class UploadContractorDAO {
	
	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private CallableStatement cstat;
	private ResultSet rs;

	//1. 방형태 넣기
	public int insertRoom(UploadContractorDTO dto) {
		
		try {
			
			String sql = "insert into tblPropertyRoomType(seqPropertyRoomType, seqPropertyRoomTypeDetail, spacing)\r\n"
					+ " values(seqPropertyRoomType.nextVal, ?, ?)";
			
			pstat = conn.prepareStatement(sql);
			pstat.setInt(1, dto.getRoomType());
			pstat.setInt(2, dto.getSpacing());
			
			
		} catch (Exception e) {
			
		}
		
		return 0;
	
		
	}
	
	//2. 계약형태 넣기
	public int insertContractType(UploadContractorDTO dto) {
		
		try {
			
			String sql = "insert into tblPropertyContractType(seqPropertyContractType, "
					+ "        seqPropertyContractTypeDetail, "
					+ "        deposit, monthlyRent, dealing, "
					+ "        contractPeriod) values (seqPropertyContractType.nextVal, ?, ?, ?, ?, ?)";
			
			pstat = conn.prepareStatement(sql);
			pstat.setInt(1, dto.getContractTypeDetail());
			pstat.setInt(2, dto.getDeposit());
			pstat.setInt(3, dto.getMonthlyRent());
			pstat.setInt(4, dto.getDealing());
			pstat.setInt(5, dto.getContractPeriod());
			
		} catch (Exception e) {
			
		}
		
		return 0;
		
	}
	
	
	//3. 관리비
	public int insertServiceCharge(UploadContractorDTO dto) {
		
		try {
			
			String sql = "insert into tblMaintenanceOption values (seqMaintenanceOption.nextVal, ?, ?, ?, ?, ?, ?, ?)";
			
			pstat = conn.prepareStatement(sql);
			pstat.setInt(1, dto.getInternet());
			pstat.setInt(2, dto.getCable());
			pstat.setInt(3, dto.getCleaning());
			pstat.setInt(4, dto.getWater());
			pstat.setInt(5, dto.getGas());
			pstat.setInt(6, dto.getElectric());
			pstat.setInt(7, dto.getServiceCharge());
			
		} catch (Exception e) {
			
		}
		
		return 0;
		
	}
	
	//4. 건물옵션 넣기
	public int buildingOption(UploadContractorDTO dto) {
		
		try {
			
			String sql = "insert into tblPropertyBuildingOption values (seqPropertyBuildingOption.nextVal, 1, 1, 1, 1)";					
			
			pstat = conn.prepareStatement(sql);
			pstat.setInt(1, dto.getParking());
			pstat.setInt(2, dto.getElevator());
			pstat.setInt(3, dto.getPet());
			pstat.setInt(4, dto.getWindow());
			pstat.setInt(5, dto.getGas());
			pstat.setInt(6, dto.getElectric());
			pstat.setInt(7, dto.getServiceCharge());
			
		} catch (Exception e) {
			
		}
		
		return 0;
		
	}
	
	//5. 방옵션 12개
	public int roomOption(UploadContractorDTO dto) {
		
		try {
			
			String sql = "insert into tblPropertyRoomOption values (seqPropertyRoomOption.nextVal, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)";				
			
			pstat = conn.prepareStatement(sql);
			pstat.setInt(1, dto.getAirconditional());
			pstat.setInt(2, dto.getWasher());
			pstat.setInt(3, dto.getBed());
			pstat.setInt(4, dto.getDesk());
			pstat.setInt(5, dto.getCloset());
			pstat.setInt(6, dto.getTv());
			pstat.setInt(7, dto.getShoebox());
			pstat.setInt(8, dto.getRefrigerator());
			pstat.setInt(9, dto.getStove());
			pstat.setInt(10, dto.getInduction());
			pstat.setInt(11, dto.getMicrowave());
			pstat.setInt(11, dto.getBidet());
			
		} catch (Exception e) {
			
		}
		
		return 0;
		
	}
	
	
	//6. 지역
	public int location(UploadContractorDTO dto) {
		
		try {
			
			String sql = "insert into tblLocation values(seqLocation.nextVal, '서울시 어쩌구 저쩌동')";			
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, dto.getLocation());
			
		} catch (Exception e) {
			
		}
		
		return 0;
		
	}
	
	//7. 이미지
	public int image(UploadContractorDTO dto) {
		
		try {
			
			String sql = "insert into tblImage values(seqImage.nextVal, 'path')";	
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, dto.getPath());
			
		} catch (Exception e) {
			
		}
		
		return 0;
		
	}
	
	
	//8. 최종 방 올리기
	public int write(UploadContractorDTO dto) {
		
		try {
			
			//최종 넣기 프로시저
			String sql = "{ call procUploadProperty(?, ?, ?, ?)";
			
			cstat = conn.prepareCall(sql);

			//중개인번호, 입주가능일, 제목, 상세내용
			cstat.setInt(1, dto.getSeqContractor());
			cstat.setString(2, dto.getOccupancyDate());
			cstat.setString(3, dto.getTitle());
			cstat.setString(4, dto.getContent());
			
			cstat.executeUpdate();
			
			//out 결과값
			int result = cstat.getInt(3);
			
			return result;
			
		} catch (Exception e) {
			System.out.println(e);
		}
		
		return 0;
		
	}

}
