<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	int index = Integer.parseInt(request.getParameter("index"));

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
	
	int discountPrice = itemPriceList[index] - itemPriceList[index] * itemDiscountList[index] / 100;
%>
<div align="center">
<form action="04_itemPro.jsp" method="post">
	<table>
		<tr height="80px">
			<td rowspan="6" width="350px" align="center">
				<img alt="상품이미지" src="img/<%=itemImageList[index]%>" height="350px">
			</td>
			<td width="400px" colspan="3">
				<font size="5"><b><%=itemNameList[index] %></b></font><br>
				<font size="2"><%=itemInfoList[index] %></font>
			</td>
		</tr>
		<tr height="80px">
			<td width="400px" colspan="3">
			
			<%if(itemDiscountList[index] > 0){ %>
			<font size="3" style="text-decoration: line-through;"><b><%=itemPriceList[index] %>원</b></font>
			→
			<font size="4" color="purple"><b><%=discountPrice %>원</b></font>
			<br>
			<font size="2" color="purple">로그인 후 적립혜택이 적용됩니다.</font>
			<%}else{ %>
				<font size="3"><b><%=itemPriceList[index] %>원</b></font>
			<%} %>
			
			</td>
		</tr>
		<tr height="50px">
			<td width="100px"><font size="2"><b>판매단위</b></font></td>
			<td width="300px"><font size="2">1개</font></td>
		</tr>
		<tr height="50px">
			<td width="100px"><font size="2"><b>배송방법</b></font></td>
			<td width="300px"><font size="2">샛별배송/택배배송</font></td>
		</tr>
		<tr height="50px">
			<td width="100px"><font size="2"><b>포장타입</b></font></td>
			<td width="300px"><font size="2">상온/종이포장</font><br><font size="1" color="gray">택배배송은 에코포장이 스티로폼으로 대체됩니다.</font></td>
		</tr>
		<tr height="50px">
			<td width="100px"><font size="2"><b>구매수량</b></font></td>
			<td width="300px"><input type="number" min="1" max="100" value="1" name="buyCount"></td>
		</tr>
		<tr>
			<td colspan="3" align="right">
				<input type="hidden" name="itemNumber" value="<%=itemNumberList[index]%>">
				<input type="image" src="img/07_sendcart.PNG" height="50px">
			</td>
		</tr>
	</table>
	</form>
</div>