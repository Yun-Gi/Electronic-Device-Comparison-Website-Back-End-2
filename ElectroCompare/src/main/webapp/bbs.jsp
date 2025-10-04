<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="bbs.BbsDAO" %>
<%@ page import="bbs.Bbs" %>
<%@ page import="java.util.ArrayList" %>

<!DOCTYPE html>
<html>
<head>
    <title>알뜰살뜰 전자상가 : 게시판</title>
	<%@include file="_meta.jsp" %>
    <%@include file="_favicon.jsp" %>
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="css/styles.css" rel="stylesheet" />
     <!-- Bootstrap core JS-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Core theme JS-->
    <script src="js/scripts.js"></script>
    <style type = "text/css">
    a, a:hover
    {
        color: #000000;
        text-decoration: none;
    }
</style>
</head>
<body>
    <!-- Responsive navbar-->
<%@include file="_header.jsp" %>

	</div>
<%

    if (session.getAttribute("userID") != null)
    {
        userID = (String)session.getAttribute("userID");
    }
    int pageNumber = 1; // 기본페이지 
    if (request.getParameter("pageNumber") != null)
    {
        pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
    }
%>
    <!-- Page Content-->
    <div class="container px-4 px-lg-5">
        <!-- Heading Row-->
        <div class="row">
			<form method="post" name="search" action="bbsSearch.jsp">
				<table class="pull-right">
					<tr>
						<td><select class="form-control" name="searchField">
								<option value="0">선택</option>
								<option value="bbsTitle">제목</option>
								<option value="bbscontent">내용</option>
						</select></td>
						<td><input type="text" class="form-control"
							placeholder="검색어 입력" name="searchText" maxlength="100"></td>
						<td><button type="submit" class="btn btn-secondary" style="float:right;">검색</button></td>
					</tr>

				</table>
			</form>
		</div>
        
        <div class="row gx-3 gx-lg-5 align-items-center my-5">
            <table class="table table-striped" style="text-align:center; border:1px solid #dddddd">
                <thead>
                    <tr>
                        <th style="background-color:#eeeeee; text-align:center;">번호</th>
                        <th style="background-color:#eeeeee; text-align:center;">제목</th>
                        <th style="background-color:#eeeeee; text-align:center;">작성자</th>
                        <th style="background-color:#eeeeee; text-align:center;">작성일</th>
                    </tr>
                </thead>
                <tbody>
                	<%
                		BbsDAO bbsDAO = new BbsDAO();
                		ArrayList<Bbs> list = bbsDAO.getList(pageNumber);
                		for(int i = 0; i < list.size(); i++){
                	%>	
                	<tr>
                		<td><%= list.get(i).getBbsID() %></td>
                		<td><a href="./board/view?bbsID=<%= list.get(i).getBbsID() %> "><%= list.get(i).getBbsTitle().replaceAll(" ","&nbsp;").replaceAll("<","&lt;").replaceAll(">", "&gt;").replaceAll("\n","<br>") %></a></td>
                		<td><%= list.get(i).getUserID() %></td>
                		<td><%= list.get(i).getBbsDate().substring(0,11) + list.get(i).getBbsDate().substring(11,13) + ":" + list.get(i).getBbsDate().substring(14,16)%></td>
                	</tr>	
                	<% 		
                		}
                	%>
                </tbody>
            </table>

            <div class="row">
	            <div class="col text-end">
			        <%
		    	    	if(pageNumber != 1){
		    	    %>		
		    	    		<a href= "bbs.jsp?pageNumber=<%=pageNumber -1%>" class="btn btn-success btn-arraw-left">이전</a>
		    	    <% 
		    	    	}if(bbsDAO.nextPage(pageNumber + 1)){
		    	    %>		
		    	    	<a href= "bbs.jsp?pageNumber=<%=pageNumber +1%>" class="btn btn-success btn-arraw-left">다음</a>
		    	    <% 
		    	    	}
		    	    %>
	                <a href="./board/writeCondition" class="btn btn-secondary">글쓰기</a>
	            </div>
        	</div>
        </div>
    </div>        
        
    <!-- Footer-->
    <footer class="py-5 bg-dark" style="position:absolute; bottom:0px; width:100%;">
        <div class="container px-4 px-lg-5"><p class="m-0 text-center text-white">Copyright &copy; 재항, 윤기, 규혁, 재선</p></div>
    </footer>
</body>
</html>