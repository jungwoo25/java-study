<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	
	int itemSize = (int)(session.getAttribute("itemSize"));
	int[] itemNumberList = (int[])(session.getAttribute("itemNumberList"));
	String[] itemCategoryList = (String[])(session.getAttribute("itemCategoryList"));
	String[] itemNameList = (String[])(session.getAttribute("itemNameList"));
	int[] itemPriceList = (int[])(session.getAttribute("itemPriceList"));
	int[] itemStockList = (int[])(session.getAttribute("itemStockList"));
	String[] itemImageList = (String[])(session.getAttribute("itemImageList"));
	String[] itemInfoList = (String[])(session.getAttribute("itemInfoList"));
	int[] itemDiscountList = (int[])(session.getAttribute("itemDiscountList"));
	int[] itemSoldList = (int[])(session.getAttribute("itemSoldList"));
	
	
%>

<div align="center">
	<h2>전체상품</h2>
	<hr size="2" color="purple" width="300px">
	
	<table>
		<%for(int i = 0; i < itemSize; i++){ 
				int discountPrice = itemPriceList[i] - itemPriceList[i] * itemDiscountList[i] / 100; %>
			<%if(i % 3 == 0){ %>
				<tr>
			<%} %>
			<td align="center" width="400px">
			<a href="04_itemPage.jsp?index=<%=i%>">
				<%if(itemStockList[i] > 0){ %>
				<img alt="상품이미지" src="img/<%=itemImageList[i]%>" width="250px" height="250px">
			</a><br>
			<%}else{ %>
				<img alt="상품이미지" src="img/<%=itemImageList[i]%>" width="250px" height="250px" style="opacity:20%">
			<%} %>
			<p><font size="5"><b><%=itemNameList[i] %></b></font></p>
			
			<%if(itemStockList[i] > 0){ %>
				<%if(itemDiscountList[i] > 0){ %>
			<p><font size="4" style="text-decoration: line-through;"><%=itemPriceList[i] %>원</font>
			→ 
			<font size="4" color="purple"><%=discountPrice%>원</font></p>
				<%}else{ %>
					<p><font size="4"><%=itemPriceList[i] %>원</font></p>
				<%} %>
			<%}else{ %>
			<p><font size="4" color="red"><b>품절</b></font></p>
			<%} %>
			
			
			<%=itemInfoList[i]%>
			
			
			</td>
			<%if(i % 3 == 2){ %>
				</tr>
			<%} %>
		<%} %>
	</table>
</div>