<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%
	Object obj = session.getAttribute("log");
	String log = (String)obj;
	
	String name = "";
	if(log != null){
		obj = session.getAttribute("idList");
		String[] idList = (String[])obj;
		obj = session.getAttribute("nameList");
		String[] nameList = (String[])obj;
		obj = session.getAttribute("memberSize");
		int memberSize = (int)obj;
		
		for(int i = 0; i < memberSize; i++){
			if(log.equals(idList[i])){
				name = nameList[i];
			}
		}
		
	}
%>
	<div align="right">
	<%if(log == null){ %>
		<a href="#">회원가입</a>&nbsp;<img alt="메뉴선" src="img/01_top.jpg">&nbsp;
		<a href="02_loginPage.jsp">로그인</a>&nbsp;<img alt="메뉴선" src="img/01_top.jpg">&nbsp;
	<%}else{ %>
		<%=name %>님&nbsp;<img alt="메뉴선" src="img/01_top.jpg">&nbsp;
		<a href="#">주문확인</a>&nbsp;<img alt="메뉴선" src="img/01_top.jpg">&nbsp;
		<a href="02_logout.jsp">로그아웃</a>&nbsp;<img alt="메뉴선" src="img/01_top.jpg">&nbsp;
	<%} %>	
		
		<a href="#">고객센터</a>
	</div>
	
	
	<div align="center">
		<a href="00_mainPage.jsp"><img alt="로고" src="img/02_logo.png" height="90px"></a>
	</div>
	
	
	<div align="center">
		<table>
			<tr height="50px">
				<th width="180px">
					<a href="03_shopAllPage.jsp">전체상품 보기</a>
				</th>
				<th width="10px"><img alt="막대선" src="img/01_top.jpg"></th>
				<th width="180px">
					<a href="#">신상품</a>
				</th>
				<th width="10px"><img alt="막대선" src="img/01_top.jpg"></th>
				<th width="180px">
					<a href="#">베스트</a>
				</th>
				<th width="10px"><img alt="막대선" src="img/01_top.jpg"></th>
				<th width="180px">
					<a href="#">알뜰쇼핑</a>
				</th>
				<th width="10px"><img alt="막대선" src="img/01_top.jpg"></th>
				<th width="180px">
					<a href="#">이벤트</a>
				</th>
				<th width="10px"><img alt="막대선" src="img/01_top.jpg"></th>
				<th>
					<a href="05_cartPage.jsp"><img alt="쇼핑카트" src="img/03_cart.png" width="40px"></a>
				</th>
				
				
			</tr>
		</table>
	</div>
