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
		int myAnswer = Integer.parseInt(request.getParameter("myAnswer"));
		
		
		String result = "";
		int stage = 1;
		
		if(r < myAnswer){
			result = "내가 크다.";
		}else if(r > myAnswer){
			result = "내가 작다.";
		}else if(r == myAnswer){
			result = "정답입니다.";
			stage = 2;
		}
		
		if(stage == 1){
	%>
		<%=result %><br>
		<a href="gamePlay.jsp?r=<%=r%>">뒤로가기</a>
	<%
		}else if(stage == 2){
	%>
		<%=result %><%=r %><br>
		<a href="index.jsp">처음으로</a>
	<%
		}
	%>
</body>
</html>