<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>게시판 글쓰기</title>
	<%@include file="_meta.jsp" %>
    <%@include file="_favicon.jsp" %>
    <meta name="robots" content="noindex">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
    <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Roboto:400,500,700&amp;display=swap'>
	<link href="../css/styles.css" rel="stylesheet" />
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Core theme JS-->
    <script src="../js/scripts.js"></script>
    <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
</head>
<body>
    <!-- Responsive headerbar-->
    <%@include file="_header.jsp" %>
    
    <!-- Page Content-->
    <div class="container">
        <div class="row">
        	<form method="post" action="./write/result">
            	<table class="table table-striped" style="text-align:center; border:1px solid #dddddd">
                	<thead>
	                    <tr>
	                        <th colspan="2" style="background-color:#eeeeee; text-align:center;">게시판 글쓰기</th>
	                    </tr>
	                </thead>
	                <tbody>
	                	<tr>
	                		<td><input type="text" class="form-control" placeholder="글 제목" name="bbsTitle" maxlength="50"></td>
	                	</tr>
	                	<tr>
	                		<td><textarea class="form-control" placeholder="글 내용" name="bbsContent" maxlength="2048" style="height:350px;"></textarea></td>                	
	                	</tr>
	                </tbody>
	            </table>
	            <input type="submit" class="btn btn-primary pull-center" value="글쓰기">
	        </form>
        </div>
     </div>

    <!-- Bootstrap core JS-->

</body>
</html>