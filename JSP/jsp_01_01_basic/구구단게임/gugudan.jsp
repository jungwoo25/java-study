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
		int count = Integer.parseInt(request.getParameter("count"));
		int score = Integer.parseInt(request.getParameter("score"));
		
		
		Random ran = new Random();
		
		int r1 = ran.nextInt(8) + 2; // 2~9;
		int r2 = ran.nextInt(9) + 1; // 1~9;
		int answer = r1 * r2;
	%>
	<h1>구구단게임</h1>
	<h1>구구단 5문제 풀기</h1>
	<h3><%=count %> 게임 : [<%=score %>]점</h3>
	
	<form action="gugudanPro.jsp" method="post">
		
		<%=r1 %> X <%=r2 %> = <input type="text" name="result" autofocus>
		<input type="hidden" name="count" value="<%=count %>">
		<input type="hidden" name="score" value="<%=score %>">
		<input type="hidden" name="answer" value="<%=answer %>">
		<input type="submit" value="확인">	
		
	</form>
	
	
	
</body>
</html>