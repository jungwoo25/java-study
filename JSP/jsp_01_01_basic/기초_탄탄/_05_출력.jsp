<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.util.ArrayList"%>
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
			
			String sql = "select * from dbsetting01";
			PreparedStatement ps = conn.prepareStatement(sql);
			
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()){
				String[] data = new String[2];
				
				data[0] = rs.getString(1);
				data[1] = rs.getString(2);
				
				list.add(data);
			}
			conn.commit();
			
			conn.close();
			ps.close();
			
			
			System.out.println("성공");
		}catch(Exception e){
			e.printStackTrace();
			System.out.println("오류");
		}
	%>
	
	<table border="1">
		<tr>
			<td>학번</td>
			<td>이름</td>
		</tr>
		<%for(int i = 0; i < list.size(); i++){ %>
			<tr>
				<td><%= list.get(i)[0] %></td>
				<td><%= list.get(i)[1] %></td>
			</tr>
		<%
			}
		%>
	</table>
</body>
</html>