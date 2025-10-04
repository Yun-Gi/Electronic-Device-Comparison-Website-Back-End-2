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
		ResultSet rs = null; //Ư���� SQL���� �����ϰ� ���� ������� ���� ó���� ���ְ��� �� ��
		try {
			conn = DatabaseUtil.getConnection(); //����� ��ü �ޱ�
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, userID); // ù��° ����ǥ�� ����ڷκ��� ���� uesrID���� �ִ´�.
			rs = pstmt.executeQuery(); //�����͸� �˻��� �� �� ��ȸ�� ��
			if(rs.next()) {
				if (rs.getString(1).equals(userPassword)) {
					return 1; // �Է¹��� userID�� ��й�ȣ��  DAO login�޼����� �Ű������� ���� password�� ��ġ�ϸ� ���� ����(1) 
				}
				else {
					return 0; //�ƴϸ� ��й�ȣ ��ġ���� ���� 0
				}
			}
			return -1; //���̵� ��� ��Ҹ� �߰����� ���� (-1)
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			try{if(conn != null) conn.close(); }catch(Exception e) {e.printStackTrace();} //����Ʈ���̽� ���� �ڿ� ����
			try{if(pstmt != null) pstmt.close(); }catch(Exception e) {e.printStackTrace();}
			try{if(rs != null) rs.close(); }catch(Exception e) {e.printStackTrace();}
			
		}
		return -2; //���� ���� ���� ������� �ʾ����� �����ͺ��̽� ����
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
		return -1; //ȸ������ ����
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