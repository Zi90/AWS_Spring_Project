<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="container-md">
<jsp:include page="../layout/header.jsp"/>

	<form action="/user/login" method="post">
		<div class="mb-3">
		  <label for="e" class="form-label">email</label>
		  <img alt="" src="/resources/image/ballon.png" width="50px" class="icon">
		  <input type="text" class="form-control" id="e" name="email" placeholder="email...">
		</div>
		<div class="mb-3">
		  <label for="p" class="form-label">password</label>
		  <input type="password" class="form-control" id="p" name="pwd" placeholder="PassWord...">
		</div>
		<!-- 로그인 실패시 errMessage 출력 -->
		<c:if test="${param.errMsg ne null }">
			<div class="text-danger">${param.errMsg }</div>
		</c:if>
		 <button type="submit" class="login-btn"><span>Login</span></button>
	</form>
</div>


<jsp:include page="../layout/footer.jsp"/>