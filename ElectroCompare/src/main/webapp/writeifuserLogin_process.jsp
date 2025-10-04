<%@ page language="java" contentType="text/html; charset=UTF-8"
 	pageEncoding="UTF-8" %>
<%@ page import ="java.io.PrintWriter" %>

<%  if ((String)session.getAttribute("userID")==null){
	    PrintWriter script = response.getWriter();
	    script.println("<script>");
	    script.println("alert('로그인후 이용 가능합니다')");
	    script.println("location.href = '../login'");
	    script.println("</script>");
	}else{
		PrintWriter script = response.getWriter();
	    script.println("<script>");
	    script.println("location.href = '../board/write'"); 
	    script.println("</script>");
	}

%>