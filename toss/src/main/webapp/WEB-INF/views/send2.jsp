<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./css/send.css">
<meta charset="UTF-8">
<title>보내기2</title>
<style type="text/css">
  @import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap');
</style>
<script type="text/javascript">
	/* document.addEventListener("DOMContentLoaded", function() {
	 var stopLink = document.querySelector("#stop");
	
	 stopLink.addEventListener("click", function(event) {
	 event.preventDefault();  // Prevent default link behavior
	
	 history.pushState(null, null, location.href);

	 window.onpopstate = function(event) {
	 history.go(1);
	 };
	
	 window.addEventListener("beforeunload", function(event) {
	 event.returnValue = "이 페이지를 떠나시겠습니까?";
	 });
	 });
	 }); */
</script>
</head>
<body>
	<div class="total">
	<div class="send_content">
		<a id="stop" href="./list" style="text-decoration-line: none"> <img
			alt="사진없음" src="./img/arrow2.png"><span style="font-size: 25px"></span>
		</a>
		<div>
		<h1>어디로 돈을 보낼까요?</h1>
		<div class="big_button">
		<button>계좌</button>
		<button>연락처</button>
		</div>
		<form action="send3" method="post">
			<button class="ac_input"
				style="width: 350px; height: 43px; cursor: hand; background-color: transparent; color: black; border-bottom: solid 2px silver; border-top: none; border-left: none; border-right: none; font-size: 15px; color: silver; text-align: left;">계좌번호
				입력</button>
			<input type="hidden" name="aaccount" value="${list[0].aaccount}" />
			<!-- <input id=aaccount name="aaccount" placeholder="보낼 계좌를 입력하세요."> -->
			<button>확인</button>
		</form>
		<table>
			<tr onclick="location.href='./myAccount'"
				style="cursor: pointer; width: 350px;">
				<td>내계좌 확인하기</td>
			</tr>
		</table>
		<br> 최근 보낸 계좌(DESC 10개만) <br> NH 농협 1001 ★ <br> 신한 2002
		★ <br> ...
		</div>
	</div>
	</div>
</body>
</html>
<!-- <form action="./send3" method="post"> -->