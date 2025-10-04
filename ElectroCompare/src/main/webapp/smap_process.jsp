<%@page import="smap.SmapDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<%	
	request.setCharacterEncoding("UTF-8");
	String smap1 = request.getParameter("selectsmap1");
	String smap2 = request.getParameter("selectsmap2");
	smap1 = smap1.replaceAll("\\+$", "%2B"); 
	response.sendRedirect("/ElectroCompare/SmartPhone?smap1="+smap1+"&smap2="+smap2);

%>