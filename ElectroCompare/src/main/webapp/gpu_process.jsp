<%@page import="gpu.GpuDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<%
	String gpu1 = request.getParameter("selectgpu1");
	String gpu2 = request.getParameter("selectgpu2");
	
	response.sendRedirect("./GPU?gpu1="+gpu1+"&gpu2="+gpu2);

%>