<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Làm bài tập ngữ pháp</title>
<link rel="stylesheet" href="cnweb/fonts/css/all.min.css">
<link rel="stylesheet" href="cnweb/css/main.css">
<link rel="stylesheet" href="cnweb/css/grid.css">
<link rel="stylesheet" href="cnweb/css/respon.css">
<link rel="stylesheet" href="cnweb/css/lambaitap.css">
	<style>
        .Option{
            margin: 0 0 0 20px;
        }
        .an{
            font-size: 1.8rem;
            text-align: center;
            margin-left: 5px;
        }
    </style>
    <script type="text/javascript">
			function Xuatketqua()
			{
				var xhttp;
				var kq = document.myform.quiz.value;
				var url = "CTbainguphapForward?kq="+kq+"&num="+<%=request.getAttribute("numberpage")%>+"&mabaihdnguphap="+<%=request.getAttribute("gid")%>;
				if(kq ==""){
					alert("Vui lòng chọn đáp án");
					return;
				}
				else{		
					if (window.XMLHttpRequest)
					{        
					    xhttp = new XMLHttpRequest(); 
					}
					
					xhttp.onreadystatechange= function()
					{
						if (xhttp.readyState == 4)
						{
							var data = xhttp.responseText;
							document.getElementById("ketquabt").innerHTML=data;
						}
					}
					xhttp.open("POST",url,true);
					xhttp.send();
				}
			}
		</script>
</head>
<body>
	<jsp:include page="Header.jsp" />
	
	<div class="container">
		<div class="grid wide">
			<div class="row">
				<h3 class="page-header">Bài tập ngữ pháp</h3>
			</div>
			
			<div class="row" style="margin: 50px 0;">
				<form name="myform" id="ketquabt">
					<c:forEach items="${listQ}" var="Q">
						<div class="col l-12 m-12 c-12">
							<p class="item_name"><b>Câu ${Q.qSTT }: ${Q.q }</b></p>
							<div class="Option">
								<input type="radio" name="quiz" value="1"> <span class="an">A. ${Q.op1 } </span>
								<br> 
								<br> 
								<input type="radio" name="quiz" value="2"> <span class="an">D. ${Q.op2 } </span>
								<br> 
								<br>
								<input type="radio" name="quiz" value="3"> <span class="an">D. ${Q.op3 } </span>
								<br> 
								<br> 
								<input type="radio" name="quiz" value="4"> <span class="an">D. ${Q.op4 } </span>
								<br>
							</div>
		                </div>
		             </c:forEach>
	             </form>
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
						<input type="button" value="Đáp án" class="btn__DA" onclick="Xuatketqua()" />
						<li><a
							href="CTbainguphapForward?pageId=${numberpage}&mabaihdnguphap=${gid}"
							class="page__number">Làm lại</a></li>
						<li class="disable"><a class="page__number" href="">Next</a></li>
						<%
							} else {
						%>
						<c:if test="${numberpage == 1}">
							<li class="disable"><a href="" class="page__number">Prev</a></li>
							<input type="button" value="Đáp án" class="btn__DA"
								onclick="Xuatketqua()" />
							<li><a
								href="CTbainguphapForward?pageId=${numberpage}&mabaihdnguphap=${gid}"
								class="page__number">Làm lại</a></li>
							<li><a class="page__number"
								href="CTbainguphapForward?pageId=${numberpage+1}&mabaihdnguphap=${gid}">Next</a></li>
						</c:if>
						<c:if test="${numberpage == maxpageid}">
							<li><a class="page__number"
								href="CTbainguphapForward?pageId=${numberpage-1}&mabaihdnguphap=${gid}">Prev</a></li>
							<input type="button" value="Đáp án" class="btn__DA"
								onclick="Xuatketqua()" />
							<li><a
								href="CTbainguphapForward?pageId=${numberpage}&mabaihdnguphap=${gid}"
								class="page__number">Làm lại</a></li>
							<li class="disable"><a class="page__number" href="">Next</a></li>
						</c:if>
						<c:if test="${numberpage > 1 && numberpage < maxpageid}">
							<li><a class="page__number"
								href="CTbainguphapForward?pageId=${numberpage-1}&mabaihdnguphap=${gid}">Prev</a></li>
							<input type="button" value="Đáp án" class="btn__DA"
								onclick="Xuatketqua()" />
							<li><a
								href="CTbainguphapForward?pageId=${numberpage}&mabaihdnguphap=${gid}"
								class="page__number">Làm lại</a></li>
							<li><a class="page__number"
								href="CTbainguphapForward?pageId=${numberpage+1}&mabaihdnguphap=${gid}">Next</a></li>
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

						<li><a href="ListHdBaiNguPhapForward?pageId=1"
							class="page__number">Back</a></li>

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