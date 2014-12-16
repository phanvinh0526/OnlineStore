<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>

<!-- Prefix jsp Load -->
<spring:url value="/resources/customer" var="resourceUrl"/>
<spring:url value="/WEB-INF/customer/template" var="pageUrl"/>

<!-- Source HTML -->
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Bootshop online Shopping cart</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
	
<!-- Bootstrap style --> 
    <link id="callCss" rel="stylesheet" href="${resourceUrl}/bootshop/bootstrap.min.css" media="screen"/>
    <link href="${resourceUrl}/css/base.css" rel="stylesheet" media="screen"/>
<!-- Bootstrap style responsive -->	
	<link href="${resourceUrl}/css/bootstrap-responsive.min.css" rel="stylesheet"/>
	<link href="${resourceUrl}/css/font-awesome.css" rel="stylesheet" type="text/css">
<!-- Google-code-prettify -->	
	<link href="${resourceUrl}/js/google-code-prettify/prettify.css" rel="stylesheet"/>
<!-- fav and touch icons -->
    <link rel="shortcut icon" href="${resourceUrl}/images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="${resourceUrl}/images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="${resourceUrl}/images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="${resourceUrl}/images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="${resourceUrl}/images/ico/apple-touch-icon-57-precomposed.png">
	<style type="text/css" id="enject"></style>
  </head>
<body>
<div id="header">
	<div class="container">
		<!-- Top Header -->
		<tiles:insertAttribute name="top-header"/>
		
		<!-- Navbar ================================================== -->
		<div id="logoArea" class="navbar">
			<a id="smallScreen" data-target="#topMenu" data-toggle="collapse" class="btn btn-navbar">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</a>
			<div class="navbar-inner">
				<a class="brand" href="${resourceUrl}/layout.html"><img src="${resourceUrl}/images/logo.png" alt="Bootsshop"/></a>
				<!-- Search Engine -->
				<tiles:insertAttribute name="search-page"/>

				<!-- top-menu -->
				<ul id="topMenu" class="nav pull-right">
					<li class=""><a href="${pageUrl}/special_offer.html">Specials Offer</a></li>
					<li class=""><a href="${pageUrl}/normal.html">Delivery</a></li>
					<li class=""><a href="${pageUrl}/contact.html">Contact</a></li>
					<li class="">
					<a href="#login" role="button" data-toggle="modal" style="padding-right:0"><span class="btn btn-large btn-success">Login</span></a>
						<!-- Login Dialog -->
						<tiles:insertAttribute name="login-dialog"/>
					
					</li>
				</ul>
			</div>
		</div>
	</div>
</div>

<!-- Header End====================================================================== -->
<div id="carouselBlk">
	<!-- Banners -->
	<tiles:insertAttribute name="banners"/>
	 
</div>
<div id="mainBody">
	<div class="container">
	<div class="row">
		<!-- Sidebar ================================================== -->
		<div id="sidebar" class="span3">
			<!-- Cart -->
			<div class="well well-small">
				<a id="myCart" href="${pageUrl}/product_summary.html">
					<img src="${resourceUrl}/images/ico-cart.png" alt="cart"/>
					<span>3 Items in your cart  </span>
					<span class="badge badge-warning pull-right">$155.00</span>
				</a>
			</div>
			<!-- Slidebar Menu -->
			<ul id="sideManu" class="nav nav-tabs nav-stacked">
				<tiles:insertAttribute name="slidebar-menu"/>
				
			</ul>
			<br/>
			<!-- Slidebar Products -->
			<h2>Popular Products</h2>
			<tiles:insertAttribute name="slidebar-product"/>
			
		</div>
		
		<!-- Main Content =============================================== -->
		<div class="span9">
			<!-- content -->
			<tiles:insertAttribute name="content"/>
			
		</div>
	</div>
	</div>
</div>

<!-- Footer ================================================================== -->
	<div  id="footerSection">
		<div class="container">
			<div class="row">
				<!-- Footer -->
				<tiles:insertAttribute name="footer"/>
				
			</div>
			<p class="pull-right">&copy; Bootshop</p>
		</div><!-- Container End -->
	</div>
	
<!-- Placed at the end of the document so the pages load faster ============================================= -->
	<script src="${resourceUrl}/js/jquery.js" type="text/javascript"></script>
	<script src="${resourceUrl}/js/bootstrap.min.js" type="text/javascript"></script>
	<script src="${resourceUrl}/js/google-code-prettify/prettify.js"></script>
	
	<script src="${resourceUrl}/js/bootshop.js"></script>
    <script src="${resourceUrl}/js/jquery.lightbox-0.5.js"></script>
	
</body>
</html>