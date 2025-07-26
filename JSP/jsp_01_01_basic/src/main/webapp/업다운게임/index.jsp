<%@page import="java.util.Random"%>
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
		Random ran = new Random();
		
		int r = ran.nextInt(100) + 1;
	%>
	 <h1>업다운게임</h1>
	 <a href="gamePlay.jsp?r=<%=r%>">게임시작</a>
	 
</body>
</html>