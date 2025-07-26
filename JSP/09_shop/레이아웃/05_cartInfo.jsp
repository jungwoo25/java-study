<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<div align="center">
	<h2>장바구니</h2>
	<hr size="2" color="purple" width="300px">
	<br>
	<table>
		<tr height="40px">
			<td width="50px" align="center">1</td>
			<td width="100px" align="center">
				<img alt="상품이미지" src="img/1.jpg" height="40px">
			</td>
			<td width="300px" align="center">
				<font size="3"><b>상품명</b></font>
			</td>
			<td width="100px" align="center">
				<font size="3"><b>1</b></font>
			</td>
			<td width="100px" align="center">
				<font size="3"><b>9000원</b></font>
			</td>
			<td width="40" align="center">
				<a href="05_cartDeletePro.jsp">
					<img alt="삭제버튼" src="img/delete.png">
				</a>
			</td>
		</tr>
	</table>
	<hr size="1" color="gray" width="680px">
	
	<form method="post" action="#">
		<table>
			<tr height="70px">
				<td width="480px" align="right">
					<font size="3"><b>총 상품금액</b></font>
				</td>
				<td width="200px" align="right">
					<font size="3"><b>17600원</b></font>
				</td>
			</tr>
			<tr height="70px">
				<td width="480px" align="right">
					<font size="3"><b>배송비</b></font>
				</td>
				<td width="200px" align="right">
					<font size="3"><b>3000원<br></b></font>
					<font size="2" color="purple">22400원 추가 주문 시, 무료배송</font>
					
				</td>
			</tr>
			<tr height="70px">
				<td width="480px" align="right">
					<font size="4"><b>총 결제금액</b></font></td>
				<td width="200px" align="right">
					<font size="4"><b>20600원</b></font>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="right">
					<input type="image" src="img/08_order.PNG">
				</td>
			</tr>
		</table>
	</form>
</div>
