<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>알뜰살뜰 전자상가 : 로그인</title>
	<%@include file="_meta.jsp" %>
	 <%@include file="_favicon.jsp" %>
    <link rel="stylesheet" type="text/css" href="css/membership.css">
</head>
<body 	">
	<div id="header_membership">
		<h1>
			<a href="index.jsp" style="text-decoration:none; color:black">알뜰살뜰 전자상가</a>
		</h1>
		<h1 style="font-size:17px">[ 로그인 ]</h1>
	</div>
	<div id="article_membership">
		<div id="form_section">
			<form name="member_form" action="./login/result" method="post">
				<h3><label for="id">아이디</label></h3>
				<input type="text" name="userID" maxlength="20" id="id" placeholder="4자리 ~ 20자리">
				<h3>비밀번호</h3>
				<input type="password" name="userPassword" placeholder="특수문자를 포함한 8자리 ~ 20자리">
				<br><br>
				<input type="submit" value="로그인">	
			</form>
		</div>
	</div>
</body>
</html>