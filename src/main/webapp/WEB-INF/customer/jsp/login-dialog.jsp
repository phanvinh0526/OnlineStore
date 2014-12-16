<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<spring:url value="/resources/customer" var="resourceUrl"/>

<div id="login" class="modal hide fade in" tabindex="-1" role="dialog" aria-labelledby="login" aria-hidden="false" >
	  <div class="modal-header">
		<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
		<h3>Login Block</h3>
	  </div>
	  <div class="modal-body">
		<form action="./account/login" method="post" class="form-horizontal loginFrm">
		  <div class="control-group">								
			<input type="text" name="username" placeholder="Username">
		  </div>
		  <div class="control-group">
			<input type="password" name="password" placeholder="Password">
		  </div>
		  <div class="control-group">
			<label class="checkbox">
			<input type="checkbox"> Remember me
			</label>
		  </div>
		  <div class="control-group">
			<a href="./account/registration">Registration Page</a>
		  </div>
		  <button type="submit" class="btn btn-success">Sign in</button>
		  <button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
		</form>		
		
	  </div>
</div>