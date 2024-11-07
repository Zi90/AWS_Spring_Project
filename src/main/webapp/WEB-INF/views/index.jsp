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
<script src="https://cdn.jsdelivr.net/npm/js-confetti@latest/dist/js-confetti.browser.js"></script>
</div>


<jsp:include page="layout/footer.jsp"/>