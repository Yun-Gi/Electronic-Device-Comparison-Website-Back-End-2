<%@ page language="java" contentType="text/html; charset=UTF-8"
 	pageEncoding="UTF-8" %>
<%@ page import = "bbs.BbsDAO" %>
<%@ page import = "java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="bbs" class="bbs.Bbs" scope="page"></jsp:useBean>
<jsp:setProperty name="bbs" property="bbsTitle"/>
<jsp:setProperty name="bbs" property="bbsContent"/>
    <%	String userID = null;
    	if (session.getAttribute("userID") != null){
            userID = (String) session.getAttribute("userID");
    	}
    	if (userID == null){
            PrintWriter script = response.getWriter();
            script.println("<script>");
            script.println("alert('로그인을 하세요.')");
            script.println("location.href = '/ElectroCompare/login'");
            script.println("</script>");
    	}else{
        	if (bbs.getBbsTitle() == null || bbs.getBbsContent() == null){
            		PrintWriter script = response.getWriter();
                    script.println("<script>");
                    script.println("alert('입력이 안된 사항이 있습니다.')");
                    script.println("history.back()");    // 이전 페이지로 사용자를 보냄
                    script.println("</script>");
            	}else{
            		BbsDAO bbsDAO = new BbsDAO();
                    int result = bbsDAO.write(bbs.getBbsTitle(), userID, bbs.getBbsContent());
                    if (result == -1){ // 회원가입 실패시
                        PrintWriter script = response.getWriter();
                        script.println("<script>");
                        script.println("alert('글쓰기에 실패했습니다.')");
                        script.println("history.back()");    // 이전 페이지로 사용자를 보냄
                        script.println("</script>");
                    }else{
                        PrintWriter script = response.getWriter();
                        script.println("<script>");
                        script.println("location.href = '/ElectroCompare/board'");
                        script.println("</script>");
                    }
            	}
    	}
    %>