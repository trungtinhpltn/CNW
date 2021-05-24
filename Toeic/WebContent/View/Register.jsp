<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewpoint" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="cnweb/css/login.css">
    <title>Register</title>
    <script type="text/javascript">
		function Validate(){
			var fullName = document.myform.fullName.value;
			var name = document.myform.usr.value;
			var pass = document.myform.pwd.value;
			var pass2 = document.myform.vpass.value;
			fullName.trim();
			name.trim();
			pass.trim();
			if( fullName =="" || name == ""|| pass== "" || pass2 == ""){
				alert("Không được để trống thông tin");
				return false;
			}
			if( pass.length < 6){
				return false;
			}
			if( pass2 != pass){
				alert("Mật khẩu xác thực không chính xác");
				return false;
			}
			return true;
		}
		function ValidatePass(){
			var pass = document.myform.pwd.value;
			if( pass.length < 6){
				document.getElementById("lpass").innerHTML = "Mật khẩu ít nhất 6 ký tự";
			}
			else{
				document.getElementById("lpass").innerHTML = "";
			}
		}
		function Reset(){
			document.getElementById("sms").innerHTML="";
		}
	</script>
</head>
<body>
<main>
    <section>
        <div class="login-text">
            <h1>REGISTER</h1>
        </div>
        <p id="sms"><i><%=request.getAttribute("sms") != null?request.getAttribute("sms"):"" %></i></p>
        <form action="RegisterController" method="POST" name="myform" onsubmit="return Validate()">
            <div class="user-pass">
            	<input placeholder="Họ và tên" autocomplete="off" type="text" name="fullName" id="fullName" onclick="Reset()">
                <input placeholder="Tài khoản" autocomplete="off" type="text" name="usr" id="usr" onclick="Reset()">
                <input placeholder="Mật khẩu" autocomplete="off" type="password" name="pwd" id="pwd" onkeyup="ValidatePass()" onclick="Reset()">
                <label id="lpass" style="color: red; margin-top: 5px"></label>
                <input placeholder="Xác nhận mật khẩu" autocomplete="off" type="password" name="vpass" id="cfpwd" onclick="Reset()">
            </div>
            <input type="submit" value="Đăng ký">
        </form>
        <div class="re_link">
	        <a href="LoginController" class="re_link-login">Already have account? Login</a>
	        <a href="HomeForward" class="re_link-home">Back to home page</a>
        </div>
    </section>
    
</main>
</body>
</html>