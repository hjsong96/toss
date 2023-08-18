<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <script>
        function link(url) {
            window.location.href = url;
        }
    </script>


<title>Insert title here</title>
</head>
<body>
<h1>토스뱅크 통장</h1>
모두에게<p>
조건 없는 연 2%<p>
이제 더이상 까다로운 조건을 알 필요 없어요<p>
하루만 넣어도 이자를 드릴게요<p>
연 2% 금리(세전)<p>
<button type="button" onclick="link('open2')">통장 만들기</button>


  
</body>
</html>