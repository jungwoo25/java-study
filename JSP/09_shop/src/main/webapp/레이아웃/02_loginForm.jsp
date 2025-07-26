<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<div align="center">
	<h2>로그인</h2>
	<hr size="2" color="purple" width="300px">
	<br>
	
	
	<form method="post" action="02_loginPro.jsp">
	<table>
		<tr height="50px">
			<td width="300px" align="center">
				<input type="text" name="id" placeholder="아이디를 입력하세요." style="width: 300px; height: 30px;">
			</td>
		</tr>
		<tr height="50px">
			<td width="300px" align="center">
				<input type="password" name="pw" placeholder="비밀번호를 입력하세요." style="width: 300px; height: 30px;">
			</td>
		</tr>
		<tr height="50px">
			<td colspan="2" align="center">
				<font size="2">아이디 찾기</font>&nbsp;
				<img alt="막대선" src="img/01_top.jpg">&nbsp;
				<font size="2">비밀번호 찾기</font>
			</td>
		</tr>
		<tr>
			<td>
				<input type="image" src="img/06_login.PNG" width="300px">
			</td>
		</tr>
	</table>
	</form>
</div>