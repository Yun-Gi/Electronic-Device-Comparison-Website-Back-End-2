<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>알뜰살뜰 전자상가 : 비밀번호 변경</title>
	<%@include file="_meta.jsp" %>
    <%@include file="_favicon.jsp" %>
    <meta name="robots" content="noindex">
	<link rel="stylesheet" type="text/css" href="css/membership.css">
	<script type="text/javascript" src="js/scripts.js"></script>
</head>
<body style="background-color: #f5f6f7;">
	<div id="header_membership">
		<h1>
			<a href="index.jsp" style="text-decoration:none; color:black">알뜰살뜰 전자상가</a>
		</h1>
		<h1 style="font-size:17px">[ 비밀번호 변경 ]</h1>
	</div>
	<div id="article_membership">
		<div id="form_section">
			<form name="member_form" action="./changePassword/result" method="post">
			<%	String userID = null;
			if(session.getAttribute("searchUserID")==null){
				userID= (String)session.getAttribute("userID");
			}
			else{
				userID= (String)session.getAttribute("searchUserID");
			}
				
				%>
				<input type="hidden" name="userID" value="<%=userID %>">
				<h3>비밀번호 재설정</h3>
				<input type="password" name="userPassword">
				<h3>비밀번호 재확인</h3>
				<input type="password" name="re_passwd">
				<br><br>
				<input type="button" value="변경하기" onclick = "checkChangePassword()">	
			</form>
		</div>
	</div>
</body>
</html>