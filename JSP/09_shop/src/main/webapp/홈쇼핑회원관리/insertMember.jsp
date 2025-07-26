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
		let formData = document.formData;
		
		if(!formData.custname.value){
			alert("회원이름이 입력되지 않았습니다.");
			formData.custname.focus();
		}else if(!formData.phone.value){
			alert("전화번호가 입력되지 않았니다.");
			formData.phone.focus();
		}else if(!formData.joindate.value){
			alert("가입일자가 입력되지 않았습니다.");
			formData.joindate.focus();
		}else if(!formData.grade.value){
			alert("등급이 입력되지 않았습니다.");
			formData.grade.focus();
		}else if(!formData.city.value){
			alert("도시코드가 입력되지 않았습니다.");
			formData.city.focus();
		}else{
			alert("회원정보가 정상적으로 등록되었습니다.");
			formData.submit();
		}
	}
</script>
</head>
<body>
<%
	int custno = 0;
	String joindate = "";
	
	try{
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String id = "system";
		String pw = "1234";
		
		Class.forName("oracle.jdbc.OracleDriver");
		Connection conn = DriverManager.getConnection(url, id, pw);
		
		String sql = "select max(custno)+1 from member_tbl_02";
		PreparedStatement ps = conn.prepareStatement(sql);
		
		ResultSet rs = ps.executeQuery();
		while(rs.next()){
			custno = rs.getInt(1);
		}
		
		
		rs.close();
		ps.close();
		conn.close();
	}catch(Exception e){
		e.printStackTrace();
		System.out.println("실패");
	}
%>
	<jsp:include page="header.jsp" />
	<jsp:include page="nav.jsp" />
	
	<div align="center">
		<h1>홈쇼핑 회원 등록</h1>
		<form name="formData" action="insetMemberPro.jsp" method="post" onsubmit="return false;">
			<table border="1">
				<tr>
					<th>회원번호(자동발생)</th>
					<td><input type="text" value="<%=custno%>" name="custno" readonly></td>
				</tr>
				<tr>
					<th>회원성명</th>
					<td><input type="text" name="custname"></td>
				</tr>
				<tr>
					<th>회원전화</th>
					<td><input type="text" name="phone"></td>
				</tr>
				<tr>
					<th>통신사 [SK,KT,LG]</th>
					<td>
						<input type="radio" name="address" value="SK" id="SK" checked> 
						<label for="SK">SK</label>&nbsp;&nbsp;
						<input type="radio" name="address" value="KT" id="KT"> 
						<label for="KT">KT</label>&nbsp;&nbsp;
						<input type="radio" name="address" value="LG" id="LG"> 
						<label for="LG">LG</label>&nbsp;&nbsp;
					</td>
				</tr>
				<tr>
					<th>가입일자</th>
					<td><input type="text" name="joindate"></td>
				</tr>
				<tr>
					<th>고객등급[A:VIP / B:일반 / C:직원]</th>
					<td><input type="text" name="grade"></td>
				</tr>
				<tr>
					<th>도시코드</th>
					<td><input type="text" name="city"></td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<button onclick="checkValue()">등록</button>
						<button onclick="window.location.href='#'">조회</button>
					</td>
				</tr>
			</table>
		</form>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>