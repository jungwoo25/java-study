<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	function checkValue(){
		
		alert("수정이 완료되었습니다.");
		document.formData.submit();
	}
</script>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	
	int custno = Integer.parseInt(request.getParameter("custno"));
	String[] data = new String[7];
	try{
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String id = "system";
		String pw = "1234";
		
		Class.forName("oracle.jdbc.OracleDriver");
		Connection conn = DriverManager.getConnection(url, id, pw);
		
		String sql = "select * from member_tbl_02 where custno=?";
		PreparedStatement ps = conn.prepareStatement(sql);
		
		ps.setInt(1, custno);
		ResultSet rs = ps.executeQuery();
		
		while(rs.next()){
			data[0] = rs.getString(1);
			data[1] = rs.getString(2);
			data[2] = rs.getString(3);
			data[3] = rs.getString(4);
			
			String str = rs.getString(5);
			String year = str.substring(0,4);
			String month = str.substring(5,7);
			String day = str.substring(8,10);
			data[4] = year + "-" + month + "-" + day;
			
			data[5] = rs.getString(6);
			data[6] = rs.getString(7);
		}
		ps.close();
		conn.close();
	}catch(Exception e){
		e.printStackTrace();
	}
%>
	<jsp:include page="header.jsp" />
	<jsp:include page="nav.jsp" />
	
	<div align="center">
		<h1>홈쇼핑 회원정보 수정</h1>
		<form name="formData" action="updateMemberPro.jsp" method="post" onsubmit="return false;">
		<table border="1">
			<tr>
				<th>회원번호</th>
				<td><input type="text" value="<%=data[0]%>" name="custno" readonly></td>
			</tr>
			<tr>
				<th>회원성명</th>
				<td><input type="text" value="<%=data[1]%>" name="custname"></td>
			</tr>
			<tr>
				<th>회원전화</th>
				<td><input type="text" value="<%=data[2]%>" name="phone"></td>
			</tr>
			<tr>
				<th>통신사[SK, KT, LG]</th>
				<td>
					<%if("SK".equals(data[3])){ %>
						<input type="radio" value="SK" name="address" id="SK" checked>
						<label for="SK">SK</label>
						<input type="radio" value="KT" name="address" id="KT">
						<label for="KT">KT</label>
						<input type="radio" value="LG" name="address" id="LG">
						<label for="LG">LG</label>
					<%}else if("KT".equals(data[3])){ %>
						<input type="radio" value="SK" name="address" id="SK">
						<label for="SK">SK</label>
						<input type="radio" value="KT" name="address" id="KT" checked>
						<label for="KT">KT</label>
						<input type="radio" value="LG" name="address" id="LG">
						<label for="LG">LG</label>
					<%}else if("LG".equals(data[3])){ %>
						<input type="radio" value="SK" name="address" id="SK">
						<label for="SK">SK</label>
						<input type="radio" value="KT" name="address" id="KT">
						<label for="KT">KT</label>
						<input type="radio" value="LG" name="address" id="LG" checked>
						<label for="LG">LG</label>
					<%} %>
				</td>
			</tr>
			<tr>
				<th>가입일자</th>
				<td><input type="date" value="<%=data[4]%>" name="joindate"></td>
			</tr>
			<tr>
				<th>고객등급</th>
				<td><input type="text" value="<%=data[5]%>" name="grade"></td>
			</tr>
			<tr>
				<th>도시코드</th>
				<td><input type="text" value="<%=data[6]%>" name="city"></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<button type="button" onclick="checkValue()">수정</button>
					<button onclick="window.location.href='memberList.jsp'">조회</button>
				</td>
			</tr>
		</table>
		</form>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>