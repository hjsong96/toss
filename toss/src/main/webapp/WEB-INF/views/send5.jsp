<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>보내기5</title>
</head>
<body>
	<input name="acCheck" value="${list[0].aaccount}">
	<input id= "trAccount" name="trAccount" value="${list2[0].aaccount}">
	<input id= "trAbank" name="trAbank" value="${list2[0].abank}">
	<h1>${list2[0].aholder} 님에게 tamount 원을 보냈어요</h1> 
	<button onclick="location.href='./memo'">메모남기기</button><br>
	<button onclick="location.href='./memo'">공유하기</button>
	<button onclick="location.href='./'">확인</button>
	
	
</body>
</html>