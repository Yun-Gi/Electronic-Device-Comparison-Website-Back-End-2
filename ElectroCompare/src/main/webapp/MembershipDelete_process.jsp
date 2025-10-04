<%@page import="bbs.BbsDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="user.UserDTO" %>
<%@ page import="user.UserDAO" %>
<%@ page import = "java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% request.setCharacterEncoding("UTF-8");
		String userID =null;
		String userPassword = null;
		
		if(request.getParameter("userID")!=null)
			userID = request.getParameter("userID");
		if(request.getParameter("userPassword")!=null)
			userPassword = request.getParameter("userPassword");
		if(request.getParameter("userPassword")==null||request.getParameter("userID")==null)
			return ;
		
		UserDAO userDAO = new UserDAO();
		
		int result = userDAO.deleteUser(userID, userPassword);
			
		if (result==1){
			session.invalidate();
			int isbbsDelete = new BbsDAO().deleteNoneUser(userID);
		    PrintWriter script = response.getWriter();
		    script.println("<script>");
		    script.println("alert('회원탈퇴가 완료되었습니다.')");
		    script.println("location.href = '../home'");
		    script.println("</script>");
		}
		else{
		    PrintWriter script = response.getWriter();
		    script.println("<script>");
		    script.println("alert('계정 비밀번호가 일치하지 않습니다.')");
		    script.println("location.href = '../quitMembership'");
		    script.println("</script>");
		}
	%>
	