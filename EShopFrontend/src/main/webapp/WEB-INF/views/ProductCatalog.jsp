<%@include file="Header.jsp"%>
<div class="container">
	<div class="row">
		<c:forEach items="${productList}" var="product">
			<div class="column">
				<div class="col-md-4 col-xs-12 col-sm-6">
				<div class="thumbnail">
						<h4>
					<span data-toggle="tooltip" title="Bootstrap version"><font face="timesnewroman" color="gold">${product.productName}&nbsp;
								Rs.${product.price}/-</font></span>
				</h4>
						<img src="<c:url value="/resources/${product.productId}.jpg"/>"width="250" height="250" alt="Image Not Supported"/> 
							<a href="<c:url value="/ProductDisplay/${product.productId}"/>"
					class="btn btn-primary" role="button">View Product</a>
		     		<div class="clearfix"></div>
					</div>
				</div>
			</div>
		</c:forEach>
	</div>
</div></body>
<%@include file="Footer.jsp" %>