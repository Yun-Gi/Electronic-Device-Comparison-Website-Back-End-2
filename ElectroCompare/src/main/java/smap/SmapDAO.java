package smap;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import util.DatabaseUtil;

public class SmapDAO {
	public List<String> getAllName() {
		String SQL ="SELECT Name From smap";
		List<String> names = new ArrayList<>();
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
		try {
			conn = DatabaseUtil.getConnection();
			pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				String name = rs.getString("Name");
				names.add(name);		
			}
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			try{if(conn != null) conn.close(); }catch(Exception e) {e.printStackTrace();}
			try{if(pstmt != null) pstmt.close(); }catch(Exception e) {e.printStackTrace();}
			try{if(rs != null) rs.close(); }catch(Exception e) {e.printStackTrace();}
			
		}
		return names;
	}
	
	public String getManufacturer(String manu) {
		String SQL ="SELECT Manufacturer From user where Manufacturer = ?";
		String manufacturer = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DatabaseUtil.getConnection();
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, manu);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				manufacturer= rs.getString("Manufacturer");
			}
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			try{if(conn != null) conn.close(); }catch(Exception e) {e.printStackTrace();}
			try{if(pstmt != null) pstmt.close(); }catch(Exception e) {e.printStackTrace();}
			try{if(rs != null) rs.close(); }catch(Exception e) {e.printStackTrace();}
			
		}
		return manufacturer;
	}
	
	public SmapDTO getAllvalue(String name) {
		String SQL ="SELECT * From smap where Name=?";
		SmapDTO dto = new SmapDTO();
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
		try {
			conn = DatabaseUtil.getConnection();
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1,name);
			rs = pstmt.executeQuery();			
			while(rs.next()) {
					dto.setSmapManufacturer(rs.getString(1));
					dto.setSmapRelease_Date(rs.getDate(2));
					dto.setSmapSize(rs.getString(3));
					dto.setSmapRam(rs.getInt(4));
					dto.setSmapMemory(rs.getString(5));
					dto.setSmapWeight(rs.getInt(6));
					dto.setSmapBettery(rs.getInt(7));
					dto.setSmapPrice(rs.getInt(8));
					dto.setSmapFrontCamera(rs.getString(9));
					dto.setSmapBackCamera(rs.getString(10));
					dto.setSmapName(rs.getString(11));
					dto.setSmapColor(rs.getString(12));
			}
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			try{if(conn != null) conn.close(); }catch(Exception e) {e.printStackTrace();}
			try{if(pstmt != null) pstmt.close(); }catch(Exception e) {e.printStackTrace();}
			try{if(rs != null) rs.close(); }catch(Exception e) {e.printStackTrace();}
			
		}
		return dto;
	}
}