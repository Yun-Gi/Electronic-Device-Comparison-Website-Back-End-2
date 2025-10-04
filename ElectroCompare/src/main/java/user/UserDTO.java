package user;

public class UserDTO {
	private String userID;
	private String userPassword;
	private String userName;
	private String userEmail;
	private String userEmailHash;
	private Boolean userEmailchecked;
	
	public String getUserID() {
		return userID;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}
	public String getUserPassword() {
		return userPassword;
	}
	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public String getUserEmailHash() {
		return userEmailHash;
	}
	public void setUserEmailHash(String userEmailHash) {
		this.userEmailHash = userEmailHash;
	}
	public Boolean getUserEmailchecked() {
		return userEmailchecked;
	}
	public void setUserEmailchecked(Boolean userEmailchecked) {
		this.userEmailchecked = userEmailchecked;
	}
	public String getUserGender() {
		return userGender;
	}
	public void setUserGender(String userGender) {
		this.userGender = userGender;
	}
	private String userGender;
	
	public UserDTO() {
		
	}
	  
	public UserDTO(String userID, String userPassword, String userName, String userEmail, String userGender) {
		this.userID = userID;
		this.userPassword = userPassword;
		this.userName = userName;
		this.userEmail = userEmail;
		this.userGender = userGender;
	}
	
}
