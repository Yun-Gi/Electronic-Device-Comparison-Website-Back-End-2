package cpu;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


import util.DatabaseUtil;

public class CpuDAO {
	public List<String> getAllName() {
		String SQL ="SELECT Name From cpu";
		List<String> names = new ArrayList<>();
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
		try {
			conn = DatabaseUtil.getConnection();
			pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();
			 //데이터를 검색할 때 즉 조회할 때
			while(rs.next()) {
				String name = rs.getString("Name");
				names.add(name);		
			}
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			try{if(conn != null) conn.close(); }catch(Exception e) {e.printStackTrace();} //데이트베이스 연결 자원 해제
			try{if(pstmt != null) pstmt.close(); }catch(Exception e) {e.printStackTrace();}
			try{if(rs != null) rs.close(); }catch(Exception e) {e.printStackTrace();}
			
		}
		return names;
	}
	
	public CpuDTO getAllvalue(String name) {
		String SQL ="SELECT * From cpu where Name=?";
		CpuDTO dto = new CpuDTO();
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
		try {
			conn = DatabaseUtil.getConnection();
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1,name);
			rs = pstmt.executeQuery();			
			while(rs.next()) {
					dto.setCpuManufacturer(rs.getString(1));
					dto.setCpuName(rs.getString(2));
					dto.setCpuRelease_date(rs.getDate(3));
					dto.setCpuCores(rs.getInt(4));
					dto.setCpuThreads(rs.getInt(5));
					dto.setCpuManufacturing(rs.getInt(6));
					dto.setCpuBase_Clock(rs.getFloat(7));
					dto.setCpuTurbo_Clock(rs.getFloat(8));
					dto.setCpuTDP(rs.getInt(9));
					dto.setCpuPrice(rs.getInt(10));
			}
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			try{if(conn != null) conn.close(); }catch(Exception e) {e.printStackTrace();} //데이트베이스 연결 자원 해제
			try{if(pstmt != null) pstmt.close(); }catch(Exception e) {e.printStackTrace();}
			try{if(rs != null) rs.close(); }catch(Exception e) {e.printStackTrace();}
			
		}
		return dto;
	}
}
