package com.myhome.admin2;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;

import com.myhome.DBUtil;

public abstract class Admin2 {
	// DB 열고 닫습니다. 
	public Connection conn;
	public Statement st;
	public PreparedStatement ps;
	public ResultSet rs;
	public CallableStatement ct;

	//목록을 불러 오는 역할을 수행합니다 
	public abstract ArrayList list(HashMap<String,String> map);
	// 페이징 시의 최대 페이수를 돌려주는 역할을 수해합니다. 
	public abstract int totalCount(HashMap<String, String> map);
	
	public void close() {
		try {
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("close : " + e);
		}
	}
	
	public Admin2() {
		conn =DBUtil.open();
	}


}



