<%@page import="cpu.CpuDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<%	
	request.setCharacterEncoding("UTF-8");
	String cpu1 = request.getParameter("selectcpu1");
	String cpu2 = request.getParameter("selectcpu2");
	
	response.sendRedirect("./CPU?cpu1="+cpu1+"&cpu2="+cpu2);

%>