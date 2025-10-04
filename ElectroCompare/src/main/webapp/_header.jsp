<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
<script type="text/javascript">
    function confirmLogout() {
        var confirmed = confirm("로그아웃 하시겠습니까?");
        if (confirmed) {
            location.href = "/ElectroCompare/logout";
        }
    }
</script>
<%
	String userID = null;
	if (session.getAttribute("userID") != null){
		userID = (String)session.getAttribute("userID");
	}
%>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container px-5">
            <a class="navbar-brand" href="/ElectroCompare/home">알뜰살뜰 전자상가</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                    <li class="nav-item"><a class="nav-link active" aria-current="page" href="/ElectroCompare/home">메인</a></li>
                    <li class="nav-item"><a class="nav-link" href="/ElectroCompare/board">게시판</a></li>
                   <%if (userID ==null){%>
                		 <li class="nav-item"><a class="nav-link" href="/ElectroCompare/signUp">회원가입</a></li>
                		 <li class="nav-item"><a class="nav-link" href="/ElectroCompare/login">로그인</a></li>
                		 <li class="nav-item"><a class="nav-link" href="/ElectroCompare/searchPassword">비밀번호 찾기</a></li>
                   <%}
                   else{%>                     	
	                   
                    	<li class="nav-item"><a class="nav-link" href="/ElectroCompare/changePassword">비밀번호 변경</a></li>
                    	<li class="nav-item"><a class="nav-link" onclick="confirmLogout()">로그아웃</a></li>
                    	<li class="nav-item"><a class="nav-link" href="/ElectroCompare/quitMembership">회원탈퇴</a></li>
                   <%}%>
                	   
                   

                </ul>
            </div>
        </div>
    </nav>
</body>
</html>