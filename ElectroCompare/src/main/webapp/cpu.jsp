<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="cpu.CpuDAO" %>
<%@page import="cpu.CpuDTO" %>
<%@page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
    <title>알뜰살뜰 전자상가 : CPU</title>
	<%@include file="_meta.jsp" %>
    <%@include file="_favicon.jsp" %>
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="css/styles.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="css/membership.css">
</head>
<body>
    <!-- Responsive navbar-->
<%@include file="_header.jsp" %>
    <!-- Page Content-->
    <div class="container px-4 px-lg-5">
        <!-- Heading Row-->
        <div class="row gx-3 gx-lg-5 align-items-center my-5">
            <!-- Menu-->
			<%@include file="_supportCategory.jsp" %>
            <section class="bg-light py-5 border-bottom">
            	<div id="form_section">
	            	<form action="cpu_process.jsp" method="get">
	                	<select class="sel_cent" name="selectcpu1" size="4" style="width:147px;">
		          			<%
		          			CpuDAO dao = new CpuDAO();
		          	        List<String> names = dao.getAllName();
		          	        for (String name : names) {
		          	        %>
		          	        <option value="<%= name %>"><%= name %></option>
		          	        <%
		          	        }
		          			%>
	                  	</select>
	            		<select class="sel_cent"name="selectcpu2" size="4" style="width:147px;">
	            			<%
	            			CpuDAO dao1 = new CpuDAO();
	            	        List<String> names1 = dao.getAllName();
	            	        for (String name : names1) {
	            	        %>
	            	        <option value="<%= name %>"><%= name %></option>
	            	        <%
	            	        }
	            			%>
	                   	</select>
	                   	<br><br><input type="submit" value="검색">
	                </form>
                </div>
                <div class="container px-5 my-5">
                    <div class="text-center mb-5">

                    </div>
                    <div class="row gx-5 justify-content-center">
                        <div class="col-lg-6 col-xl-4">
                            <div class="card mb-5 mb-xl-0">
                                <div class="card-body p-5">
									<%  CpuDAO daoli = new CpuDAO();                	
            								CpuDTO dto = daoli.getAllvalue(request.getParameter("cpu1")); 
            								if (dto.getCpuName()==null)
            									dto = daoli.getAllvalue("Core i3-10300");
                                        %>
                                    <div class="small text-uppercase fw-bold text-muted"></div>
                                    <div class="mb-3">
                                        <span class="display-6 fw-bold" id="myLi"><%=dto.getCpuName() %><br></span>
                                    </div>
                                    <ul class="list-unstyled mb-3">
                               		
                                        	<li class="mb-2">
                                            <i class="bi bi-check text-primary"></i>
                                            Manufacturer : <%=dto.getCpuManufacturer() %>
                                        	</li>
                                        	<li class="mb-2">
                                            <i class="bi bi-check text-primary"></i>
                                            Core : <%= dto.getCpuCores() %>
                                        	</li>
                                        	<li class="mb-2">
                                            <i class="bi bi-check text-primary"></i>
                                            Thread : <%= dto.getCpuThreads() %>
                                        	</li>
                                        	<li class="mb-2">
                                            <i class="bi bi-check text-primary"></i>
                                            Manufacturing : <%= dto.getCpuManufacturing() %>
                                        	</li>
                                        	<li class="mb-2">
                                            <i class="bi bi-check text-primary"></i>
                                            Thread : <%= dto.getCpuThreads() %>
                                        	</li>
                                        	<li class="mb-2">
                                            <i class="bi bi-check text-primary"></i>
                                            Base_Clock : <%= dto.getCpuBase_Clock() %>
                                        	</li>
                                        	<li class="mb-2">
                                            <i class="bi bi-check text-primary"></i>
                                            TDP : <%= dto.getCpuTDP() %>
                                        	</li>
                                        	<li class="mb-2">
                                        	<i class="bi bi-check text-primary"></i>
                                            Price : <%= dto.getCpuPrice() %>$
                                        	</li>
                                        	<li class="mb-2">
                                        	<i class="bi bi-check text-primary"></i>
                                            Release_date : <%=dto.getCpuRelease_date()%>
                                        	</li>
                                    </ul>
                                    <div class="d-grid"><a class="btn btn-outline-primary" onclick="noneService()">Buy</a></div>
                                </div>
                            </div>
                        </div>
                        <!-- Pricing card pro-->
                        <div class="col-lg-6 col-xl-4">
                            <div class="card mb-5 mb-xl-0">
                                <div class="card-body p-5">
                                    <div class="small text-uppercase fw-bold">
                                        <i class="bi bi-star-fill text-warning"></i>                                
                                    </div>
										<%  CpuDAO daoli2 = new CpuDAO();                	
            								CpuDTO dto2 = daoli2.getAllvalue(request.getParameter("cpu2"));
            								if (dto2.getCpuName()==null)
            									dto2 = daoli2.getAllvalue("Core i5-10600K");
                                        %>
                                    <div class="mb-3">
                                        <span class="display-6 fw-bold" id="myLi2"><%=dto2.getCpuName()%><br></span>
                                    </div>
                                    <ul class="list-unstyled mb-3">

                                        	<li class="mb-2">
                                            <i class="bi bi-check text-primary"></i>
                                            Manufacturer : <%=dto2.getCpuManufacturer() %>
                                        	</li>
                                        	<li class="mb-2">
                                            <i class="bi bi-check text-primary"></i>
                                            Core : <%= dto2.getCpuCores() %>
                                        	</li>
                                        	<li class="mb-2">
                                            <i class="bi bi-check text-primary"></i>
                                            Thread : <%= dto2.getCpuThreads() %>
                                        	</li>
                                        	<li class="mb-2">
                                            <i class="bi bi-check text-primary"></i>
                                            Manufacturing : <%= dto2.getCpuManufacturing() %>
                                        	</li>
                                        	<li class="mb-2">
                                            <i class="bi bi-check text-primary"></i>
                                            Thread : <%= dto2.getCpuThreads() %>
                                        	</li>
                                        	<li class="mb-2">
                                            <i class="bi bi-check text-primary"></i>
                                            Base_Clock : <%=dto2.getCpuBase_Clock() %>
                                        	</li>
                                        	<li class="mb-2">
                                            <i class="bi bi-check text-primary"></i>
                                            TDP : <%= dto2.getCpuTDP() %>
                                        	</li>
                                        	<li class="mb-2">
                                        	<i class="bi bi-check text-primary"></i>
                                            Price : <%= dto2.getCpuPrice() %>$
                                        	</li>
                                        	<li class="mb-2">
                                        	<i class="bi bi-check text-primary"></i>
                                            Release_date : <%=dto2.getCpuRelease_date()%>
                                        	</li>
                                    </ul>
                                    <div class="d-grid"><a class="btn btn-outline-primary" onclick="noneService()">Buy</a></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>    
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