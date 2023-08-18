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

	<a id="stop" href="./list" style="text-decoration-line: none"> <img
		alt="사진없음" src="./img/arrow2.png"><span style="font-size: 30px">토스뱅크</span>
	</a>

   <h3>${accountInfo.abank } ${accountInfo.aaccount}</h3>
   <h1>${accountInfo.abalance }원</h1>
   
	<form action="./charge2" method="post">
		<button type="submit">채우기</button>
		<input type="hidden" name="aaccount" value="${accountInfo.aaccount}">
	</form>
	<form action="./send2" method="post">
		<button type="submit">보내기</button>
		<input type="hidden" name="aaccount" value="${accountInfo.aaccount}">
	</form>
   <br>


    <button id="openPopup">전체</button>
    

    <div class="overlay" id="overlay"></div>
    <div class="popup" id="popup">
        <span>내역 선택</span><button class="closePopup">닫기</button><br>
        <button type="button" class="closePopup" onclick="changeList('-1')">전체</button><br>
         <button type="button" class="closePopup" onclick="changeList('1')">입금</button><br>
         <button type="button" class="closePopup" onclick="changeList('0')">출금</button><br>
    </div>
    
   <div class="transactionListBoard">
   </div>
    
    
    
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
      $.ajax({
         url : "./chgList",
         type : "post",
         data : {"option" : value, "aaccount": ${accountInfo.aaccount}},
         dataType : "json",
         contentType: "application/x-www-form-urlencoded; charset=UTF-8",
         success : function(data){
            
            $(".transactionListBoard").empty();
            
            let ndate = 0;
            $.each(data.transactionList, function (index, transaction) {
               
               let html = "";
               
               let date = data.transactionDate[index];
               if(ndate != date.date){
                  html += "<div>";
                  html += date.month + "월" + date.date + "일";
                  html += "</div>";
                  
                  ndate = date.date;
               }

               html += "<div>";
               html +=    "<table>";
               html +=       "<tr>";
               html +=          "<td>";
               html +=               transaction.thistory;
               html +=          "</td>";
               html +=          "<td>";
               if(transaction.ttoggle == 0) html += "-" + transaction.tamount;
               if(transaction.ttoggle == 1) html += transaction.tamount;
               html +=          "</td>";
               html +=       "</tr>";
               html +=       "<tr>";
               html +=          "<td>";
               html +=               date.hour + ":" + date.minute;
               html +=          "</td>";
               html +=          "<td>";
               html +=             transaction.tbalance;
               html +=          "</td>";
               html +=       "</tr>";
               html +=    "</table>";
                   html += "</div>";
                   $(".transactionListBoard").append(html);
               });
         },
         error : function(error){
            alert("ERROR : " + error);
         }
      });
   }
</script>
</body>
</html>