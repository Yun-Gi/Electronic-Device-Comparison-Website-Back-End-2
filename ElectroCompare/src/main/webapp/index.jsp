 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>알뜰살뜰 전자상가</title>
	<%@include file="_meta.jsp" %>
    <%@include file="_favicon.jsp" %>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
    <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Roboto:400,500,700&amp;display=swap'>
	<link href="css/styles.css" rel="stylesheet" />
</head>
<body>
    <!-- Responsive headerbar-->
    <%@include file="_header.jsp" %>
    
    <!-- Page Content-->
    <div class="container px-4 px-lg-5">
        <!-- Heading Row-->
        <div class="row gx-4 gx-lg-5 align-items-center my-5">
            <div class="col-lg-7"><img class="img-fluid rounded mb-4 mb-lg-0" src="assets\laptop-1483974_1280.jpg" alt="..." /></div>
            <div class="col-lg-5">
                <h1 class="font-weight-light">전자기기 성능비교 사이트</h1>
                <p>CPU, GPU, 스마트폰의 성능을 비교 해 주는 사이트 입니다.</p>
                <p>같은 종류인 전자기기를 2개 선택하여 성능을 확인할 수 있습니다.</p>
                <form action="search_results.html" method="get">
                    <form class="d-flex" action="search_results.html" method="get">
                        <input class="form-control me-2" type="search" placeholder="검색어를 입력하세요" aria-label="Search" name="query">
                        <p></p>
                    </form>
                    <!-- <div class="col-lg-5"></div> -->
                    <a onclick="noneService()" class="button reverse dark">Search</a> <!-- 추후 공개 서비스 링크 처리루틴 설정 -->
                    <!-- dribbble -->
                    <a class="dribbble" href="https://dribbble.com/shots/7441241-Button-Hover-Effects" target="_blank"><img src="https://cdn.dribbble.com/assets/dribbble-ball-mark-2bd45f09c2fb58dbbfb44766d5d1d07c5a12972d602ef8b32204d28fa3dda554.svg" alt=""></a>
                    <!-- partial -->
                    <script  src="assets\button-hover-effects\dist\script.js"></script>
                </form>
            </div>
        </div>
        <!-- Call to Action-->

        <!-- Content Row-->
        <div class="row gx-4 gx-lg-5">
            <div class="col-md-4 mb-5">
                <div class="card h-100">
                    <div class="card-body">
                        <h2 class="card-title">CPU</h2>
                        <p class="card-text">Compare CPU's performance</p>
                    </div>
                    <div class="card-footer"><a class="btn btn-primary btn-sm" href="./CPU">More Info</a></div>
                </div>
            </div>
            <div class="col-md-4 mb-5">
                <div class="card h-100">
                    <div class="card-body">
                        <h2 class="card-title">GPU</h2>
                        <p class="card-text">Compare GPU's performance</p>
                    </div>
                    <div class="card-footer"><a class="btn btn-primary btn-sm" href="./GPU">More Info</a></div>
                </div>
            </div>
            <div class="col-md-4 mb-5">
                <div class="card h-100">
                    <div class="card-body">
                        <h2 class="card-title">SmartPhone</h2>
                        <p class="card-text">Compare SmartPhone's performance</p>
                    </div>
                    <div class="card-footer"><a class="btn btn-primary btn-sm" href="./SmartPhone">More Info</a></div>
                </div>
            </div>
        </div>
    </div>
    <!-- Footer-->
	<%@include file="_footer.jsp" %>
    <!-- Bootstrap core JS-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Core theme JS-->
    <script src="js/scripts.js"></script>
</body>
</html>