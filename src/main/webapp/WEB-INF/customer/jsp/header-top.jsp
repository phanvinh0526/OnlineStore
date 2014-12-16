<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<spring:url value="/resources/customer" var="resourceUrl"/>

<div id="welcomeLine" class="row">
	<div class="span6">Welcome!<strong> ${not empty account ? account.fullname : "Guest"}</strong></div>
	<div class="span6">
	<div class="pull-right">
		<a href="template/product_summary.html"><span class="">Fr</span></a>
		<a href="template/product_summary.html"><span class="">Es</span></a>
		<span class="btn btn-mini">En</span>
		<a href="template/product_summary.html"><span>&pound;</span></a>
		<span class="btn btn-mini">$155.00</span>
		<a href="template/product_summary.html"><span class="">$</span></a>
		<a href="template/product_summary.html">
			<span class="btn btn-mini btn-primary">
				<i class="icon-shopping-cart icon-white"></i> [ 3 ] Itemes in your cart 
			</span>
		</a> 
	</div>
	</div>
</div>