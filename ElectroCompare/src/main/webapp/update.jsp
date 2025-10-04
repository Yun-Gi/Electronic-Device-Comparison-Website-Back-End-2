<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="bbs.BbsDAO" %>
<%@ page import="bbs.Bbs" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>게시판 글수정</title>
	<%@include file="_meta.jsp" %>
    <%@include file="_favicon.jsp" %>
    <meta name="robots" content="noindex">
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="/ElectroCompare/css/styles.css" rel="stylesheet" />
        <!-- Bootstrap core JS-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Core theme JS-->
    <script src="/ElectroCompare/js/scripts.js"></script>
</head>
<body>
    <!-- Responsive navbar-->
<%@include file="_header.jsp" %>

    <!-- Page Content-->
    <% 
    if (session.getAttribute("userID") != null){
        userID = (String) session.getAttribute("userID");
    }
    if (userID == null){
    	PrintWriter script = response.getWriter();
        script.println("<script>");
        script.println("alert('로그인하세요.')");
        script.println("location.href = '/ElectroCompare/home'");
        script.println("</script>");
    }
    int bbsID = 0;
    if (request.getParameter("bbsID") != null)
    {
        bbsID = Integer.parseInt(request.getParameter("bbsID"));
    }
    if (bbsID == 0)
    {
        PrintWriter script = response.getWriter();
        script.println("<script>");
        script.println("alert('유효하지 않은 글입니다')");
        script.println("location.href = '/ElectroCompare/board'");
        script.println("</script>");
    }
    Bbs bbs = new BbsDAO().getBbs(bbsID);
    if (!userID.equals(bbs.getUserID())){
    	PrintWriter script = response.getWriter();
        script.println("<script>");
        script.println("alert('권한이 없습니다.')");
        script.println("location.href = '/ElectroCompare/board'");
        script.println("</script>");
    }
    %>
   <div class= "container">
    	<div class= "row">
    		<form method="post" action="./update/result?bbsID=<%= bbsID%>">
    			<table class= "table table-stripped" style= "text-align: center; boarder: 1px solid #dddddd">
	    	    	<thead>
		    	    	<tr>
		    	    		<th colspan= "2" style= "background-color: #eeeeee; text-align: center;">게시판 글 수정 양식</th>
		    	    	</tr>
	    	    	</thead>
			    	<tbody>
			    		<tr>
			    			<td><input type="text" class="form-control" placeholder="글 제목"  name="bbsTitle" maxlength="50" value="<%= bbs.getBbsTitle()%>"></td>
			    		</tr>
			    		<tr>
			    			<td><textarea class="form-control" placeholder="글 내용"  name="bbsContent" maxlength="2048" style= "height:350px"><%= bbs.getBbsContent()%></textarea></td>
			    		</tr>
			    	</tbody>
    	    	</table>
    	    	<input type="submit" class="btn btn-primary pull-right" value="글수정">
    		</form>
    	    </div>
    </div>
    <!-- Footer-->
	<%@include file="_footer.jsp" %>
</body>
</html>