<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.ArrayList"%>
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
<jsp:include page="header.jsp" />
<jsp:include page="nav.jsp" />
<%
	ArrayList<String[]> list = new ArrayList<String[]>();
	try{
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String id = "system";
		String pw = "1234";
		
		Class.forName("oracle.jdbc.OracleDriver");
		Connection conn = DriverManager.getConnection(url, id, pw);
		
		String sql = "select mem.custno, mem.custname, mem.grade, SUM(mon.price) ";
				sql += "from member_tbl_02 mem, money_tbl_02 mon ";
				sql += "where mem.custno = mon.custno ";
				sql += "group by mem.custno, mem.custname, mem.grade ";
				sql += "order by SUM(mon.price) desc";
		PreparedStatement ps = conn.prepareStatement(sql);
		
		ResultSet rs = ps.executeQuery();
		while(rs.next()){
			String[] data = new String[4];
			
			data[0] = rs.getString(1);
			data[1] = rs.getString(2);
			
			String grade = rs.getString(3);
			if("A".equals(grade)){
				grade = "VIP";
			}else if("B".equals(grade)){
				grade = "일반";
			}else if("C".equals(grade)){
				grade = "직원";
			}
			data[2] = grade;
			
			data[3] = rs.getString(4);
			
			list.add(data);
		}
		ps.close();
		conn.close();
		
	}catch(Exception e){
		e.printStackTrace();
		out.print("<h1>오류가발생했습니다<h1>");
	}
%>
<div align="center">
	<h1>회원매출조회</h1>
	<table border="1">
		<tr>
			<th>회원번호</th>
			<th>회원성명</th>
			<th>고객등급</th>
			<th>매출</th>
		</tr>
		<%for(int i = 0; i < list.size(); i++){ %>
			<tr align="center">
				<td><%=list.get(i)[0] %></td>
				<td><%=list.get(i)[1] %></td>
				<td><%=list.get(i)[2] %></td>
				<td><%=list.get(i)[3] %></td>
			</tr>
		<%} %>
	</table>
</div>
	
	
	<jsp:include page="footer.jsp" />
</body>
</html>