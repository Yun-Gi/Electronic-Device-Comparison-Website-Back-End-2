package user;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import util.DatabaseUtil;

public class UserDAO {
	
	public int login(String userID,String userPassword) {
		String SQL ="SELECT userPassword From user where userID = ?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null; //특정한 SQL문을 실행하고 나온 결과값에 대해 처리를 해주고자 할 때
		try {
			conn = DatabaseUtil.getConnection(); //연결된 객체 받기
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, userID); // 첫번째 물음표에 사용자로부터 받은 uesrID값을 넣는다.
			rs = pstmt.executeQuery(); //데이터를 검색할 때 즉 조회할 때
			if(rs.next()) {
				if (rs.getString(1).equals(userPassword)) {
					return 1; // 입력받은 userID의 비밀번호와  DAO login메서드의 매개변수로 받은 password와 일치하면 정상 실행(1) 
				}
				else {
					return 0; //아니면 비밀번호 일치하지 않음 0
				}
			}
			return -1; //아이디가 없어서 요소를 발견하지 못함 (-1)
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			try{if(conn != null) conn.close(); }catch(Exception e) {e.printStackTrace();} //데이트베이스 연결 자원 해제
			try{if(pstmt != null) pstmt.close(); }catch(Exception e) {e.printStackTrace();}
			try{if(rs != null) rs.close(); }catch(Exception e) {e.printStackTrace();}
			
		}
		return -2; //위의 것이 전부 실행되지 않았으면 데이터베이스 오류
	}
	
	public int join(UserDTO user) {
		String SQL ="insert into user value(?,?,?,?,?)";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null; 
		try {
			conn = DatabaseUtil.getConnection();
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1,user.getUserID());
			pstmt.setString(2,user.getUserPassword());
			pstmt.setString(3,user.getUserName());
			pstmt.setString(4,user.getUserEmail());
			pstmt.setString(5,user.getUserGender());
			return pstmt.executeUpdate();
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			try{if(conn != null) conn.close(); }catch(Exception e) {e.printStackTrace();} 
			try{if(pstmt != null) pstmt.close(); }catch(Exception e) {e.printStackTrace();}
			try{if(rs != null) rs.close(); }catch(Exception e) {e.printStackTrace();}
			
		}
		return -1; //회원가입 실패
	}
	
	public int searchPassword(String userID,String userName,String userEmail) {
		String SQL ="SELECT userPassword From user where userID = ? and userName= ? and userEmail = ?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DatabaseUtil.getConnection();
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, userID);
			pstmt.setString(2, userName);
			pstmt.setString(3, userEmail);
			rs = pstmt.executeQuery();
			if(rs.next()){
				return 1;
			}
			return -1; 
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			try{if(conn != null) conn.close(); }catch(Exception e) {e.printStackTrace();} 
			try{if(pstmt != null) pstmt.close(); }catch(Exception e) {e.printStackTrace();}
			try{if(rs != null) rs.close(); }catch(Exception e) {e.printStackTrace();}
			
		}
		return -2; 
	}
	
	public int changePassword(String userID,String reUserPassword) {
		String SQL ="update user set userPassword = ? where userID = ? ";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DatabaseUtil.getConnection();
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1,reUserPassword);
			pstmt.setString(2,userID);
			return pstmt.executeUpdate(); 
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			try{if(conn != null) conn.close(); }catch(Exception e) {e.printStackTrace();} 
			try{if(pstmt != null) pstmt.close(); }catch(Exception e) {e.printStackTrace();}
			try{if(rs != null) rs.close(); }catch(Exception e) {e.printStackTrace();}
			
		}
		return -1;
	}

	public int deleteUser(String userID,String userPassword) {
		String SQL ="delete from user where userID = ? and userPassword = ?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DatabaseUtil.getConnection();
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1,userID);
			pstmt.setString(2,userPassword);
			return pstmt.executeUpdate(); 
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			try{if(conn != null) conn.close(); }catch(Exception e) {e.printStackTrace();} 
			try{if(pstmt != null) pstmt.close(); }catch(Exception e) {e.printStackTrace();}
			try{if(rs != null) rs.close(); }catch(Exception e) {e.printStackTrace();}
			
		}
		return -1;
	}
}