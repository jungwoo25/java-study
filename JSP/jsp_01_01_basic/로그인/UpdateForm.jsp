<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	request.setCharacterEncoding("UTF-8");
	
	Object obj = session.getAttribute("sampleId1");
	String[] sampleId1 = (String[])obj;
	
	obj = session.getAttribute("samplePw1");
	String[] samplePw1 = (String[])obj;
	
	obj = session.getAttribute("sampleName1");
	String[] sampleName1 = (String[])obj;
	
	obj = session.getAttribute("sampleGender1");
	String[] sampleGender1 = (String[])obj;
	
	obj = session.getAttribute("adminId");
	String adminId = (String)obj;
	
	obj = session.getAttribute("adminPw");
	String adminPw = (String)obj;
	
	obj = session.getAttribute("check");
	String check = (String)obj;
	
	obj = session.getAttribute("count");
	int count = (int)obj;
	
	obj = session.getAttribute("index");
	int index = (int)obj;
	%>
	<div align="center">
		<h1>회원정보 수정</h1>
		<form action="UpdatePro.jsp" method="post">
		<table border="1">
			<tr>
				<td>아이디</td>
				<td><input type="text" value="<%=sampleId1[index]%>" name="id"></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="text" value="<%=samplePw1[index]%>" name="pw"></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input type="text" value="<%=sampleName1[index]%>" name="name"></td>
			</tr>
			<tr>
				<td>성별</td>
				<td>
				<%
					if(sampleGender1[index].equals("남성")){
				%>
					<input type="radio" value="남성" name="gender" checked>남성 
					<input type="radio" value="여성" name="gender">여성 
				<%
					}else if(sampleGender1[index].equals("여성")){
				%>
					<input type="radio" value="남성" name="gender">남성 
					<input type="radio" value="여성" name="gender" checked>여성 
				<%
					}
				%>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="수정하기">
				</td>
			</tr>
		</table>
		</form>
		<a href="main.jsp">뒤로가기</a>
	</div>
</body>
</html>