<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script>
	function checkValue(){
		
		let formData = document.formData;
		
		alert("수정이 완료되었습니다.");
		formData.submit();
		
	}
</script>
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

	int index = Integer.parseInt(request.getParameter("index"));
%>

	<h1>게시글 수정하기</h1>
	<form name="formData" action="allPageUpdatePro.jsp" method="post" onsubmit="return false">
		<table border="1">
			<tr>
				<th>번호</th>
				<td colspan="3"><%=noList[index] %></td>
			</tr>
			<tr>
				<th>작성자</th>
				<td><%=writer[index] %></td>
				<th>작성일</th>
				<td><%=regDateList[index] %></td>
			</tr>
			<tr>
				<th>제목</th>
				<td colspan="3"><input type="text" size="40" value="<%=subjectList[index] %>" name="subjectList"></td>
			</tr>
			<tr>
				<th>내용</th>
				<td><textarea rows="10" cols="40" name="contentsList"><%=contentsList[index] %></textarea></td>
			</tr>
			<tr>
				<td colspan="4" align="center">
					<input type="hidden" name="index" value="<%=index%>">
					<button onclick="checkValue()">수정하기</button>
					<button onclick="window.location.href='allPage.jsp'">뒤로가기</button>
				</td>
			</tr>
		</table>
	</form>
	
</body>
</html>