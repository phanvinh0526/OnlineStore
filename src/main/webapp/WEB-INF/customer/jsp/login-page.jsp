<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<spring:url value="/resources/customer" var="resourceUrl"/>

<ul class="breadcrumb">
	<li><a href="index.html">Home</a> <span class="divider">/</span></li>
	<li class="active">Login</li>
</ul>
<h3> Login</h3>	
<hr class="soft"/>

<div class="row">
	<div class="span4">
		<div class="well">
		<h5>CREATE YOUR ACCOUNT</h5><br/>
		<form:form action="./registration" modelAttribute="registrationForm" method="post">
		  <div class="control-group">
		  	<label class="control-label text-danger">${messageReg}</label>
		  </div>
		  <div class="control-group">
			<label class="control-label" for="inputEmail0">First Name</label>
			<div class="controls">
			  <form:input path="firstname" class="span3" placeholder="First name"/>
			</div>
		  </div>
		  <div class="control-group">
			<label class="control-label" for="inputEmail0">Last Name</label>
			<div class="controls">
			  <form:input path="lastname" class="span3" placeholder="Last name"/>
			</div>
		  </div>
		  <div class="control-group">
			<label class="control-label" for="inputEmail0">Username</label>
			<div class="controls">
			  <form:input path="username" class="span3" placeholder="Username"/>
			</div>
		  </div>
		  <div class="control-group">
			<label class="control-label" for="inputEmail0">Password</label>
			<div class="controls">
			  <form:password path="password" class="span3" placeholder="Password"/>
			</div>
		  </div>
		  <div class="control-group">
			<label class="control-label" for="inputEmail0">Email</label>
			<div class="controls">
			  <form:input path="email" class="span3" placeholder="Email"/>
			</div>
		  </div>
		  <div class="control-group">
			<label class="control-label" for="inputEmail0">Phone</label>
			<div class="controls">
			  <form:input path="phone" class="span3" placeholder="Phone"/>
			</div>
		  </div>
		  <div class="control-group">
		  	<label class="control-label"><form:checkbox path="marketingOk"/> Accept for Marketing</label>	
		  	<label class="control-label"><form:checkbox path="acceptTerms"/> Accept for Terms</label>	
		  </div>
		  <div class="controls">
		  	<button type="submit" class="btn block">Register</button>
		  </div>
		</form:form>
	</div>
	</div>
	<div class="span1"> &nbsp;</div>
	<div class="span4">
		<div class="well">
		<h5>ALREADY REGISTERED ?</h5>
		<form action="./login" method="post">
		  <div class="control-group">
			<label class="control-label" for="inputEmail1">Username</label>
			<div class="controls">
			  <input class="span3"  type="text" name="username" placeholder="Username">
			</div>
		  </div>
		  <div class="control-group">
			<label class="control-label" for="inputPassword1">Password</label>
			<div class="controls">
			  <input type="password" class="span3"  name="password" placeholder="Password">
			</div>
		  </div>
		  <div class="control-group">
		  	<label class="control-label text-danger">${messageLog}</label>
		  </div>
		  <div class="control-group">
			<div class="controls">
			  <button type="submit" class="btn">Sign in</button>  
			  <a href="./account/forgotView">Forgot password?</a>
			</div>
		  </div>
		</form>
	</div>
	</div>
</div>