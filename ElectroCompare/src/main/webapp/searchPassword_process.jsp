<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import= "user.UserDAO" %>
<%@ page import= "user.UserDTO" %>
<%@ page import = "java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 찾는중</title>
</head>
<body>
		<% request.setCharacterEncoding("UTF-8");
		String userID =null;
		String userName = null;
		String userEmail = null;
		
		if(request.getParameter("userID")!=null)
			userID = request.getParameter("userID");
		if(request.getParameter("userName")!=null)
			userName = request.getParameter("userName");
		if(request.getParameter("userEmail")!=null)
			userEmail= request.getParameter("userEmail");
		if(request.getParameter("userEmail")==null ||
				request.getParameter("userName")==null||request.getParameter("userID")==null)
			return ;
		
		UserDAO userDAO = new UserDAO();
		int result = userDAO.searchPassword(userID, userName, userEmail);
		
		
		if (result == 1){
		    PrintWriter script = response.getWriter();
		    script.println("<script>");
		    script.println("alert('계정 정보가 일치합니다. 비밀번호를 변경하세요.')");
			script.println("location.href = '../changePassword'"); 
		    script.println("</script>");
			session.setAttribute("searchUserID", userID);
		}
		else{
			PrintWriter script = response.getWriter();
		    script.println("<script>");
		    script.println("alert('계정 정보가 일치하지 않습니다.')");
			script.println("location.href = '../searchPassword'"); 
		    script.println("</script>");
		}
		%>
</body>
</html>