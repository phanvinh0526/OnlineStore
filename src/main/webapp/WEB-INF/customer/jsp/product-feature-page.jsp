<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<spring:url value="/resources/customer" var="resourceUrl"/>

<!-- List 4 Product Acivated -->
<div class="item active">
  <ul class="thumbnails">
	<li class="span3">
	  <div class="thumbnail">
	  <i class="tag"></i>
		<a href="template/product_details.html"><img src="${resourceUrl}/images/products/b1.jpg" alt=""></a>
		<div class="caption">
		  <h5>Product name</h5>
		  <h4><a class="btn" href="template/product_details.html">VIEW</a> <span class="pull-right">$222.00</span></h4>
		</div>
	  </div>
	</li>
	<li class="span3">
	  <div class="thumbnail">
	  <i class="tag"></i>
		<a href="template/product_details.html"><img src="${resourceUrl}/images/products/b2.jpg" alt=""></a>
		<div class="caption">
		  <h5>Product name</h5>
		  <h4><a class="btn" href="template/product_details.html">VIEW</a> <span class="pull-right">$222.00</span></h4>
		</div>
	  </div>
	</li>
	<li class="span3">
	  <div class="thumbnail">
	  <i class="tag"></i>
		<a href="template/product_details.html"><img src="${resourceUrl}/images/products/b3.jpg" alt=""></a>
		<div class="caption">
		  <h5>Product name</h5>
		   <h4><a class="btn" href="template/product_details.html">VIEW</a> <span class="pull-right">$222.00</span></h4>
		</div>
	  </div>
	</li>
	<li class="span3">
	  <div class="thumbnail">
	  <i class="tag"></i>
		<a href="template/product_details.html"><img src="${resourceUrl}/images/products/b4.jpg" alt=""></a>
		<div class="caption">
		  <h5>Product name</h5>
		   <h4><a class="btn" href="template/product_details.html">VIEW</a> <span class="pull-right">$222.00</span></h4>
		</div>
	  </div>
	</li>
  </ul>
</div>
<!-- List 4 Product Unacivated -->
<div class="item">
	<ul class="thumbnails">
		<li class="span3">
		  <div class="thumbnail">
		  <i class="tag"></i>
			<a href="template/product_details.html"><img src="${resourceUrl}/images/products/5.jpg" alt=""></a>
			<div class="caption">
			  <h5>Product name</h5>
			  <h4><a class="btn" href="template/product_details.html">VIEW</a> <span class="pull-right">$222.00</span></h4>
			</div>
		  </div>
		</li>
		<li class="span3">
		  <div class="thumbnail">
		  <i class="tag"></i>
			<a href="template/product_details.html"><img src="${resourceUrl}/images/products/6.jpg" alt=""></a>
			<div class="caption">
			  <h5>Product name</h5>
			  <h4><a class="btn" href="template/product_details.html">VIEW</a> <span class="pull-right">$222.00</span></h4>
			</div>
		  </div>
		</li>
		<li class="span3">
		  <div class="thumbnail">
			<a href="template/product_details.html"><img src="${resourceUrl}/images/products/7.jpg" alt=""></a>
			<div class="caption">
			  <h5>Product name</h5>
			   <h4><a class="btn" href="template/product_details.html">VIEW</a> <span class="pull-right">$222.00</span></h4>
			</div>
		  </div>
		</li>
		<li class="span3">
		  <div class="thumbnail">
			<a href="template/product_details.html"><img src="${resourceUrl}/images/products/8.jpg" alt=""></a>
			<div class="caption">
			  <h5>Product name</h5>
			   <h4><a class="btn" href="template/product_details.html">VIEW</a> <span class="pull-right">$222.00</span></h4>
			</div>
		  </div>
		</li>
	</ul>
</div>