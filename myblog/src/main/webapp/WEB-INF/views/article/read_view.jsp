<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<script type="text/javascript">
	$(function() {
		$('#listBtn').click(function() {
			if ($("#articleList").css("display") == "none") {
				$('#articleList').show();
			} else {
				$('#articleList').hide();
			}
		});

		$('#deleteBtn').click(function() {
			if (confirm("게시물을 삭제하시겠습니까?")) {
				$('#delete_article_form').submit();
			}
		});

		$('#updateBtn').click(function() {
			$('#update_article_form').submit();
		});

		$('#openBtn').click(function() {

		});
	});
</script>

<c:set var="page" value="${listContainer.page}" />
<c:set var="list" value="${listContainer.list}" />
<c:set var="article" value="${listContainer.article}" />

<div class="panel panel-default">
	<div class="panel-heading">
		<a id="listBtn"><span class="glyphicon glyphicon-list"></span>
			${article.category} </a>
	</div>
	<table class="table" id="articleList" style="display: none">
		<thead>
			<tr>
				<th class="col-md-1">번 호</th>
				<th class="col-md-8">제 목</th>
				<th class="col-md-1">공 감</th>
				<th class="col-md-2">작성일</th>
			</tr>
		</thead>

		<!-- 페이지 목록 -->
		<c:forEach var="articles" items="${list}">
			<tr>
				<td>${articles.articleNo}</td>
				<td><a
					href="${initParam.root}article/${page.currentPage}/${articles.articleNo}">${articles.title}</a></td>
				<td>${articles.recommend}</td>
				<td>${articles.date}</td>
			</tr>
		</c:forEach>

		<!-- 페이지네이션 -->
		<tr>
			<td colspan="4" align="center">
				<ul class="pagination pagination-sm">
					<c:choose>
						<c:when test="${page.firstPageGroup == true }">
							<li class="disabled"><span>«</span></li>
						</c:when>
						<c:otherwise>
							<li><a href="#">«</a></li>
						</c:otherwise>
					</c:choose>
					<c:forEach begin="${page.beginPage }" end="${page.endPage }"
						var="num">
						<c:choose>
							<c:when test="${num == page.currentPage }">
								<li class="active"><span>${num } <span
										class="sr-only">(current)</span></span></li>
							</c:when>
							<c:otherwise>
								<li><a href="#">${num }</a></li>
							</c:otherwise>
						</c:choose>
					</c:forEach>
					<c:choose>
						<c:when test="${page.lastPageGroup == true }">
							<li class="disabled"><span>»</span></li>
						</c:when>
						<c:otherwise>
							<li><a href="#">»</a></li>
						</c:otherwise>
					</c:choose>
				</ul>
			</td>
		</tr>
	</table>
</div>
<article>
	<div class="page-header">
		<h1>${article.title}</h1>
		<br> ${article.category} | ${article.writeDate} | <a
			id="updateBtn">수정</a> | <a id="deleteBtn">삭제</a> | <a id="openBtn">설정</a>
		<form:form id="delete_article_form" name="delete_article_form"
			action="${initParam.root}article"
			method="DELETE"><input type="hidden" id="articleNo" name="articleNo" value="${article.articleNo}">
			<input type="hidden" id="category" name="category" value="${article.category}"></form:form>
		<form:form id="update_article_form" name="update_article_form"
			action="${initParam.root}article/update_form/${article.articleNo}"></form:form>
	</div>
	<div id="page-content">${article.content}</div>
	<hr>
	<div id="page-footer">
		<span class="glyphicon glyphicon-chevron-down"></span> 덧글쓰기 | <span
			class="glyphicon glyphicon-heart-empty"></span> 공감
		${article.recommend}
	</div>
	<br>
</article>
