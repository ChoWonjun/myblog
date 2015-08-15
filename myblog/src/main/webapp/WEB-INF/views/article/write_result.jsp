<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<c:set property="${requestScope.artice}" var="article"></c:set>
<div id="contents" class="col-md-10">
	<article>
		<div class="page-header">
			<h1>${article.title}</h1>
			<br> ${article.category} | ${article.writeDate} | <a>수정</a> | <a
				style="text-decoration: none">삭제</a> | <a
				style="text-decoration: none">설정</a>
		</div>
		<div id="page-content">
			${article.content}
		</div>
		<hr>
		<div id="page-footer">
			<span class="glyphicon glyphicon-chevron-down"></span> 덧글쓰기 | <span
				class="glyphicon glyphicon-heart-empty"></span> 공감 ${article.recommend}
		</div>
		<br>
	</article>
</div>