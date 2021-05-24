<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Kết quả</title>
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
</head>
<body>
	<jsp:include page="Header.jsp" />
	
	<div class="container">
		<div class="grid wide">
			<div class="row">
				<h3 class="page-header">Bài thi thử</h3>
			</div>
			<c:forEach items="${listQ}" var="Q">
				<div class="row" style="margin-top: 30px;">
					<div class="col l-12 m-12 c-12">
						<p class="item_name">Câu ${Q.qSTT }: ${Q.q }</p>
						<div class="Option">
							<c:if test="${Q.da == 1 }">
								<c:if test="${Q.as == 1 }">
									<img alt="" src="cnweb/img/Okicon.png">
									<input type="radio" checked="checked"><span class="an">A. ${Q.op1 }</span>
									<br>
									<br>
									<input type="radio" disabled="disabled"><span class="an">B. ${Q.op2 }</span>
									<br>
									<br>
									<input type="radio" disabled="disabled"><span class="an">C. ${Q.op3 }</span>
									<br>
									<br>
									<input type="radio" disabled="disabled"><span class="an">D. ${Q.op4 }</span> 
									<br>
								</c:if>
			
								<c:if test="${Q.as == 2 }">
									<img alt="" src="cnweb/img/Okicon.png">
									<input type="radio" disabled="disabled"><span class="an">A. ${Q.op1 }</span>
									<br>
									<br>
									<img alt="" src="cnweb/img/sai.png">
									<input type="radio" checked="checked"><span class="an">B. ${Q.op2 }</span>
									<br>
									<br>
									<input type="radio" disabled="disabled"><span class="an">C. ${Q.op3 }</span>
									<br>
									<br>
									<input type="radio" disabled="disabled"><span class="an">D. ${Q.op4 }</span> 
									<br>
								</c:if>
			
								<c:if test="${Q.as == 3 }">
									<img alt="" src="cnweb/img/Okicon.png">
									<input type="radio" disabled="disabled"><span class="an">A. ${Q.op1 }</span>
									<br>
									<br>
									<input type="radio" disabled="disabled"><span class="an">B. ${Q.op2 }</span>
									<br>
									<br>
									<img alt="" src="cnweb/img/sai.png">
									<input type="radio" checked="checked"><span class="an">C. ${Q.op3 }</span> 
									<br>
									<br>
									<input type="radio" disabled="disabled"><span class="an">D. ${Q.op4 }</span> 
									<br>
								</c:if>
			
								<c:if test="${Q.as == 4 }">
									<img alt="" src="cnweb/img/Okicon.png">
									<input type="radio" disabled="disabled"><span class="an">A. ${Q.op1 }</span> 
											<br>
									<br>
									<input type="radio" disabled="disabled"><span class="an">B. ${Q.op2 }</span>
											<br>
									<br>
									<input type="radio" disabled="disabled"><span class="an">C. ${Q.op3 }</span>
											<br>
									<br>
									<img alt="" src="cnweb/img/sai.png">
									<input type="radio" checked="checked"><span class="an">D. ${Q.op4 }</span>
											<br>
								</c:if>
			
							</c:if>
			
							<c:if test="${Q.da == 2 }">
								<c:if test="${Q.as == 1 }">
									<img alt="" src="cnweb/img/sai.png">
									<input type="radio" checked="checked"><span class="an">A. ${Q.op1 }</span> 
											<br>
									<br>
									<img alt="" src="cnweb/img/Okicon.png">
									<input type="radio" disabled="disabled"><span class="an">B. ${Q.op2 }</span>
											<br>
									<br>
									<input type="radio" disabled="disabled"><span class="an">C. ${Q.op3 }</span> 
											<br>
									<br>
									<input type="radio" disabled="disabled"><span class="an">D. ${Q.op4 }</span>
											<br>
			
								</c:if>
			
								<c:if test="${Q.as == 2 }">
									<input type="radio" disabled="disabled"><span class="an">A. ${Q.op1 }</span> 
											<br>
									<br>
									<img alt="" src="cnweb/img/Okicon.png">
									<input type="radio" checked="checked"><span class="an">B. ${Q.op2 }</span>
											<br>
									<br>
									<input type="radio" disabled="disabled"><span class="an">C. ${Q.op3 }</span> 
											<br>
									<br>
									<input type="radio" disabled="disabled"><span class="an">D. ${Q.op4 }</span>
											<br>
								</c:if>
			
								<c:if test="${Q.as == 3 }">
									<input type="radio" disabled="disabled"><span class="an">A. ${Q.op1 }</span> 
											<br>
									<br>
									<img alt="" src="cnweb/img/Okicon.png">
									<input type="radio" disabled="disabled"><span class="an">B. ${Q.op2 }</span>
											<br>
									<br>
									<img alt="" src="cnweb/img/sai.png">
									<input type="radio" checked="checked"><span class="an">C. ${Q.op3 }</span> 
											<br>
									<br>
									<input type="radio" disabled="disabled"><span class="an">D. ${Q.op4 }</span>
											<br>
								</c:if>
			
								<c:if test="${Q.as == 4 }">
									<input type="radio" disabled="disabled"><span class="an">A. ${Q.op1 }</span> 
											<br>
									<br>
									<img alt="" src="cnweb/img/Okicon.png">
									<input type="radio" disabled="disabled"><span class="an">B. ${Q.op2 }</span>
											<br>
									<br>
									<input type="radio" disabled="disabled"><span class="an">C. ${Q.op3 }</span> 
											<br>
									<br>
									<img alt="" src="cnweb/img/sai.png">
									<input type="radio" checked="checked"><span class="an">D. ${Q.op4 }</span>
											<br>
								</c:if>
							</c:if>
			
							<c:if test="${Q.da == 3 }">
								<c:if test="${Q.as == 1 }">
									<img alt="" src="cnweb/img/sai.png">
									<input type="radio" checked="checked"><span class="an">A. ${Q.op1 }</span>
											<br>
									<br>
									<input type="radio" disabled="disabled"><span class="an">B. ${Q.op2 }</span>
											<br>
									<br>
									<img alt="" src="cnweb/img/Okicon.png">
									<input type="radio" disabled="disabled"><span class="an">C. ${Q.op3 }</span>
											<br>
									<br>
									<input type="radio" disabled="disabled"><span class="an">D. ${Q.op4 }</span>
											<br>
			
								</c:if>
			
								<c:if test="${Q.as == 2 }">
									<input type="radio" disabled="disabled"><span class="an">A. ${Q.op1 }</span>
											<br>
									<br>
									<img alt="" src="cnweb/img/sai.png">
									<input type="radio" checked="checked"><span class="an">B. ${Q.op2 }</span>
											<br>
									<br>
									<img alt="" src="cnweb/img/Okicon.png">
									<input type="radio" disabled="disabled"><span class="an">C. ${Q.op3 }</span>
											<br>
									<br>
									<input type="radio" disabled="disabled"><span class="an">D. ${Q.op4 }</span>
											<br>
								</c:if>
			
								<c:if test="${Q.as == 3 }">
									<input type="radio" disabled="disabled"><span class="an">A. ${Q.op1 }</span>
											<br>
									<br>
									<input type="radio" disabled="disabled"><span class="an">B. ${Q.op2 }</span>
											<br>
									<br>
									<img alt="" src="cnweb/img/Okicon.png">
									<input type="radio" checked="checked"><span class="an">C. ${Q.op3 }</span>
											<br>
									<br>
									<input type="radio" disabled="disabled"><span class="an">D. ${Q.op4 }</span>
											<br>
								</c:if>
			
								<c:if test="${Q.as == 4 }">
									<input type="radio" disabled="disabled"><span class="an">A. ${Q.op1 }</span>
											<br>
									<br>
									<input type="radio" disabled="disabled"><span class="an">B. ${Q.op2 }</span>
											<br>
									<br>
									<img alt="" src="cnweb/img/Okicon.png">
									<input type="radio" disabled="disabled"><span class="an">C. ${Q.op3 }</span>
											<br>
									<br>
									<img alt="" src="cnweb/img/sai.png">
									<input type="radio" checked="checked"><span class="an">D. ${Q.op4 }</span>
											<br>
								</c:if>
							</c:if>
			
							<c:if test="${Q.da == 4 }">
								<c:if test="${Q.as == 1 }">
									<img alt="" src="cnweb/img/sai.png">
									<input type="radio" checked="checked"><span class="an">A. ${Q.op1 }</span>
											<br>
									<br>
									<input type="radio" disabled="disabled"><span class="an">B. ${Q.op2 }</span>
											<br>
									<br>
									<input type="radio" disabled="disabled"><span class="an">C. ${Q.op3 }</span> 
											<br>
									<br>
									<img alt="" src="cnweb/img/Okicon.png">
									<input type="radio" disabled="disabled"><span class="an">D. ${Q.op4 }</span>
											<br>
			
								</c:if>
			
								<c:if test="${Q.as == 2 }">
									<input type="radio" disabled="disabled"><span class="an">A. ${Q.op1 }</span>
											<br>
									<br>
									<img alt="" src="cnweb/img/sai.png">
									<input type="radio" checked="checked"><span class="an">B. ${Q.op2 }</span>
											<br>
									<br>
									<input type="radio" disabled="disabled"><span class="an">C. ${Q.op3 }</span> 
											<br>
									<br>
									<img alt="" src="cnweb/img/Okicon.png">
									<input type="radio" disabled="disabled"><span class="an">D. ${Q.op4 }</span>
											<br>
								</c:if>
			
								<c:if test="${Q.as == 3 }">
									<input type="radio" disabled="disabled"><span class="an">A. ${Q.op1 }</span>
											<br>
									<br>
									<input type="radio" disabled="disabled"><span class="an">B. ${Q.op2 }</span>
											<br>
									<br>
									<img alt="" src="cnweb/img/sai.png">
									<input type="radio" checked="checked"><span class="an">C. ${Q.op3 }</span>
											<br>
									<br>
									<img alt="" src="cnweb/img/Okicon.png">
									<input type="radio" disabled="disabled"><span class="an">D. ${Q.op4 }</span>
											<br>
								</c:if>
			
								<c:if test="${Q.as == 4 }">
									<input type="radio" disabled="disabled"><span class="an">A. ${Q.op1 }</span>
											<br>
									<br>
									<input type="radio" disabled="disabled"><span class="an">B. ${Q.op2 }</span>
											<br>
									<br>
									<input type="radio" disabled="disabled"><span class="an">C. ${Q.op3 }</span>
											<br>
									<br>
									<img alt="" src="cnweb/img/Okicon.png">
									<input type="radio" checked="checked"><span class="an">D. ${Q.op4 }</span>
											<br>
								</c:if>
							</c:if>
						</div>
					</div>
				</div>
			</c:forEach>
			<div class="row" style="margin-top: 50px">
					<div class="phantrang">
						<ul class="pagination">
							<li><a href="CTbaithiForward?mabaithi=${tId}" class="page__number">Làm lại</a></li>
						</ul>
					</div>
			</div>
			<div class="row" style="margin-top: 30px">
				<div class="phantrang">
					<ul class="pagination">
						<li><a href="ListbaithiForward?pageId=1" class="page__number">Back</a></li>
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