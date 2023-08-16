<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.7.0.min.js" ></script>

<script type="text/javascript">
$(function(){
	$("#mphoneCheck").click(function(){
		let mphone = $("#mphone").val();
		let mphone_reg = /[^0-9]/g; //숫자만
		
		// test()는 인수로 전달된 문자열에 특정 패턴과 일치하는 문자열이 있는지를 검색합니다
       // test()는 패턴과 일치하는 문자열이 있으면 true를, 없으면 false를 반환합니다
		
		if (mphone == "" || mphone.length < 11) {
			$("#mphone").focus();
			$("#mphoneMsg").text("11자를 입력하세요.(숫자만)");
			$("#mphoneMsg").css("color","red");
			return false;
		}
		
		if (mphone_reg.test(mphone)) {
			$("#mphone").focus();
			$("#mphoneMsg").text("전화번호에 영어/한글/특수문자는 사용할 수 없습니다.");
			$("#mphoneMsg").css("color","red");
			return false;
		}

			$.ajax({
				url:"./checkmphone",  
				type:"post",
				data:{"mphone" : mphone},
				dataType : "json", 
				success:function(data){
					if(data.result == 1){
						$("#mphone").focus();
						$("#mphoneMsg").text("이미 등록된 번호 입니다.");
						$("#mphoneMsg").css("color","red");

					} else{
						$("#mphoneMsg").text("사용할 수 있는 번호 입니다.");							
						$("#mphoneMsg").css("color","green");
						$(".button_register").attr("type", "submit");
					}
				},
					error : function(request, status, error){
					$("#mphoneMsg").text("오류가 발생했습니다. 가입할 수 없습니다.");
				}
			});
		});
	});	

</script>

<script type="text/javascript">
$(function() {
	
	$(".button_register").click(function() {
			let mphone = $("#mphone").val();
			let mname = $("#mname").val();
			let mpw = $("#mpw").val();
			let mpw2 = $("#mpw2").val();
			
			let mphone_reg = /[^0-9]/g; //숫자ㄴ
			let mname_reg =  /[^ㄱ-ㅎ|ㅏ-ㅣ|가-힣|a-zA-Z]/; //한글 영어만
			let mpw_reg = /[^0-9]/g; //숫자ㄴ
			
			// test()는 인수로 전달된 문자열에 특정 패턴과 일치하는 문자열이 있는지를 검색합니다
           // test()는 패턴과 일치하는 문자열이 있으면 true를, 없으면 false를 반환합니다
			
			
			if (mphone == "" || mphone.length < 11) {
				$("#mphone").focus();
				$("#mphoneMsg").text("11자를 입력하세요.(숫자만)");
				$("#mphoneMsg").css("color", "red");
				return false;
			} 

			if (mphone_reg.test(mphone)) {
				$("#mphone").focus();
				$("#mphoneMsg").text("전화번호에 영어/한글/특수문자는 사용할 수 없습니다.");
				$("#mphoneMsg").css("color", "red");
				return false;
			}
			
			if (mname == "" || mname.length < 2) {
				$("#mname").focus();
				$("#mnameMsg").text("이름을 2글자 이상 입력해주세요.(한글/영어)");
				$("#mnameMsg").css("color", "red");
				return false;
			} else{
				$("#mnameMsg").empty();
			}
			
			if (mname_reg.test(mname)) {
				$("#mname").focus();
				$("#mnameMsg").text("이름은 영어와 한글만 사용할 수 있습니다.");
				$("#mnameMsg").css("color", "red");
				return false;
			} 

			if (mpw == "" || mpw.length != 5) {
				$("#mpw").focus();
				$("#mpwMsg").text("비밀번호는 5자리입니다.(숫자4자리+영어1자리)");
				$("#mpwMsg").css("color", "red");
				return false;
			} else{
				$("#mpwMsg").empty();
			}

			if (mpw_reg.test(mpw)) {
				$("#mpw").focus();
				$("#mpwMsg").text("비밀번호는 숫자만 사용가능합니다.(일단 숫자만으로)");
				$("#mpwMsg").css("color", "red");
				return false;
			}

			if (mpw2 == "" || mpw2.length != 5) {
				$("#mpw2").focus();
				$("#mpwMsg2").text("비밀번호는 5자리입니다.(숫자4자리+영어1자리)");
				$("#mpwMsg2").css("color", "red");
				return false;
			} 

			if (mpw_reg.test(mpw2)) {
				$("#mpw2").focus();
				$("#mpwMsg2").text("비밀번호는 숫자만 사용가능합니다.(일단 숫자만으로)");
				$("#mpwMsg2").css("color", "red");
				return false;
			} 

		})

	});
	
	  $(function(){
		$("#mpw").keyup(function(){
		let mpw = $("#mpw").val();
		let mpw2 = $("#mpw2").val();
		
		if (mpw == mpw2 && mpw.length>4) {
			$("#mpwMsg2").text("비밀번호가 일치합니다.");
			$("#mpwMsg2").css("color", "green");
		} else {
			$("#mpwMsg2").text("비밀번호가 일치하지 않습니다.");
			$("#mpwMsg2").css("color", "red");
			$(".button_register").attr("type", "button");
			}
		})

		$("#mpw2").keyup(function(){
		let mpw = $("#mpw").val();
		let mpw2 = $("#mpw2").val();
		
		if (mpw == mpw2 && mpw2.length>4) {
			$("#mpwMsg2").text("비밀번호가 일치합니다.");
			$("#mpwMsg2").css("color", "green");
		} else {
			$("#mpwMsg2").text("비밀번호가 일치하지 않습니다.");
			$("#mpwMsg2").css("color", "red");
			$(".button_register").attr("type", "button");
			}
		})
	}); 

</script>

</head>
<body>
<h1>회원가입</h1>
	<form action="./register" method="post">
		전화번호 <input type="text" name="mphone" id="mphone" maxlength="11">
		<button type="button" id="mphoneCheck" class="mphoneCheck" > 중복검사</button>
		<span id="mphoneMsg" ></span><br> 
		이름 <input type="text" name="mname" id="mname" maxlength="20">
		<span id="mnameMsg" ></span><br> 
		비밀번호 <input type="password" name="mpw" id="mpw" maxlength="5">
		<span id="mpwMsg" ></span><br>  
		비밀번호확인 <input type="password" name="mpw2" id="mpw2" maxlength="5">
		<span id="mpwMsg2" ></span><br>  
		<button type="button" class="button_register">회원가입</button>
	</form>
<button onclick= "location.href='./'">홈으로</button>
</body>
</html>