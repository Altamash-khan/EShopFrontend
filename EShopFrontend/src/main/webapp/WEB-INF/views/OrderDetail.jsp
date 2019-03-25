<%@include file="Header.jsp"%>

<table align="center" class="table table-bordered">
<tr><td colspan="5"><h3 align="center"><font face="timesnewroman" color="black">Your Order</font></h3></td></tr>
<tr>
	<td><font face="verdana" color="white">Product Name</font></td>
	<td><font face="verdana" color="white">Price</font></td>
	<td><font face="verdana" color="white">Quantity</font></td>
	<td><font face="verdana" color="white">Total Price</font></td>
</tr>
<c:forEach items="${cartItemList}" var="cartItemList">
<tr>
	<td><font face="timesnewroman" color="black">${cartItemList.productName }</font></td>
	<td><font face="timesnewroman" color="black">${cartItemList.price }</font></td>
	<td><font face="timesnewroman" color="black">${cartItemList.quantity }</font></td>
	<td><font face="timesnewroman" color="black">${cartItemList.quantity*cartItemList.price }</font></td>
</tr>
</c:forEach>
<tr>
	<td colspan="3"><font face="verdana" color="gold">Grand Total</font></td>
	<td><b><font face="timesnewroman" color="yellow">${grandTotalPrice}</font></b></td>
</tr>
<tr>
	<tr>
	<td colspan="3"><a href="<c:url value="/Cart"/>" class="btn btn-danger">Move To Cart</a></td>
	<td colspan="2"><a href="<c:url value="/Payment"/>" class="btn btn-primary">Proceed For Payment</a></td>
</tr>
</tr>
</table></body>
<%@include file="Footer.jsp" %>