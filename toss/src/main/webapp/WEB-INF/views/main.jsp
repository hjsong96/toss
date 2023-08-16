<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MAIN</title>
<link rel="stylesheet" href="./resources/css/main.css">

<script src="./js/jquery-3.7.0.min.js"></script>

</head>
<body>

	<button>←</button><button>관리</button>

	<h6>${accountInfo.abank } ${accountInfo.aaccount}</h6>
	<h1>${accountInfo.abalance }원</h1>
	
	<button>채우기</button><button>보내기</button>
	<br>


    <button id="openPopup">전체</button>
    

    <div class="overlay" id="overlay"></div>
    <div class="popup" id="popup">
        <span>내역 선택</span><button class="closePopup">닫기</button><br>
        <button type="button" class="closePopup" onclick="changeList('-1')">전체</button><br>
   		<button type="button" class="closePopup" onclick="changeList('1')">입금</button><br>
   		<button type="button" class="closePopup" onclick="changeList('0')">출금</button><br>
    </div>
    
    <br>
    <br>
    <h1>${transactiondate0 }</h1>
    <h1>${transactiondate1 }</h1>
    <h1>${transactionList[0] }</h1>
    <h1>${transactionList[1] }</h1>
    
    
    
<script type="text/javascript">

	document.getElementById("openPopup").addEventListener("click", function() {
	    document.getElementById("overlay").style.display = "block";
	    document.getElementById("popup").style.display = "block";
	});

	document.getElementById("openPopup").addEventListener("click", function() {
	    document.getElementById("overlay").style.display = "block";
	    document.getElementById("popup").style.display = "block";
	});

	let closeButtons = document.getElementsByClassName("closePopup");
	for (var i = 0; i < closeButtons.length; i++) {
	    closeButtons[i].addEventListener("click", function() {
	        document.getElementById("overlay").style.display = "none";
	        document.getElementById("popup").style.display = "none";
	    });
	}

	let allButtons = document.querySelectorAll("button[type='button']");
	allButtons.forEach(function(button) {
	    button.addEventListener("click", function() {
	        document.getElementById("openPopup").innerHTML = this.innerHTML;
	    });
	});
	
	function changeList(value){
		
		alert(value);
		
		$.ajax({
			url : "./chgList",
			type : "post",
			data : {"option" : value, "aaccount": ${accountInfo.aaccount}},
			dataType : "json",
			success : function(data){
				alert(data.transactionList[0].tno);
				alert(data.transactionList[1].tno);
				alert(data.transactionDate[0].minute);
				alert(data.transactionDate[1].minute);
			},
			error : function(error){
				alert("ERROR : " + error);
			}
		});
	}
</script>
</body>
</html>