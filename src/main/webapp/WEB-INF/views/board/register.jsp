<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>


<div class="container-md">
<jsp:include page="../layout/header.jsp" />
<sec:authentication property="principal.uvo.nickName" var="authNick"/>
<!-- enctype : multipart/form-data -->
<form action="/board/insert" method="post" enctype="multipart/form-data" >
	<div class="mb-3">
	  <label for="t" class="form-label">title</label>
	  <input type="text" class="form-control" id="t" name="title" placeholder="title...">
	</div>
	<div class="mb-3">
	  <label for="w" class="form-label">writer</label>
	  <!-- <input type="text" class="form-control" id="w" name="writer" placeholder="writer..."> -->
	  <input type="text" class="form-control" id="w" name="writer" value="${authNick }" readonly="readonly">
	</div>
	<div class="mb-3">
	  <label for="c" class="form-label">content</label>
	  <img alt="" src="/resources/image/boo.png" width="70px" class="icon">
	  <textarea class="form-control" id="c" rows="3" name="content"></textarea>
	</div>
	
	<!-- 첨부파일 입력 라인 추가 -->
	<div class="mb-3">
	  <label for="file" class="form-label"></label>
	  <input type="file" class="form-control" id="file" name="files" 
	  		multiple="multiple" style="display:none">
<!-- 	  <button type="button" class="btn btn-info" id="trigger">FileUpload...</button> -->
	  <button type="button" class="login-btn" id="trigger"><span>FileUpload</span></button>
	</div>
	
	<!-- 첨부파일 표시 라인 추가 -->
	<div class="mb-3" id="fileZone">
	</div>
	<button type="submit" class="login-btn" id="regBtn"><span>register</span></button>
	
</form>
</div>

<script type="text/javascript" src="/resources/js/boardRegister.js"></script>

<jsp:include page="../layout/footer.jsp" />
