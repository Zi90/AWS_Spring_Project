<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>

<c:set var="path" value="${pageContext.request.contextPath}"/>

<link href="${path}/resources/css/index-style.css" rel="stylesheet"/> 	
<script type="module" src="/resources/js/index-style.js"></script>

<div class="container-md">
<jsp:include page="layout/header.jsp"/>

<div class="container">
	<div class="button-container">
		<button id="trick-button">Trick</button>
	</div>
	<p>or</p>
	<div class="button-container">
		<button id="treat-button">Treat</button>
	</div>
	<p>?</p>
</div>

<div class="indexBody">
	<div class="index-title">
	  <span id="I">🎃</span>
	  <span id="I">H</span>
	  <span id="I">A</span>
	  <span id="I">L</span>
	  <span id="I">L</span>
	  <span id="I">O</span>
	  <span id="I">W</span>
	  <span id="I">E</span>
	  <span id="I">E</span>
	  <span id="I">N</span>
	  <span id="T">안</span>
	  <span id="T">전</span>
	  <span id="I">경</span>
	  <span id="I">고</span>
	  <span id="I">문</span>
	  <span id="I">🎃</span>		 
    </div>
	<div>	  
	  <span id="I" class="content"> 1. </span>		 
	  <span id="I" class="content"> 어두운 곳 주의</span>		 
	</div>
	<div>
	  <span id="T" class="content"> 밝은 색 의상이나 반사 테이프를 사용하세요</span>		 
	</div>
	<div>	  
	  <span id="I" class="content"> 2. </span>		 
	  <span id="I" class="content"> 교차로 안전</span>		 
	</div>
	<div>
	  <span id="T" class="content"> 도로를 건널 때 주의, 보호자와 함께 다니세요</span>		 
	</div>
	<div>	  
	  <span id="I" class="content"> 3. </span>		 
	  <span id="I" class="content"> 사탕 점검</span>		 
	</div>
	<div>
	  <span id="T" class="content"> 수집한 간식은 부모님께 검사 후 섭취하세요</span>		 
	</div>
	<div>	  
	  <span id="I" class="content"> 4. </span>		 
	  <span id="I" class="content"> LED 불빛 사용</span>		 
	</div>
	<div>
	  <span id="T" class="content"> 촛불 대신 안전한 조명을 사용하세요</span>		 
	</div>
	<div>	  
	  <span id="I" class="content"> 5. </span>		 
	  <span id="I" class="content"> 복장 안전</span>		 
	</div>
	<div>
	  <span id="T" class="content"> 미끄러지지 않도록 적당한 크기와 신발 착용하세요</span>		 
	</div>
	<div>	  
	  <span id="I" class="content"> 6. </span>		 
	  <span id="I" class="content"> 친구와 함께</span>		 
	</div>
	<div>
	  <span id="T" class="content"> 어린이는 반드시 친구나 가족과 다니세요</span>		 
	</div>

  
 <!--  
 어두운 곳 주의: 밝은 색 의상이나 반사 테이프 사용.
교차로 안전: 도로를 건널 때 주의, 보호자와 함께!
사탕 점검: 수집한 간식은 부모님 검사 후 섭취.
LED 불빛 사용: 촛불 대신 안전한 조명 사용.
복장 안전: 미끄러지지 않도록 적당한 크기와 신발 착용.
친구와 함께: 어린이는 반드시 친구나 가족과 다니기. 
-->
</div>

<script src="https://cdn.jsdelivr.net/npm/js-confetti@latest/dist/js-confetti.browser.js"></script>
</div>


<jsp:include page="layout/footer.jsp"/>