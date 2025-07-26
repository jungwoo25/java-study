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
	
		int score = Integer.parseInt(request.getParameter("score"));
		int player = Integer.parseInt(request.getParameter("player"));
		
		state = "gameplaying";
		
		if(score >= 31){
			state = "gameover";
		}
	%>
	
	<h2>현재스코어 : <%=score %></h2>
	<h1>P<%=player %> 차례</h1>
	
	
	<%
		if(state.equals("gameplaying")){
	%>
		
		<a href="_31Game.jsp?score=<%=score%>&player=<%=player%>&state=<%=state%>">뒤로가기</a>
	<%			
		}else if(state.equals("gameover")){
			if(player == 1){
				player = 2;
			}else if(player == 2){
				player = 1;
			}
	%>
		<h1>PLAYER <%=player %> 승리</h1>
		<a href="index.jsp">처음으로</a>
	<%
		}
	%>
</body>
</html>