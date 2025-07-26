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
	
	request.setCharacterEncoding("UTF-8");
	
	Object obj = session.getAttribute("noList");
	String[] noList = (String[])obj;
	
	obj = session.getAttribute("writer");
	String[] writer = (String[])obj;
	
	obj = session.getAttribute("subjectList");
	String[] subjectList = (String[])obj;
	
	obj = session.getAttribute("regDateList");
	String[] regDateList = (String[])obj;
	
	obj = session.getAttribute("contentsList");
	String[] contentsList = (String[])obj;
	
	obj = session.getAttribute("lastNum");
	int lastNum = (int)obj;
	
	obj = session.getAttribute("count");
	int count = (int)obj;
	
	
		int 한페이지수 = 5;
		int 현재페이지 = 1;
		
		if(request.getParameter("현재페이지") != null){
			현재페이지 = Integer.parseInt(request.getParameter("현재페이지"));
		}
		
		int 시작번호 = (현재페이지 - 1) * 한페이지수;
		int 마지막번호 = 시작번호 + 한페이지수;
		
		if(마지막번호 > count){
			마지막번호 = count;
		}
		
	%>
	<h3>전체 게시글 수 : <%=count %></h3>
	<table border="1">
	<tr>
			<th>번호</th>
			<th>작성자</th>
			<th>작성일</th>
			<th>제목</th>
			<th>내용</th>
			<th>삭제</th>
		</tr>
	<%
		for(int i = 시작번호; i < 마지막번호; i++){
	%>
		<tr>
			<td><%=noList[i] %></td>
			<td><%=writer[i] %></td>
			<td><%=regDateList[i] %></td>
			<td><%=subjectList[i] %></td>
			<td><%=contentsList[i] %></td>
			<td>
				<button onclick="window.location.href='pagingDelete.jsp?index=<%=i%>'">삭제하기</button>
			</td>
		</tr>
	<%
		}
	%>
		<tr>
			<td colspan="6" align="center">
				<button onclick="window.location.href='main.jsp'">메인화면</button>
			</td>
		</tr>
	</table>
	<%
		int 전체페이지 = count / 한페이지수;
		if(count % 한페이지수 > 0){
			전체페이지 += 1;
		}
		
		int 한페이지에보여줄페이지 = 3;
		int 페이지시작번호 = 1;
		if(request.getParameter("페이지시작번호") != null){
			페이지시작번호 = Integer.parseInt(request.getParameter("페이지시작번호"));
		}
		int 페이지마지막번호 = 한페이지에보여줄페이지 + 페이지시작번호 - 1;
		if(페이지마지막번호 > 전체페이지){
			페이지마지막번호 = 전체페이지;
		}
	%>
	<%	if(페이지시작번호 > 한페이지에보여줄페이지){	%>
	
		<a href="paging.jsp?페이지시작번호=<%=페이지시작번호 - 한페이지에보여줄페이지%>&현재페이지=<%=페이지시작번호-1%>">이전</a>
		
	<% }	%>
	<%for(int i = 페이지시작번호; i <= 페이지마지막번호; i++){ %>
		<a href="paging.jsp?현재페이지=<%=i%>&페이지시작번호=<%=페이지시작번호%>">[<%=i%>]</a>
	<%} %>
	
	<%if(페이지마지막번호 < 전체페이지){ %>
		<a href="paging.jsp?페이지시작번호=<%=페이지시작번호 + 한페이지에보여줄페이지%>&현재페이지=<%=페이지시작번호+한페이지에보여줄페이지%>">이후</a>
	<%} %>
	
	
</body>
</html>