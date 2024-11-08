<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>header.jsp</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<link href="${path}/resources/css/layout-style.css" rel="stylesheet"/> 	
</head>
<body>
<div class="ghost">
	<div class="body">
		<div class="face">
			<div class="eye"></div>
			<div class="eye"></div>
			<div class="mouse"></div>
		</div>
	</div>
	<div class="bottom">
		<div class="leg"></div>
		<div class="leg"></div>
		<div class="leg"></div>
		<div class="leg"></div>
		<div class="leg"></div>
	</div>
	<script type="text/javascript" src="/resources/js/layout-style.js"></script>
</div>
<!-- <div class="container-md"> -->
	<h1 class="title">
		EZEN <span>HALLOWEEN</span>
		<img alt="" src="/resources/image/witch.png" width="70px" class="witch-image">
	</h1>
<!-- </div> -->
<div>
<nav class="navbar navbar-expand-lg bg-body-tertiary headerBox">
  <div class="container-fluid">
  	<img src="/resources/image/hand.png" width="60px">
<!--     <a class="navbar-brand" href="#">Spring</a> -->
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0 header">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="/">Home</a>
        </li>
    	<li class="nav-item">
          <a class="nav-link" href="#">|</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/board/list">List</a>
        </li>
	    <!-- <li class="nav-item">
          <a class="nav-link" href="/board/register">register</a>
        </li> -->
         <sec:authorize access="isAnonymous()">
 	        <li class="nav-item">
	          <a class="nav-link" href="#">|</a>
	        </li>
 	        <li class="nav-item">
	          <a class="nav-link" href="/user/register">Sign UP</a>
	        </li>
 	        <li class="nav-item">
	          <a class="nav-link" href="#">|</a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link" href="/user/login">Sign In</a>
	        </li>
         </sec:authorize>
        <sec:authorize access="isAuthenticated()">
        <!-- 인증 객체가 만들어져 있는 상태 -->
        <!-- 인증된 객체 가져오기 => 현재 로그인 정보는 : principal -->
         <sec:authentication property="principal.uvo.email" var="authEmail"/>
        <sec:authentication property="principal.uvo.nickName" var="authNick"/>
        <sec:authentication property="principal.uvo.authList" var="auths"/>
         	<li class="nav-item">
	          <a class="nav-link" href="#">|</a>
	        </li>
 	        <li class="nav-item">
	          <a class="nav-link" href="/board/register">Register</a>
	        </li>
	         <li class="nav-item">
	          <a class="nav-link" href="#">|</a>
	        </li>
	         <li class="nav-item">
	          <a class="nav-link" href="/user/modify">Edit Profile ${authNick}(${authEmail})</a>
	        </li>
	        
	        <c:if test="${auths.stream().anyMatch(authVO -> authVO.auth.equals('ROLE_ADMIN')).get() }">
	         <li class="nav-item">
	          <a class="nav-link" href="#">|</a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link text-danger" href="/user/list">Member List(ADMIN)</a>
	        </li>
	        </c:if>
	         <li class="nav-item">
	          <a class="nav-link" href="#">|</a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link" href="/user/logout">Sign out</a>
	        </li>
         </sec:authorize>
       	 <img src="/resources/image/lights.png" width="60px">
        </ul>
    </div>
  </div>
</nav>
  <div class="blood">
		<div class="flow"></div>
		<div class="flow"></div>
		<div class="flow"></div>
		<div class="flow"></div>
		<div class="flow"></div>
		<div class="flow"></div>
		<div class="flow"></div>
		<div class="flow"></div>
		<div class="flow"></div>
		<div class="flow"></div>
		<div class="flow"></div>
		<div class="flow"></div>
		<div class="flow"></div>
		<div class="flow"></div>
		<div class="flow"></div>
		<div class="flow"></div>
		<div class="flow"></div>
		<div class="flow"></div>
		<div class="flow"></div>
		<div class="flow"></div>
		<div class="flow"></div>
		<div class="flow"></div>
		<div class="flow"></div>
		<div class="flow"></div>
		<div class="flow"></div>
		<div class="flow"></div>
		<div class="flow"></div>
		<div class="flow"></div>
		<div class="flow"></div>
		<div class="flow"></div>
		<div class="flow"></div>
		<div class="flow"></div>
  </div>
</div>