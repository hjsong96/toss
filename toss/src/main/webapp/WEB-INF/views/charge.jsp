<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>계좌 선택하기</title>
</head>
<style>
#charge {
	width: 500px;
	height: 100px;
	background-color: white;
	border: 1px solid black;
	text-align: center;
	padding-top: 50px;
}

#idChar {
	margin-left: 150px;
}

#idchar button {
	margin-left: 100px;
}
</style>
<body>
		
	<h3>${list[0].abank} ${sessionScope.aaccount }</h3>
	<h1>${list[0].abalance}원</h1>	
	
	<button onclick="location.href='./'">확인</button>

<!--	
	<form action="./charge2" method="post">
		<button type="submit">채우기</button>
		<input type="text" name="aaccount">
	</form>
-->

	<!--
	<h1 id="charge">어떤 계좌에서 돈을 가져올까요?</h1>
	<ul>
		<li onclick="location.href='./nhbank'">NH은행</li>
		<li onclick="location.href='./gugmin'">국민은행</li>
		<li onclick="location.href='./kakao'">카카오뱅크</li>
		<li onclick="location.href='./toss'">토스뱅크</li>
		<li onclick="location.href='./shinhan'">신한은행</li>
	</ul>
-->
</body>
</html>
