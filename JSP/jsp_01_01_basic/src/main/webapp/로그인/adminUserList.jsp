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
		
		obj = session.getAttribute("count");
		int count = (int)obj;
		
	%>
		<div align="center">
			<h1>관리자 페이지(회원 정보 확인하기)</h1>
			<table border="1">
			<tr>
			<td>아이디</td>
			<td>패스워드</td>
			<td>이름</td>
			<td>성별</td>
			<td>삭제</td>
		</tr>
	<%
		for(int i = 0; i < count; i++){
	%>
		<tr>
			<td><%=sampleId1[i] %></td>
			<td><%=samplePw1[i] %></td>
			<td><%=sampleName1[i] %></td>
			<td><%=sampleGender1[i] %></td>
			<td>
				<button onclick="location.href='adminUserListPro.jsp?index2=<%=i%>'">삭제</button>
			</td>
		</tr>
	<%
		}
	%>
			</table>
			
			<a href="main.jsp">뒤로가기</a>
		</div>
	
</body>
</html>