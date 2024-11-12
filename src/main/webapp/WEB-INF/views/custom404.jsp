<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<link href="${path}/resources/css/404-style.css" rel="stylesheet"/> 	

<body>

<div class="container">
<h1> Custom 404 Page </h1>

<h3><c:out value="${exception}"/></h3>

<a href="/"><button class="btn-hover color-5">HOME</button></a>
</div>
 
<div class="gooeys center">
  <canvas style="position:absolute;" id="canvas"></canvas>
</div>

<div class="glow center"></div>
<div class="shadow center"></div>
<div class="pot-top center"></div>
<div class="pot center"></div>



<svg>
  <defs>
    <filter id="filter">
      <feGaussianBlur in="SourceGraphic" stdDeviation="10" result="blur" />
      <feColorMatrix in="blur" mode="matrix" values="1 0 0 0 0  0 1 0 0 0  0 0 1 0 0  0 0 0 17 -10" result="filter" />
      <feBlend/>
    </filter>
  </defs>
</svg>

<script type="module" src="/resources/js/404-style.js"></script>

</body>
</html>