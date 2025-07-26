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
		int game = Integer.parseInt(request.getParameter("game"));
		int score = Integer.parseInt(request.getParameter("score"));
		int count = Integer.parseInt(request.getParameter("count"));
		
		String result = "";
		int stage = 1;
		
		if(r % 2 == 0 && game == 0){
			result = "정답";
			score += 20;
		}else if(r % 2 == 1 && game == 1){
			result = "정답";
			score += 20;
		}else{
			result = "오답";
		}
		
		if(count == 5){
			stage = 2;
		}
				
	%>
	
	<h1>[<%=count %>]번째 게임 : [<%=score %>]점</h1>
	<h1><%=result %></h1>
	<%
		if(stage == 1){
	%>
		<a href="coinGame.jsp?count=<%=count+1%>&score=<%=score%>">뒤로가기</a>
	<%
		}else if(stage == 2){
	%>
		<h1>종료</h1>
		<a href="index.jsp">처음부터</a>
	<%
		}
	%>
</body>
</html>