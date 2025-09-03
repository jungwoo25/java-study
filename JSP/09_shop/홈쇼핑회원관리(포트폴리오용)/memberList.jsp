<%@page import="java.util.ArrayList"%>
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
</head>
<body>
<%
	ArrayList<String[]> list = new ArrayList<String[]>();
	try{
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String id = "system";
		String pw = "1234";
		
		Class.forName("oracle.jdbc.OracleDriver");
		Connection conn = DriverManager.getConnection(url, id, pw);
		
		String sql = "select * from member_tbl_02";
		PreparedStatement ps = conn.prepareStatement(sql);
		
		ResultSet rs = ps.executeQuery();
		while(rs.next()){
			String[] data = new String[7];
			
			data[0] = rs.getString(1);
			data[1] = rs.getString(2);
			data[2] = rs.getString(3);
			data[3] = rs.getString(4);
			
			String str = rs.getString(5);
			String year = str.substring(0,4);
			String month = str.substring(5,7);
			String day = str.substring(8,10);
			data[4] = year + "년" + month + "월" + day;
			
			data[5] = rs.getString(6);
			if(data[5].equals("A")){
				data[5] = "VIP";
			}else if(data[5].equals("B")){
				data[5] = "일반";
			}else if(data[5].equals("C")){
				data[5] = "직원";
			}
			
			data[6] = rs.getString(7);
			if(data[6].equals("01")){
				data[6] = "서울";
			}else if(data[6].equals("10")){
				data[6] = "인천";
			}else if(data[6].equals("20")){
				data[6] = "성남";
			}else if(data[6].equals("30")){
				data[6] = "대전";
			}else if(data[6].equals("40")){
				data[6] = "광주";
			}else if(data[6].equals("60")){
				data[6] = "부산";
			}
			
			list.add(data);
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
		<h1>회원목록조회/수정/삭제</h1>
		<table border="1">
			<tr>
				<th>회원번호</th>
				<th>회원성명</th>
				<th>전화번호</th>
				<th>통신사</th>
				<th>가입일자</th>
				<th>고객등급</th>
				<th>거주지역</th>
				<th>삭제</th>
			</tr>
		<%for(int i = 0; i < list.size(); i++){ %>
			<tr align="center">
				<td>
					<a href="updateMember.jsp?custno=<%=list.get(i)[0]%>"><%=list.get(i)[0] %></a>
				</td>
				<td><%=list.get(i)[1] %></td>
				<td><%=list.get(i)[2] %></td>
				<td><%=list.get(i)[3] %></td>
				<td><%=list.get(i)[4] %></td>
				<td><%=list.get(i)[5] %></td>
				<td><%=list.get(i)[6] %></td>
				<td><button onclick="window.location.href='memberListDeletePro.jsp?custno=<%=list.get(i)[0]%>'">삭제</button></td>
			</tr>
		<%} %>
		</table>
	</div>
	
	<jsp:include page="footer.jsp" />
</body>
</html>