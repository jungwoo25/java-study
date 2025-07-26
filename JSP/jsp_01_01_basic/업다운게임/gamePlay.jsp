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
		int r = Integer.parseInt(request.getParameter("r"));
	%>
	치트키 : <%=r %><br>
	
	<h1>업다운게임</h1>
	
	<form action="gamePlayPro.jsp" method="post">
		<input type="hidden" name="r" value="<%=r%>">
		<input type="text" name="myAnswer" autofocus>
		<input type="submit" value="확인">
	</form>
</body>
</html>