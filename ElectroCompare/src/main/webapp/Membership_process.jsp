<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="user.UserDTO" %>
<%@ page import="user.UserDAO" %>
<%@ page import = "java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 처리중</title>
</head>
<body>
	<% request.setCharacterEncoding("UTF-8");
		String userID =null;
		String userPassword = null;
		String userName = null;
		String userEmail = null;
		String userGender =null;
		
		if(request.getParameter("userID")!=null)
			userID = request.getParameter("userID");
		if(request.getParameter("userPassword")!=null)
			userPassword = request.getParameter("userPassword");
		if(request.getParameter("userName")!=null)
			userName = request.getParameter("userName");
		if(request.getParameter("userEmail")!=null)
			userEmail= request.getParameter("userEmail");
		if(request.getParameter("userGender")!=null)
			userGender = request.getParameter("userGender");
		if(request.getParameter("userGender")==null ||request.getParameter("userEmail")==null ||
				request.getParameter("userName")==null||request.getParameter("userPassword")==null||request.getParameter("userID")==null)
			return ;
		
		UserDAO userDAO = new UserDAO();
		
		int result = userDAO.join(new UserDTO(userID,userPassword,userName,userEmail,userGender));
	    PrintWriter script = response.getWriter();
	    script.println("<script>");
	    script.println("alert('회원가입 완료되었습니다.')");
	    script.println("location.href = '../home'");    // 메인 페이지로 이동
	    script.println("</script>");
		
	%>
</body>
</html>