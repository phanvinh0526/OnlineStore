<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<spring:url value="/resources/customer" var="resourceUrl"/>

<form class="form-inline navbar-search" method="post" action="products.html" >
	<input id="" class="srchTxt" type="text" style="height: 30px"/>
	<select class="srchTxt">
		<option>All</option>
		<option>CLOTHES </option>
		<option>FOOD AND BEVERAGES </option>
		<option>HEALTH & BEAUTY </option>
		<option>SPORTS & LEISURE </option>
		<option>BOOKS & ENTERTAINMENTS </option>
	</select> 
  	<button type="submit" id="submitButton" class="btn btn-primary">Go</button>
</form>