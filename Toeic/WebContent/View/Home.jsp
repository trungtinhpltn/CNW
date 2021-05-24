<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="cnweb/fonts/css/all.min.css">
    <link rel="stylesheet" href="cnweb/css/main.css">
    <link rel="stylesheet" href="cnweb/css/grid.css">
    <link rel="stylesheet" href="cnweb/css/respon.css">
    <link rel="stylesheet" href="cnweb/js/javascript.css">
    <title>Trang chủ</title>
</head>
<body>
	<!-- Header -->	
    <jsp:include page="Header.jsp"/>
    
    <!-- Slide Banner -->
	
	<div class="slide hide-on-mobile">
        <div class="dieuhuong">
            <i class="fas fa-chevron-circle-left" onclick="Previous()"></i>
            <i class="fas fa-chevron-circle-right" onclick="Next();"></i>
        </div>
        <div class="chuyen-slide">
        	<c:forEach items="${Slides }" var="slide">
	            <div class="slide_block">
	                <div class="col l-6 m-6 c-6 align_center">
	                    <h1 class="slide_title">${slide.sliderName }</h1>
	                    <p class="slide_description">${slide.sliderContent }</p>
	                    <a class="slide_btn" href="#">Hãy tham gia ngay</a>
	                </div>
	                <div class="col l-6 m-6 align_center">
	                    <img src="cnweb/img/${slide.sliderImage }" width="239px" height="300px">
	                </div>
	            </div>
        	</c:forEach>
        </div>
    </div>
	
    <!-- Body -->	
	<div class="container">
        <div class="grid wide">
            <div class="row">
                <div class="col l-12 m-12 c-12 body__title">
                    <h1>Chúng tôi cung cấp cho bạn các giao diện học và thi thân
                        thiện với người dùng</h1>
                    <span>(--Học thử, Làm bài tập, Thi thử--)</span>
                </div>
            </div>
        </div>

        <div class="courses">
            <div class="grid wide">
                <div class="row">
                    <div class="col l-4 m-6 c-12 course">
                        <img src="./cnweb/img/guideline.png">
                        <h2 class="course__title">Hướng dẫn phần từ vựng, ngữ pháp</h2>
                        <p class="course__description">Cung cấp các bài hướng dẫn sát với đề thi.</p>
                        <label for="modal_check" class="course__link">Chi tiết&rarr;</label>
                    </div>
                    <div class="col l-4 m-6 c-12 course">
                        <img src="./cnweb/img/exercises.png">
                        <h2 class="course__title">Bài tập phần nghe, đọc</h2>
                        <p class="course__description">Chúng tôi cung cấp các dạng bài tập có trong đề thi Toeic.</p>
                        <label for="modal_check2" class="course__link">Chi tiết&rarr;</label>
                    </div>
                    <div class="col l-4 m-6 c-12 course">
                        <img src="./cnweb/img/thitoeic.png">
                        <h2 class="course__title">Đề thi thử</h2>
                        <p class="course__description">Chúng tôi cung cấp cho các bạn đề thi sát với thi thật.</p>
                        <a class="course__link" href="ListbaithiForward?pageId=1">Chi tiết&rarr;</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <!-- Footer -->	
	<jsp:include page="Footer.jsp"/>
    
    
    <input type="checkbox" name="" hidden class="modal-checked" id="modal_check">
    <label for="modal_check" class="modal__overlay" id="overlay1"></label>
    <div class="modal" id="modal1">
        <label for="modal_check"class="modal_close">  
            <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="times" class="svg-inline--fa fa-times fa-w-11" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 352 512"><path fill="currentColor" d="M242.72 256l100.07-100.07c12.28-12.28 12.28-32.19 0-44.48l-22.24-22.24c-12.28-12.28-32.19-12.28-44.48 0L176 189.28 75.93 89.21c-12.28-12.28-32.19-12.28-44.48 0L9.21 111.45c-12.28 12.28-12.28 32.19 0 44.48L109.28 256 9.21 356.07c-12.28 12.28-12.28 32.19 0 44.48l22.24 22.24c12.28 12.28 32.2 12.28 44.48 0L176 322.72l100.07 100.07c12.28 12.28 32.2 12.28 44.48 0l22.24-22.24c12.28-12.28 12.28-32.19 0-44.48L242.72 256z"></path></svg>
        </label>
        
        <div class="modal-header">
            <p class="modal-title" id="notcp">Danh sách bài tập phần ngữ pháp</p>
        </div>
        <div class="modal_body">
            <ul class="modal_list">
                <li class="modal_item">
                    <a href="#" class="modal_list-link">
                        <img src="./cnweb/img/loaibtnghe.png" alt="" class="modal_list-img">
                    </a>
                    <a href="#" class="modal_list-des">
                        Bài tập phần nghe phần ngữ pháp
                    </a>
                </li>
                <li class="modal_item">
                    <a href="#" class="modal_list-link">
                        <img src="./cnweb/img/loaibtdoc.png" alt="" class="modal_list-img">
                    </a>
                    <a href="ListHdBaiNguPhapForward?pageId=1" class="modal_list-des">
                        Bài tập trắc nghiệm phần ngữ pháp
                    </a>
                </li>
            </ul>
        </div>
    </div>

    <input type="checkbox" name="" hidden class="modal-checked" id="modal_check2">
    <label for="modal_check2" class="modal__overlay" id="overlay2"></label>
    <div class="modal" id="modal2">
        <label for="modal_check2"class="modal_close">  
            <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="times" class="svg-inline--fa fa-times fa-w-11" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 352 512"><path fill="currentColor" d="M242.72 256l100.07-100.07c12.28-12.28 12.28-32.19 0-44.48l-22.24-22.24c-12.28-12.28-32.19-12.28-44.48 0L176 189.28 75.93 89.21c-12.28-12.28-32.19-12.28-44.48 0L9.21 111.45c-12.28 12.28-12.28 32.19 0 44.48L109.28 256 9.21 356.07c-12.28 12.28-12.28 32.19 0 44.48l22.24 22.24c12.28 12.28 32.2 12.28 44.48 0L176 322.72l100.07 100.07c12.28 12.28 32.2 12.28 44.48 0l22.24-22.24c12.28-12.28 12.28-32.19 0-44.48L242.72 256z"></path></svg>
        </label>
        
        <div class="modal-header">
            <p class="modal-title" id="notcp">Danh sách bài tập phần từ vựng </p>
        </div>
        <div class="modal_body">
            <ul class="modal_list">
                <li class="modal_item">
                    <a href="#" class="modal_list-link">
                        <img src="cnweb/img/loaibtnghe.png" alt="" class="modal_list-img">
                    </a>
                    <a href="#" class="modal_list-des">
                        Bài tập nghe phần từ vựng
                    </a>
                </li>
                <li class="modal_item">
                    <a href="#" class="modal_list-link">
                        <img src="cnweb/img/loaibtdoc.png" alt="" class="modal_list-img">
                    </a>
                    <a href="ListHdBaiTuVungForward?pageId=1" class="modal_list-des">
                        Bài tập trắc nghiệm phần từ vựng
                    </a>
                </li>
            </ul>
        </div>
    </div>
    <script src="cnweb/js/jsmain.js"></script>
</body>
</html>