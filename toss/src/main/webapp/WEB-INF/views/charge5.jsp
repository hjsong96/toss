<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>채우기5</title>
<meta http-equiv="Cache-Control" content="no-cache, no-store, must-revalidate">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Expires" content="0">
<script src="https://code.jquery.com/jquery-3.7.0.js"
	integrity="sha256-JlqSTELeR4TLqP0OG9dxM7yDPqX1ox/HfgiSLBj8+kM="
	crossorigin="anonymous"></script>
</head>
<body>
	<form action="./charge" method="post">
	<input type="hidden" name="aaccount" value="${list[0].aaccount}">
	<input type="hidden" id= "trAccount0" name="trAccount" value="${list2[0].aaccount}">
	<input type="hidden" id= "trAbank0" name="trAbank" value="${list2[0].abank}">
	<h1>${list3.tamount} 원을 보냈어요</h1> 
	<button>확인</button>
	</form>
</body>
</html>