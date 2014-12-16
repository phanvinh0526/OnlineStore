<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<spring:url value="/resources/customer" var="resourceUrl"/>

<div class="span3">
	<h5>ACCOUNT</h5>
	<a href="template/login.html">YOUR ACCOUNT</a>
	<a href="template/login.html">PERSONAL INFORMATION</a> 
	<a href="template/login.html">ADDRESSES</a> 
	<a href="template/login.html">DISCOUNT</a>  
	<a href="template/login.html">ORDER HISTORY</a>
</div>
<div class="span3">
	<h5>INFORMATION</h5>
	<a href="template/contact.html">CONTACT</a>  
	<a href="template/register.html">REGISTRATION</a>  
	<a href="template/legal_notice.html">LEGAL NOTICE</a>  
	<a href="template/tac.html">TERMS AND CONDITIONS</a> 
	<a href="template/faq.html">FAQ</a>
</div>
<div class="span3">
	<h5>OUR OFFERS</h5>
	<a href="#">NEW PRODUCTS</a> 
	<a href="#">TOP SELLERS</a>  
	<a href="template/special_offer.html">SPECIAL OFFERS</a>  
	<a href="#">MANUFACTURERS</a> 
	<a href="#">SUPPLIERS</a> 
</div>
<div id="socialMedia" class="span3 pull-right">
	<h5>SOCIAL MEDIA </h5>
	<a href="#"><img width="60" height="60" src="${resourceUrl}/images/facebook.png" title="facebook" alt="facebook"/></a>
	<a href="#"><img width="60" height="60" src="${resourceUrl}/images/twitter.png" title="twitter" alt="twitter"/></a>
	<a href="#"><img width="60" height="60" src="${resourceUrl}/images/youtube.png" title="youtube" alt="youtube"/></a>
 </div> 