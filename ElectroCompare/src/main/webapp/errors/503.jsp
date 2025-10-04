<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isErrorPage="true" %>
<% response.setStatus(200); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="../_favicon.jsp" %>
<title>503에러 페이지</title>
</head>
<body style="background-color: #f5f6f7;">
	<br><br><br><br><br><br><br>
	<h1 style="text-align: center;">503</h1>
	<h2 style="text-align: center;">사이트 임시점검 중입니다.</h2>
	<p style="text-align: center;">임시점검이 완료된 후 찾아와주세요.</p>
</body>
</html>