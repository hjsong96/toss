<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
<script type="text/javascript">
$(function(){
	$(".button_login").click(function(){
		let mphone = $("#mphone").val();
		let mpw=$("#mpw").val();
		
		let mphone_reg = /[^0-9]/g; //숫자ㄴ
		
		
		if (mphone == "" || mphone.length < 11) {
			$("#mphone").focus();
			$("#mphoneMsg").text("11자를 입력하세요.(숫자만)");
			$("#mphoneMsg").css("color", "red");
			return false;
		} else {
			$("#mphoneMsg").empty();
		}

		if (mphone_reg.test(mphone)) {
			$("#mphone").focus();
			$("#mphoneMsg").text("전화번호에 영어/한글/특수문자는 사용할 수 없습니다.");
			$("#mphoneMsg").css("color", "red");
			return false;
		} else {
			$("#mphoneMsg").empty();
		}
		
		if (mpw == "" || mpw.length != 5) {
			$("#mpw").focus();
			$("#mpwMsg").text("비밀번호는 5자리입니다.(숫자4자리+영어1자리)");
			$("#mpwMsg").css("color","red");
			return false;
		}else{
			$("#mpwMsg").empty();
		}
		
		});
	});
</script>

<body>
<h1>로그인</h1>
<form action="./login" method="post">
전화번호 <input type="text" name="mphone" id="mphone" maxlength="11">
<span id="mphoneMsg"></span> <br>
비밀번호 <input type="password" name="mpw" id="mpw" maxlength="5">
<span id="mpwMsg"></span> <br>
<button type="submit" class="button_login"> 로그인 </button> <br>
</form>
<button type="button" onclick="location.href='./register'"> 회원가입 </button>
</body>
</html>