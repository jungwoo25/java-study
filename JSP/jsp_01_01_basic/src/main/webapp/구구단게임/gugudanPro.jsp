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
		int answer = Integer.parseInt(request.getParameter("answer"));
		int result = Integer.parseInt(request.getParameter("result"));
		int count = Integer.parseInt(request.getParameter("count"));
		int score = Integer.parseInt(request.getParameter("score"));
		
		
		String temp = "";
		int stage = 1;
		
		if(answer == result){
			temp = "정답";
			score += 20;
		}else{
			temp = "오답";
		}
		
		if(count == 5){
			stage=2;
		}
		
		
		if(stage == 1){
	%>	
		<h1>[<%=count %>]번째 게임 : <%=score %>점</h1>
		<h1><%=temp %></h1>
		<a href="gugudan.jsp?score=<%=score%>&count=<%=count+1%>">뒤로가기</a>
	<%
		}else if(stage == 2){
	%>
		<h1>[<%=count %>]번째 게임 : <%=score %>점</h1>
		<h1><%=temp %></h1>
		<a href="index.jsp">처음부터</a>
	<%
		}
	%>
	
	
	
	
</body>
</html>