<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>알뜰살뜰 전자상가 : 비밀번호 찾기</title>
	<%@include file="_favicon.jsp" %>
	<%@include file="_meta.jsp" %>
	<meta name="robots" content="noindex">
	<link rel="stylesheet" type="text/css" href="css/membership.css">
	<script type="text/javascript" src="js/scripts.js"></script>
</head>
<body style="background-color: #f5f6f7;">
	<div id="header_membership">
		<h1>
			<a href="index.jsp" style="text-decoration:none; color:black">알뜰살뜰 전자상가</a>
		</h1>
		<h1 style="font-size:17px">[ 비밀번호 찾기 ]</h1>
	</div>
	<div id="article_membership">
		<div id="form_section">
			<form name="member_form" action="./searchPassword/result" method="post">
				<h3><label for="id">아이디</label></h3>
				<input type="text" name="userID" maxlength="20" id="id" placeholder="4자리 ~ 20자리">
				<h3><label for="name">이름</label></h3>
				<input type="text" name="userName" id="name">
				<h3><label for="email">이메일</label></h3>
				<input type="text" name="userEmail" id="email" placeholder="예시) example404@naver.com">
				<br><br>
				<input type="button" value="찾기" onclick = "checkSearchPassword()">	
			</form>
		</div>
	</div>
</body>
</html>