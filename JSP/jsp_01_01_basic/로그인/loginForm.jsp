<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<div align="center">
	<h1>로그인 페이지</h1>
	<form action="loginPro.jsp" method="post">
		<table border="1">
			<tr>
				<td>아이디</td>
				<td>
				<input type="text" name="id">
				</td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td>
				<input type="password" name="pw">
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="로그인">
				</td>
			</tr>
		</table>
	</form>
		<a href="main.jsp">뒤로가기</a>
	
	</div>
</body>
</html>