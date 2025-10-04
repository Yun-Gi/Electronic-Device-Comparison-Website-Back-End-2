<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="smap.SmapDAO" %>
<%@page import="smap.SmapDTO" %>
<%@page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <title>알뜰살뜰 전자상가 : SMARTPHONE</title>
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
	            	<form action="smap_process.jsp" method="get">
	                	<select class="sel_cent" name="selectsmap1" size="1" style="width:147px;">
		          			<%
		          			SmapDAO dao = new SmapDAO();
		          	        List<String> names = dao.getAllName();
		          	        for (String name : names) {
		          	        %>
		          	        <option value="<%= name %>"><%= name %></option>
		          	        <%
		          	        }
		          			%>
	                  	</select>
	            		<select class="sel_cent"name="selectsmap2" size="1" style="width:147px;">
	            			<%
	            			SmapDAO dao1 = new SmapDAO();
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
									<%  SmapDAO daoli = new SmapDAO();                	
            								SmapDTO dto = daoli.getAllvalue(request.getParameter("smap1")); 
            								if (dto.getSmapName()==null)
            									dto = daoli.getAllvalue("Galaxy S23");
                                        %>
                                    <div class="small text-uppercase fw-bold text-muted"></div>
                                    <div class="mb-3">
                                        <span class="display-6 fw-bold" id="myLi"><%=dto.getSmapName() %><br></span>
                                    </div>
                                    <ul class="list-unstyled mb-3">
                               		
                                        	<li class="mb-2">
                                            <i class="bi bi-check text-primary"></i>
                                            Manufacturer : <%=dto.getSmapManufacturer() %>
                                        	</li>
                                        	<li class="mb-2">
                                            <i class="bi bi-check text-primary"></i>
                                            Name : <%= dto.getSmapName() %>
                                        	</li>
                                        	<li class="mb-2">
                                            <i class="bi bi-check text-primary"></i>
                                            Color : <%= dto.getSmapColor() %>
                                        	</li>
                                        	<li class="mb-2">
                                            <i class="bi bi-check text-primary"></i>
                                            Size : <%= dto.getSmapSize() %>
                                        	</li>
                                        	<li class="mb-2">
                                            <i class="bi bi-check text-primary"></i>
                                            Ram : <%= dto.getSmapRam() %>GB
                                        	</li>
                                        	<li class="mb-2">
                                            <i class="bi bi-check text-primary"></i>
                                            Memory : <%= dto.getSmapMemory() %>
                                        	</li>
                                        	<li class="mb-2">
                                            <i class="bi bi-check text-primary"></i>
                                            Bettery : <%= dto.getSmapBettery() %>mAh
                                        	</li>
                                        	<li class="mb-2">
                                            <i class="bi bi-check text-primary"></i>
                                            Weight : <%= dto.getSmapWeight() %>g
                                        	</li>
                                        	<li class="mb-2">
                                            <i class="bi bi-check text-primary"></i>
                                            Front Camera : <%= dto.getSmapFrontCamera() %>
                                        	</li>
                                        	<li class="mb-2">
                                            <i class="bi bi-check text-primary"></i>
                                            Back Camera : <%= dto.getSmapBackCamera() %>
                                        	</li>
                                        	<li class="mb-2">
                                        	<i class="bi bi-check text-primary"></i>
                                            Price : <%= dto.getSmapPrice() %>$
                                        	</li>
                                        	<li class="mb-2">
                                        	<i class="bi bi-check text-primary"></i>
                                            Release_date : <%=dto.getSmapRelease_Date()%>
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
										<%  SmapDAO daoli2 = new SmapDAO();                	
										    SmapDTO dto2 = daoli2.getAllvalue(request.getParameter("smap2")); 
										    if (dto2.getSmapName()==null)
										        dto2 = daoli2.getAllvalue("Galaxy S23+");
										%>						
                                    <div class="mb-3">
                                        <span class="display-6 fw-bold" id="myLi2"><%=dto2.getSmapName()%><br></span>
                                    </div>
                                    <ul class="list-unstyled mb-3">

                                        	<li class="mb-2">
                                            <i class="bi bi-check text-primary"></i>
                                            Manufacturer : <%=dto2.getSmapManufacturer() %>
                                        	</li>
                                        	<li class="mb-2">
                                            <i class="bi bi-check text-primary"></i>
                                            Name : <%= dto2.getSmapName() %>
                                        	</li>
                                        	<li class="mb-2">
                                            <i class="bi bi-check text-primary"></i>
                                            Color : <%= dto2.getSmapColor() %>
                                        	</li>
                                        	<li class="mb-2">
                                            <i class="bi bi-check text-primary"></i>
                                            Size : <%= dto2.getSmapSize() %>
                                        	</li>
                                        	<li class="mb-2">
                                            <i class="bi bi-check text-primary"></i>
                                            Ram : <%= dto2.getSmapRam() %>GB
                                        	</li>
                                        	<li class="mb-2">
                                            <i class="bi bi-check text-primary"></i>
                                            Memory : <%= dto2.getSmapMemory() %>
                                        	</li>
                                        	<li class="mb-2">
                                            <i class="bi bi-check text-primary"></i>
                                            Bettery : <%= dto2.getSmapBettery() %>mAh
                                        	</li>
                                        	<li class="mb-2">
                                            <i class="bi bi-check text-primary"></i>
                                            Weight : <%= dto2.getSmapWeight() %>g
                                        	</li>
                                        	<li class="mb-2">
                                            <i class="bi bi-check text-primary"></i>
                                            Front Camera : <%= dto2.getSmapFrontCamera() %>
                                        	</li>
                                        	<li class="mb-2">
                                            <i class="bi bi-check text-primary"></i>
                                            Back Camera : <%= dto2.getSmapBackCamera() %>
                                        	</li>
                                        	<li class="mb-2">
                                        	<i class="bi bi-check text-primary"></i>
                                            Price : <%= dto2.getSmapPrice() %>$
                                        	</li>
                                        	<li class="mb-2">
                                        	<i class="bi bi-check text-primary"></i>
                                            Release_date : <%=dto2.getSmapRelease_Date()%>
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