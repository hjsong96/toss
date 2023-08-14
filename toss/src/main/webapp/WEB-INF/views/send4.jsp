<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>보내기4</title>
</head>
<body>
	<a href="./send3" style="text-decoration-line: none"> <img
		alt="사진없음" src="./img/arrow2.png"><span style="font-size: 30px">토스뱅크</span>
	</a><br><br>
	<form action="./send5" method="post">
	<input name="acCheck" value="${list[0].aaccount}">
	<input id= "trAccount" name="trAccount" value="${list2[0].aaccount}">
	<input id= "trAbank" name="trAbank" value="${list2[0].abank}">
	<input id= "trholder" name="trholder" value="${list2[0].aholder}">
	<input id= "trbalance" name="trbalance" value="${list2[0].abalance}">
	<h1>내 ${list[0].abank} 통장에서 ${list[0].aholder} 님이 </h1>
	<h3>잔액 ${list[0].abalance} 원</h3>
	<h1>${list2[0].aholder} 님에게</h1>
	<h3>계좌번호 ${list2[0].aaccount}</h3>
	<input id= "trMoney" name="trMoney" type="text" placeholder="얼마나 보낼까요?">
	<h3>잔액 ${list[0].abalance} 원</h3>
	<button>보내기</button>
	</form>
</body>
</html>
<!-- 	<button onclick="window.location.href='./send5'; return false;">보내기</button> -->