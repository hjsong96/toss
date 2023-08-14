<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>보내기1</title>
</head>
<body>
	<a href="./send" style="text-decoration-line: none">
	<img alt="사진없음" src="./img/arrow2.png"><span style="font-size: 30px">토스뱅크</span>
	</a>
	<form action="./send" method="post">
		계좌번호 입력
		<input type="text" placeholder="계좌번호 입력" name="aaccount" id="aaccount">
		<button type="submit" id="inputAc" onclick="location.href='./send2'">확인</button>
	</form>
	<c:forEach items="${list }" var="a">
		<h3>${a.abank } ${a.aaccount }</h3>
		<h1>${a.abalance } 원</h1>
	</c:forEach>
	<button>채우기</button>
	<button onclick="location.href='./send2'">보내기</button>

</body>
</html>