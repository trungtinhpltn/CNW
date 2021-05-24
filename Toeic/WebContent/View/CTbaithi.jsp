<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Làm bài thi thử</title>
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
		function Check()
		{
			var Option = document.getElementsByClassName("Option");
		    for(var i = 0 ; i< Option.length ; i++){
		        var lc = Option[i].getElementsByTagName("input");
		        var ck = false;
		        for(var j = 0 ; j<lc.length; j++){
		            if( lc[j].checked == true){
		                ck = true;
		                break;
		            }
		        }
		        if( ck === false){
		            alert("Vui lòng làm hết tất cả câu hỏi");
		            return false;
		        }
		    }
		    return true;
		}
	</script>
</head>
<body>
	<jsp:include page="Header.jsp" />
	
	<div class="container">
		<div class="grid wide">
			<div class="row">
				<h3 class="page-header">Bài thi thử</h3>
			</div>
			<form action="CTbaithiForward?mabaithi=${tId }" method ="Post" name="myform" id="ketquabt" onsubmit="return Check()">
				<c:forEach items="${listQ}" var="Q">
					<div class="row" style="margin-top: 30px;">
						<div class="col l-12 m-12 c-12">
							<p class="item_name"><b>Câu ${Q.qSTT }: ${Q.q }</b></p>
							<div class="Option">
								<input type="radio" name="q${Q.qSTT }" value="1"> <span class="an">A. ${Q.op1 } </span>
								<br> 
								<br> 
								<input type="radio" name="q${Q.qSTT }" value="2"> <span class="an">D. ${Q.op2 } </span>
								<br> 
								<br>
								<input type="radio" name="q${Q.qSTT }" value="3"> <span class="an">D. ${Q.op3 } </span>
								<br> 
								<br> 
								<input type="radio" name="q${Q.qSTT }" value="4"> <span class="an">D. ${Q.op4 } </span>
								<br>
							</div>
						</div>
					</div>
				</c:forEach>
				<div class="row" style="margin-top: 50px">
					<div class="phantrang">
						<ul class="pagination">
							<input type="submit" value="Đáp án" class="btn__DA"/>
							<li><a href="CTbaithiForward?mabaithi=${tId}" class="page__number">Làm lại</a></li>
						</ul>
					</div>
				</div>
			</form>
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