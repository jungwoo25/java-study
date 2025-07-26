<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.ArrayList"%>
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
			
			String sql = "select p.p_gender, count(*) ";
				sql += "from tb04_patient p ";
				sql += "group by p.p_gender";
			
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()){
				String[] data = new String[2];
				
				data[0] = rs.getString(1);
				if(data[0] == "M"){
					data[0] = "남";
				}else{
					data[0] = "여";
				}
				data[1] = rs.getString(2);
				
				list.add(data);
			}
			
			conn.commit();
			
			conn.close();
			ps.close();
			
			
		}catch(Exception e){
			e.printStackTrace();
		}
	%>
	
	<table border="1">
		<tr>
			<td>성별</td>
			<td>수</td>
		</tr>
		<%for(int i = 0; i < list.size(); i++){ %>
		<tr>
			<td><%=list.get(i)[0] %></td>
			<td><%=list.get(i)[1] %></td>
				
			
		</tr>
		<%} %>
	</table>
</body>
</html>