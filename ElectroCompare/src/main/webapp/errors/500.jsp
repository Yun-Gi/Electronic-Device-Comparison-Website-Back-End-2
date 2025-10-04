<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isErrorPage="true" %>
<% response.setStatus(200); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="../_favicon.jsp" %>
<title>500에러 페이지</title>
</head>
<body style="background-color: #f5f6f7;">
	<br><br><br><br><br><br><br>
	<h1 style="text-align: center;">500</h1>
	<h2 style="text-align: center;">서버에 오류가 발생하였습니다.</h2>
	<p style="text-align: center;">잠시 뒤 시도해주세요.</p>
</body>
</html>