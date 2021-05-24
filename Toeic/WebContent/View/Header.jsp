<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<header>
		<%
			if( session.getAttribute("suser") == null)
			{
		%>
        <div class="grid wide">
            <!-- PC + tablet -->
            <div class="row hide-on-mobile">
                <a class="header__logo-link hide-on-tablet" href="HomeForward">
                    <img src="./cnweb/img/logo.png"/>
                </a>
                <a class="header__logo-tablet" href="HomeForward">
                    <i class="home__icon fas fa-home"></i>
                </a>
                <div class="header__search">
                    <div class="header__input-form">
                        <input type="text" class="header__search-input" placeholder="Tìm kiếm">
                    </div>
                </div>
                <nav class="header__navbar">
                    <ul class="header__navbar-list">
                        <li class="header__navbar-item separate"><a href="LoginController">Đăng nhập</a></li>
                        <li class="header__navbar-item"><a href="RegisterController">Đăng Ký</a></li>
                    </ul>
                </nav>
            </div>
            <!-- Mobile --> 
            <div class="row">
                <label for="nav__mobile-input" class="nav__bars-btn">              
                    <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="bars" class="svg-inline--fa fa-bars fa-w-14" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512"><path fill="currentColor" d="M16 132h416c8.837 0 16-7.163 16-16V76c0-8.837-7.163-16-16-16H16C7.163 60 0 67.163 0 76v40c0 8.837 7.163 16 16 16zm0 160h416c8.837 0 16-7.163 16-16v-40c0-8.837-7.163-16-16-16H16c-8.837 0-16 7.163-16 16v40c0 8.837 7.163 16 16 16zm0 160h416c8.837 0 16-7.163 16-16v-40c0-8.837-7.163-16-16-16H16c-8.837 0-16 7.163-16 16v40c0 8.837 7.163 16 16 16z"></path></svg>
                </label>

                <input type="checkbox" name="" hidden class="nav__mobile-checked" id="nav__mobile-input">

                <label for="nav__mobile-input" class="nav__overlay"></label>

                <nav class="nav__mobile">
                    <label for="nav__mobile-input"class="nav__mobile-close">  
                        <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="times" class="svg-inline--fa fa-times fa-w-11" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 352 512"><path fill="currentColor" d="M242.72 256l100.07-100.07c12.28-12.28 12.28-32.19 0-44.48l-22.24-22.24c-12.28-12.28-32.19-12.28-44.48 0L176 189.28 75.93 89.21c-12.28-12.28-32.19-12.28-44.48 0L9.21 111.45c-12.28 12.28-12.28 32.19 0 44.48L109.28 256 9.21 356.07c-12.28 12.28-12.28 32.19 0 44.48l22.24 22.24c12.28 12.28 32.2 12.28 44.48 0L176 322.72l100.07 100.07c12.28 12.28 32.2 12.28 44.48 0l22.24-22.24c12.28-12.28 12.28-32.19 0-44.48L242.72 256z"></path></svg>
                    </label>
                    
                    <div class="mobile__search">
                        <div class="mobile-form">
                            <input type="text" class="mobile__search-input" placeholder="Tìm kiếm">
                            <button class="mobile__search-btn">
                                <i class="mobile__search-icon fas fa-search"></i>
                            </button>
                        </div>
                    </div>
                    <ul class="nav__mobile-list">
                        <li>
                            <a href="HomeForward" class="nav__mobile-link">Trang chủ</a>
                        </li>
                        <li>
                            <a href="LoginController" class="nav__mobile-link">Đăng nhập</a>
                        </li>
                        <li>
                            <a href="RegisterController" class="nav__mobile-link">Đăng ký</a>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>
        <%
			}
			else{
		%>
		
		<div class="grid wide">
            <!-- PC + tablet -->
            <div class="row hide-on-mobile">
                <a class="header__logo-link hide-on-tablet" href="HomeForward">
                    <img src="./cnweb/img/logo.png"/>
                </a>
                <a class="header__logo-tablet" href="HomeForward">
                    <i class="home__icon fas fa-home"></i>
                </a>
                <div class="header__search">
                    <div class="header__input-form">
                        <input type="text" class="header__search-input" placeholder="Tìm kiếm">
                    </div>
                </div>
                <nav class="header__navbar">
                    <ul class="header__navbar-list">
                        <li class="header__navbar-item"><a style="line-height: 18px; font-size: 16px">${suser }</a></li>
                        <li class="header__navbar-item"><a href="LogoutController" style="line-height: 18px; font-size: 16px">Đăng xuất</a></li>
                    </ul>
                </nav>
            </div>
            <!-- Mobile --> 
            <div class="row">
                <label for="nav__mobile-input" class="nav__bars-btn">              
                    <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="bars" class="svg-inline--fa fa-bars fa-w-14" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512"><path fill="currentColor" d="M16 132h416c8.837 0 16-7.163 16-16V76c0-8.837-7.163-16-16-16H16C7.163 60 0 67.163 0 76v40c0 8.837 7.163 16 16 16zm0 160h416c8.837 0 16-7.163 16-16v-40c0-8.837-7.163-16-16-16H16c-8.837 0-16 7.163-16 16v40c0 8.837 7.163 16 16 16zm0 160h416c8.837 0 16-7.163 16-16v-40c0-8.837-7.163-16-16-16H16c-8.837 0-16 7.163-16 16v40c0 8.837 7.163 16 16 16z"></path></svg>
                </label>

                <input type="checkbox" name="" hidden class="nav__mobile-checked" id="nav__mobile-input">

                <label for="nav__mobile-input" class="nav__overlay"></label>

                <nav class="nav__mobile">
                    <label for="nav__mobile-input"class="nav__mobile-close">  
                        <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="times" class="svg-inline--fa fa-times fa-w-11" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 352 512"><path fill="currentColor" d="M242.72 256l100.07-100.07c12.28-12.28 12.28-32.19 0-44.48l-22.24-22.24c-12.28-12.28-32.19-12.28-44.48 0L176 189.28 75.93 89.21c-12.28-12.28-32.19-12.28-44.48 0L9.21 111.45c-12.28 12.28-12.28 32.19 0 44.48L109.28 256 9.21 356.07c-12.28 12.28-12.28 32.19 0 44.48l22.24 22.24c12.28 12.28 32.2 12.28 44.48 0L176 322.72l100.07 100.07c12.28 12.28 32.2 12.28 44.48 0l22.24-22.24c12.28-12.28 12.28-32.19 0-44.48L242.72 256z"></path></svg>
                    </label>
                    
                    <div class="mobile__search">
                        <div class="mobile-form">
                            <input type="text" class="mobile__search-input" placeholder="Tìm kiếm">
                            <button class="mobile__search-btn">
                                <i class="mobile__search-icon fas fa-search"></i>
                            </button>
                        </div>
                    </div>
                    <ul class="nav__mobile-list">
                        <li>
                            <a href="Homeforward" class="nav__mobile-link">Trang chủ</a>
                        </li>
                        <li>
                            <a class="nav__mobile-link">${suser }</a>
                        </li>
                        <li>
                            <a href="LogoutController" class="nav__mobile-link">Đăng xuất</a>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>
		
		<%
			}
		%>
    </header>
</body>
</html>