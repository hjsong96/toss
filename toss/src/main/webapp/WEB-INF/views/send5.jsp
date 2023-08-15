<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>보내기5</title>
<script src="https://code.jquery.com/jquery-3.7.0.js"
	integrity="sha256-JlqSTELeR4TLqP0OG9dxM7yDPqX1ox/HfgiSLBj8+kM="
	crossorigin="anonymous"></script>
	
	
</head>
<body>
	<a href="./send4" style="text-decoration-line: none"> <img
		alt="사진없음" src="./img/arrow2.png"><span style="font-size: 30px">토스뱅크</span>
	</a><br><br>
	<form action="./send" method="post">
	<input type="hidden" name="aaccount" value="${list[0].aaccount}">
	<input type="hidden" id= "trAccount0" name="trAccount" value="${list2[0].aaccount}">
	<input type="hidden" id= "trAbank0" name="trAbank" value="${list2[0].abank}">
	<h1>${list3.trholder0} 님에게 ${list3.tamount} 원을 보냈어요</h1> 
	<button>확인</button>
	</form>
	<button onclick="location.href='./memo'">메모남기기</button><br>
	<button onclick="location.href='./memo'">공유하기</button>
	
</body>
</html>