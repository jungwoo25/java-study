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
	
	 
	Object obj = session.getAttribute("check");
	String check = (String)obj;
	 
	 
	 
	if(check.equals("logout")){
	%>
		<div align="center">
		<h1>메인페이지</h1>
		<a href="insert.jsp">회원가입</a> <a href="loginForm.jsp">로그인</a>
	
		</div>
	<%	
	}else if(check.equals("login")){
	%>
		<div align="center">
		<h1>메인페이지</h1>
		<a href="logout.jsp">로그아웃</a> <a href="UpdateForm.jsp">회원정보수정</a> <a href="delete.jsp">회원탈퇴</a>
	
		</div>
	<%
	}else if(check.equals("adminLogin")){
	%>
		<div align="center">
		<h1>메인페이지</h1>
		<a href="logout.jsp">로그아웃</a><br>
		<a href="adminUserList.jsp">회원관리</a>
	
		</div>
	<%
	}
	%>
	
</body>
</html>