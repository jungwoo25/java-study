<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script>
	function checkValue(){
		
		let formData = document.formData
		
		alert("정상적으로 작성 완료되었습니다.");
		formData.submit();
	}
</script>
</head>
<body>
	<%
		Object obj = session.getAttribute("lastNum");
		int lastNum = (int)obj;
		
		lastNum += 1;
		
	%>
	<h1>게시글 추가하기</h1>
	<form action="addPro.jsp" method="post" onsubmit="return false;" name="formData">
		<table border="1">
			<tr>
				<th>번호</th>
				<td><%=lastNum %></td>
			</tr>
			<tr>
				<th>작성자</th>
				<td><input type="text" name="writerName"></td>
			</tr>
			<tr>
				<th>제목</th>
				<td><input type="text" name="subject"></td>
			</tr>
			<tr>
				<th>내용</th>
				<td><textarea cols="30" rows="10" name="contents"></textarea></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<button onclick="checkValue()">작성완료</button>
					<button onclick="window.location.href='main.jsp'">뒤로가기</button>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>