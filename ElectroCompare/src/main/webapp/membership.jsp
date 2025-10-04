<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>알뜰살뜰 전자상가 : 회원가입</title>
	<%@include file="_meta.jsp" %>
	<%@include file="_favicon.jsp" %>
	<link rel="stylesheet" type="text/css" href="css/membership.css">
	<script type="text/javascript" src="js/scripts.js"></script>
</head>
<body style="background-color: #f5f6f7;">
	<div id="header_membership">
		<h1>
			<a href="index.jsp" style="text-decoration:none; color:black">알뜰살뜰 전자상가</a>
		</h1>
		<h1 style="font-size:17px">[ 회원가입 ]</h1>
	</div>
	<div id="article_membership">
		<div id="form_section">
			<form name="member_form" action="./signUp/result" method="post">
				<h3><label for="id">아이디</label></h3>
				<input type="text" name="userID" maxlength="20" id="id" placeholder="4자리 ~ 20자리">
				<h3>비밀번호</h3>
				<input type="password" name="userPassword" placeholder="특수문자를 포함한 8자리 ~ 20자리">
				<h3>비밀번호 재확인</h3>
				<input type="password" name="re_passwd">
				<h3><label for="name">이름</label></h3>
				<input type="text" name="userName" id="name">
				<h3>이메일</h3>
				<input type="text" name="userEmail" placeholder="예시) example404@naver.com">
				<h3>성별</h3>
				<select name="userGender" size="1" id="gender">
					<option selected value="null">선택</option>
					<option value="남성">남성</option>
					<option value="여성">여성</option>
					<option value="other">그 외</option>
				</select>
				<br><br>
				<input type="button" value="가입하기" onclick = "checkSignUp()">	
			</form>
		</div>
	</div>
</body>
</html>