package gpu;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import util.DatabaseUtil;

public class GpuDAO {
	public List<String> getAllName() {
		String SQL ="SELECT Name From gpu";
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
	public GpuDTO getAllvalue(String name) {
		String SQL ="SELECT * From gpu where Name=?";
		GpuDTO dto = new GpuDTO();
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
		try {
			conn = DatabaseUtil.getConnection();
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1,name);
			rs = pstmt.executeQuery();			
			while(rs.next()) {
					dto.setManufacturer(rs.getString(1));
					dto.setName(rs.getString(2));
					dto.setRelease(rs.getDate(3));
					dto.setCore(rs.getInt(4));
					dto.setBclock(rs.getFloat(5));
					dto.setClock(rs.getFloat(6));
					dto.setMemory(rs.getInt(7));
					dto.setIface(rs.getInt(8));
					dto.setTdp(rs.getInt(9));
					dto.setPrice(rs.getInt(10));
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

