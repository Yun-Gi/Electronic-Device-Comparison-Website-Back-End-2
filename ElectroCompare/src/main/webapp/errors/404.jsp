<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isErrorPage="true" %>
<% response.setStatus(200); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="../_favicon.jsp" %>
<title>404에러 페이지</title>
</head>
<body style="background-color: #f5f6f7;">
	<br><br><br><br><br><br><br>
	<h1 style="text-align: center;">404</h1>
	<h2 style="text-align: center;">해당 페이지가 존재하지 않습니다!!</h2>
	<p style="text-align: center;">URL을 잘 입력했는지 확인해주세요.</p>
</body>
</html>