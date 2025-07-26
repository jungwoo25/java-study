<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script>
	function checkValue(){
		let formData = document.formData;
		
		if(formData.id.value == ""){
			alert("아이디를 입력해주세요");
			formData.id.focus();
		}else if(formData.pw.value == ""){
			alert("비밀번호를 입력해주세요");
			formData.pw.focus();
		}else if(formData.name.value == ""){
			alert("이름을 입력해주세요");
			formData.name.focus();
		}else{
			alert("회원가입이 완료되었습니다.")
			formData.submit();
		}
	}
</script>
</head>
<body>
	<div align="center">
		<h1>회원가입</h1>
		<form action="insertPro.jsp" method="post" name="formData" onsubmit="return false">
		<table border="1">
			<tr>
				<td>아이디</td>
				<td><input type="text" name="id">
			</tr>	
			<tr>
				<td>비밀번호</td>
				<td><input type="password" name="pw">
			</tr>
			<tr>
				<td>이름</td>
				<td><input type="text" name="name">
			</tr>
			<tr>
				<td>성별</td>
					<td>
						<input type="radio" name="gender" value="남성" checked>남성 
						<input type="radio" name="gender" value="여성">여성 
					</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<button onclick="checkValue()">회원가입</button>
					<button onclick="location.href='main.jsp'">뒤로가기</button>
				</td>
			</tr>
		</table>
		
		</form>
	</div>
</body>
</html>