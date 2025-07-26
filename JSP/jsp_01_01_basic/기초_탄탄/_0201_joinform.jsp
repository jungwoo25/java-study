<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<script>
		function namechange(){
			let formData = document.formData;
			
			if(formData.name.value == "none"){
				formData.bunho.value="";
			}else{
				formData.bunho.value = formData.name.value;
				
				formData.place.value = "none";
				formData.className.value ="none";
				formData.money.value="";
			}
			
		}
		
		function classN(){
			let formData = document.formData;
			
			let price = Number(formData.className.value);
			let number = Number(formData.name.value);
			
			if(number >= 20000){
				price = price * 0.5;
			}
			formData.money.value = price;
		}
		
		function checkValue(){
			let formData = document.formData;
			
			if(formData.mon.value == ""){
				alert("수강월을 확인해주세요");
				formData.mon.focus();
			}else if(formData.name.value =="none"){
				alert("회원명을 선택해주세요");
				formData.name.focus();
			}else if(formData.bunho.value ==""){
				alert("회원번호를 확인해주세요");
				formData.bunho.focus();
			}else if(formData.place.value =="none"){
				alert("강의장소를 확인해주세요");
				formData.place.focus();
			}else if(formData.className.value =="none"){
				alert("강의명을 확인해주세요");
				formData.className.focus();
			}else {
				alert("수강신청이 완료되었습니다.");
				formData.submit();
			}
		}
		
		function re(){
			let formData = document.formData;
			
			alert("정보를 수정하고 다시 입력합니다.");
			
			formData.mon.value="";
			formData.name.value="none";
			formData.bunho.value="";
			formData.name.value="none";
			formData.className.value="none";
			formData.money.value="";
			
			formData.mon.focus();
		}
	</script>
</head>
	
<body>
	<div align="center">
		<h1>수강신청</h1>
		
		<form name="formData" action="_0201_joinpro.jsp" method="post" onsubmit="return false;">
		<table border="1">
			<tr>
				<td>수강월</td>
				<td><input type="text" name="mon"></td>
				<td>2022년 3월 예)202203</td>
			</tr>
			<tr>
				<td>회원명</td>
				<td colspan="2">
					<select name="name" onchange="namechange()">
						<option value="none">회원명</option>
						<option value="10001">고정우</option>
						<option value="10002">고난영</option>
						<option value="10003">김재용</option>
						<option value="20001">이준형</option>
						<option value="20002">김다정</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>회원번호</td>
				<td><input type="text" name="bunho"></td>
				<td>예) 10001</td>
			</tr>
			<tr>
				<td>강의장소</td>
				<td colspan="2">
					<select name="place">
						<option value="none">강의장소</option>
						<option value="서울">서울</option>
						<option value="강남">강남</option>
						<option value="군산">군산</option>
						<option value="부산">부산</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>강의명</td>
				<td colspan="2">
					<select name="className" onchange="classN()">
						<option value="none">강의명</option>
						<option value="100000">초급반</option>
						<option value="200000">중급반</option>
						<option value="300000">고급반</option>
						<option value="400000">심화반</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>수강료</td>
				<td colspan="2"><input type="text" name="money"></td>
			</tr>
			<tr>
				<td colspan="3" align="center">
					<input type="button" name="button" onclick="checkValue()" value="수강신청">
					<button onclick="re()">다시하기</button>
				</td>
			</tr>
		</table>
		
		</form>
	</div>
</body>
</html>

<%--
#DB 셋팅
DROP TABLE dbsetting02;
CREATE table dbsetting02(
	id VARCHAR2(10) NOT NULL,
	pw VARCHAR2(10) NOT NULL
);
commit;

--%>
