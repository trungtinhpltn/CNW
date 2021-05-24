<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:forEach items="${listQ}" var="Q">
		<div class="col l-12 m-12 c-12">
			<p class="item_name">Câu ${Q.qSTT }: ${Q.q }</p>
			<div class="Option">
				<c:if test="${Q.da == 1 }">
					<c:if test="${kq == 1 }">
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

					<c:if test="${kq == 2 }">
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

					<c:if test="${kq == 3 }">
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

					<c:if test="${kq == 4 }">
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
					<c:if test="${kq == 1 }">
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

					<c:if test="${kq == 2 }">
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

					<c:if test="${kq == 3 }">
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

					<c:if test="${kq == 4 }">
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
					<c:if test="${kq == 1 }">
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

					<c:if test="${kq == 2 }">
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

					<c:if test="${kq == 3 }">
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

					<c:if test="${kq == 4 }">
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
					<c:if test="${kq == 1 }">
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

					<c:if test="${kq == 2 }">
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

					<c:if test="${kq == 3 }">
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

					<c:if test="${kq == 4 }">
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
	</c:forEach>
</body>
</html>