<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<spring:url value="/resources/customer" var="resourceUrl"/>

<div class="well well-small">
	<h4>Featured Products <small class="pull-right">200+ featured products</small></h4>
	<div class="row-fluid">
		<div id="featured" class="carousel slide">
			<div class="carousel-inner">
				<!-- Featured Products -->
				<jsp:include page="/WEB-INF/customer/jsp/product-feature-page.jsp"/>
				
			</div>
			<a class="left carousel-control" href="#featured" data-slide="prev">‹</a>
			<a class="right carousel-control" href="#featured" data-slide="next">›</a>
		</div>
	</div>
</div>
<h4>Latest Products </h4>
<ul class="thumbnails">
	<!-- Lasted Products -->
	<jsp:include page="/WEB-INF/customer/jsp/product-lasted-page.jsp"/>
	
</ul>