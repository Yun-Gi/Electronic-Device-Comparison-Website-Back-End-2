<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import= "user.UserDAO" %>
<%@ page import= "user.UserDTO" %>
<%@ page import = "java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>로그인 처리중</title>
</head>
<body>
		<% request.setCharacterEncoding("UTF-8");
		String userID =null;
		String userPassword = null;
		userID = request.getParameter("userID");
		userPassword = request.getParameter("userPassword");
		
		UserDAO userDAO = new UserDAO();
		int result =userDAO.login(userID,userPassword);
		
		if (result == 1){
			session.setAttribute("userID", userID);
			response.sendRedirect("../home");
		}
		else{ // 오류인 경우 다시 로그인 페이지로 redirect
        	PrintWriter script = response.getWriter();
            script.println("<script>");
            script.println("alert('계정 정보가 일치하지 않습니다.')");
            script.println("location.href = '../login'");
            script.println("</script>");
		}
		%>
</body>
</html>