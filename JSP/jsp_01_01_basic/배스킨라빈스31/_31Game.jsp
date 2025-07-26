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
		String state = request.getParameter("state");
		int score = 0;
		int player = 1;
	
		if(state.equals("gamestart")){
			 score = 0;
			 player = 1;
		}else if(state.equals("gameplaying")){
			score = Integer.parseInt(request.getParameter("score"));
			player = Integer.parseInt(request.getParameter("player"));
			if(player == 1){
				player = 2;
			}else{
				player = 1;
			}
		}
	%>
	<h1>배스킨라빈스31</h1>
	<h2>31이상이면 패배</h2>
	<h2>현재 스코어 : <%=score %></h2>
	<h1>Player <%=player %> 차례</h1><br>
	
	<button onclick="window.location.href='_31GamePro.jsp?score=<%=score+1%>&player=<%=player%>&state=<%=state%>'"><%=score+1 %></button>
	<button onclick="window.location.href='_31GamePro.jsp?score=<%=score+2%>&player=<%=player%>&state=<%=state%>'"><%=score+2 %></button>
	<button onclick="window.location.href='_31GamePro.jsp?score=<%=score+3%>&player=<%=player%>&state=<%=state%>'"><%=score+3 %></button>
</body>
</html>