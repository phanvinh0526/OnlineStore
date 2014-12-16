<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<spring:url value="/resources/customer" var="resourceUrl"/>

<div class="thumbnail">
	<img src="${resourceUrl}/images/products/panasonic.jpg" alt="Bootshop panasonoc New camera"/>
	<div class="caption">
	  <h5>Panasonic</h5>
		<h4 style="text-align:center"><a class="btn" href="template/product_details.html"> <i class="icon-zoom-in"></i></a> <a class="btn" href="#">Add to <i class="icon-shopping-cart"></i></a> <a class="btn btn-primary" href="#">$222.00</a></h4>
	</div>
</div>
<br/>
<div class="thumbnail">
	<img src="${resourceUrl}/images/products/kindle.png" title="Bootshop New Kindel" alt="Bootshop Kindel">
	<div class="caption">
	  <h5>Kindle</h5>
		<h4 style="text-align:center"><a class="btn" href="template/product_details.html"> <i class="icon-zoom-in"></i></a> <a class="btn" href="#">Add to <i class="icon-shopping-cart"></i></a> <a class="btn btn-primary" href="#">$222.00</a></h4>
	</div>
</div>
<br/>
<div class="thumbnail">
	<img src="${resourceUrl}/images/payment_methods.png" title="Bootshop Payment Methods" alt="Payments Methods">
	<div class="caption">
	  <h5>Payment Methods</h5>
	</div>
</div>