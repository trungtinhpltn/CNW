<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ngữ pháp</title>
<link rel="stylesheet" href="cnweb/fonts/css/all.min.css">
<link rel="stylesheet" href="cnweb/css/main.css">
<link rel="stylesheet" href="cnweb/css/grid.css">
<link rel="stylesheet" href="cnweb/css/respon.css">
<link rel="stylesheet" href="cnweb/css/lambaitap.css">
	<script type="text/javascript">
		function check(){
			if( <%=session.getAttribute("suser")%> == null){
				alert("Vui lòng đăng nhập để thực hiện chức năng");
				return false;
			}
			else{
				return true;
			}
		}
	</script>
</head>

<body>
	<jsp:include page="Header.jsp" />
	
	<div class="container">
		<div class="grid wide">
			<div class="row">
				<h3 class="page-header">Danh sách bài tập hướng dẫn ngữ pháp</h3>
			</div>
			
			<div class="row" style="margin-top: 50px;margin-bottom: 50px">
				<c:forEach items="${listG}" var="g">
					<div class="col l-4 m-4 c-12 center">
						<p class="item_name">${g.gName}</p>
						<a href="CTbainguphapForward?pageId=1&mabaihdnguphap=${g.gId}" class="btn" type="button" onclick="return check()">
						Xem bài hướng dẫn
						</a>
					</div>
				</c:forEach>
			</div>
			
			<div class="row">
				<div class="phantrang">
					<ul class="pagination">
						<%
							Object mp = request.getAttribute("maxpageid");
						int maxp = (Integer) mp;
						if (maxp == 1 || maxp == 0) {
						%>
						
						<li class="disable"><a href="" class="page__number">Prev</a></li>
						<li class="disable"><a class="page__number" href="">Next</a></li>
						<%
							} else {
						%>
						<c:if test="${numberpage == 1}">
							<li class="disable"><a href="" class="page__number">Prev</a></li>
							<li><a class="page__number"
								href="ListHdBaiNguPhapForward?pageId=${numberpage+1}">Next</a></li>
						</c:if>
						<c:if test="${numberpage == maxpageid}">
							<li><a class="page__number"
								href="ListHdBaiNguPhapForward?pageId=${numberpage-1}">Prev</a></li>
							<li class="disable"><a class="page__number" href="">Next</a></li>
						</c:if>
						<c:if test="${numberpage > 1 && numberpage < maxpageid}">
							<li><a class="page__number"
								href="ListHdBaiNguPhapForward?pageId=${numberpage-1}">Prev</a></li>
							<li><a class="page__number"
								href="ListHdBaiNguPhapForward?pageId=${numberpage+1}">Next</a></li>
						</c:if>
						<%
							}
						%>
					</ul>
				</div>
			</div>
            <div class="row" style="margin-top: 30px">
				<div class="phantrang">
					<ul class="pagination">

						<li><a href="HomeForward" class="page__number">Back</a></li>

					</ul>
				</div>
			</div>
		</div>
	</div>
	
	<div id="footdiv">
		<jsp:include page="Footer.jsp" />
	</div>
</body>
</html>