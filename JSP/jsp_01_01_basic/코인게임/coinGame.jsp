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
		int score = Integer.parseInt(request.getParameter("score"));
		int count = Integer.parseInt(request.getParameter("count"));
		
		Random ran = new Random();
		
		int r = ran.nextInt(11);
		
	%>
	치트키 : <%=r %> <br>
	
	<h1>홀짝게임</h1>
	<h1>5문제를 맞추면 종료</h1>
	<h1>[<%=count %>]번쨰 게임 : [<%=score %>]점</h1>
	
	<button onclick="window.location.href='coinGamePro.jsp?r=<%=r%>&game=1&score=<%=score%>&count=<%=count%>'">홀</button>
	<button onclick="window.location.href='coinGamePro.jsp?r=<%=r%>&game=0&score=<%=score%>&count=<%=count%>'">짝</button>
</body>
</html>