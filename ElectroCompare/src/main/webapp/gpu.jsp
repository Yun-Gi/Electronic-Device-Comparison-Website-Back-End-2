<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="gpu.GpuDAO" %>
<%@page import="gpu.GpuDTO" %>
<%@page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
    <title>알뜰살뜰 전자상가 : GPU</title>
	<%@include file="_meta.jsp" %>
    <%@include file="_favicon.jsp" %>
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="css/styles.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="css/membership.css">
</head>
<body>
    <script src="js/scripts.js"></script>
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
	            	<form action="gpu_process.jsp" method="get">
	                	<select class="sel_cent" name="selectgpu1" size="4" style="width:147px;">
		          			<%
		          			GpuDAO dao = new GpuDAO();
		          	        List<String> names = dao.getAllName();
		          	        for (String name : names) {
		          	        %>
		          	        <option value="<%= name %>"><%= name %></option>
		          	        <%
		          	        }
		          			%>
	                  	</select>
	            		<select class="sel_cent"name="selectgpu2" size="4" style="width:147px;">
	            			<%
	            			GpuDAO dao1 = new GpuDAO();
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
									<%  GpuDAO daoli = new GpuDAO();                	
            								GpuDTO dto = daoli.getAllvalue(request.getParameter("gpu1")); 
            								if (dto.getName()==null)
            									dto = daoli.getAllvalue("GeForce RTX 4090");
                                        %>
                                    <div class="small text-uppercase fw-bold text-muted"></div>
                                    <div class="mb-3">
                                        <span class="display-6 fw-bold" id="myLi"><%=dto.getName() %><br></span>
                                    </div>
                                    <ul class="list-unstyled mb-3">
                               		
                                        	<li class="mb-2">
                                            <i class="bi bi-check text-primary"></i>
                                            Manufacturer : <%=dto.getManufacturer() %>
                                        	</li>
                                        	<li class="mb-2">
                                            <i class="bi bi-check text-primary"></i>
                                            Core : <%= dto.getCore() %>
                                        	</li>
                                        	<li class="mb-2">
                                            <i class="bi bi-check text-primary"></i>
                                            Clock : <%= dto.getClock() %>
                                        	</li>
                                        	<li class="mb-2">
                                            <i class="bi bi-check text-primary"></i>
                                            Boost Clock : <%= dto.getBclock() %>
                                        	</li>
                                        	<li class="mb-2">
                                            <i class="bi bi-check text-primary"></i>
                                            Memory : <%= dto.getMemory() %>
                                            </li>
                                        	<li class="mb-2">
                                            <i class="bi bi-check text-primary"></i>
                                            Memory Interface Width : <%= dto.getIface() %>
                                        	</li>
                                        	<li class="mb-2">
                                            <i class="bi bi-check text-primary"></i>
                                            TDP : <%= dto.getTdp() %>
                                        	</li>
                                        	<li class="mb-2">
                                        	<i class="bi bi-check text-primary"></i>
                                            Price : <%= dto.getPrice() %>$
                                        	</li>
                                        	<li class="mb-2">
                                        	<i class="bi bi-check text-primary"></i>
                                            Release_date : <%=dto.getRelease()%>
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
										<%  GpuDAO daoli2 = new GpuDAO();                	
            								GpuDTO dto2 = daoli2.getAllvalue(request.getParameter("gpu2"));
            								if (dto2.getName()==null)
            									dto2 = daoli2.getAllvalue("GeForce RTX 4080");
                                        %>
                                    <div class="mb-3">
                                        <span class="display-6 fw-bold" id="myLi2"><%=dto2.getName()%><br></span>
                                    </div>
                                    <ul class="list-unstyled mb-3">

                                        	<li class="mb-2">
                                            <i class="bi bi-check text-primary"></i>
                                            Manufacturer : <%=dto2.getManufacturer() %>
                                        	</li>
                                        	<li class="mb-2">
                                            <i class="bi bi-check text-primary"></i>
                                            Core : <%= dto2.getCore() %>
                                        	</li>
                                        	<li class="mb-2">
                                            <i class="bi bi-check text-primary"></i>
                                            Clock : <%= dto2.getClock() %>
                                        	</li>
                                        	<li class="mb-2">
                                            <i class="bi bi-check text-primary"></i>
                                            Boost Clock : <%= dto2.getBclock() %>
                                        	</li>
                                        	<li class="mb-2">
                                            <i class="bi bi-check text-primary"></i>
                                            Memory : <%= dto2.getMemory() %>
                                            </li>
                                        	<li class="mb-2">
                                            <i class="bi bi-check text-primary"></i>
                                            Memory Interface Width : <%= dto2.getIface() %>
                                        	</li>
                                        	<li class="mb-2">
                                            <i class="bi bi-check text-primary"></i>
                                            TDP : <%= dto2.getTdp() %>
                                        	</li>
                                        	<li class="mb-2">
                                        	<i class="bi bi-check text-primary"></i>
                                            Price : <%= dto2.getPrice() %>$
                                        	</li>
                                        	<li class="mb-2">
                                        	<i class="bi bi-check text-primary"></i>
                                            Release_date : <%=dto2.getRelease()%>
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
</body>
</html>