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
	<a href="./index" style="text-decoration-line: none">
	<img alt="사진없음" src="./img/arrow2.png"><span style="font-size: 30px">토스뱅크</span>
	</a>
		<h3>${list[0].abank} ${sessionScope.save}</h3>
		<h1>${list[0].abalance} 원</h1>

	<form action="./send2" method="post">
		<button>채우기</button>
		<button type="submit">보내기</button>
		<input  name="aaccount" value="${sessionScope.save}">
	</form>

</body>
</html>