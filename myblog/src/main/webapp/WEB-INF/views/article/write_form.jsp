<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="page-header" align="center">
	<h2>Writing Note</h2>
</div>
<form class="form-horizontal" role="form"
	action="${initParam.root}article" method="POST">

	<div class="form-group">
		<label for="category" class="col-md-2 control-label">Category</label>
		<div class="col-md-3">
			<select class="form-control" id="category" name="category">
				<option>선택</option>
				<option value="개발노트">개발노트</option>
				<option value="작품노트">작품노트</option>
				<option value="취업노트">취업노트</option>
				<option value="낙서노트">취업노트</option>
				<option value="스크랩북">스크랩북</option>
			</select>
		</div>
	</div>
	<div class="form-group">
		<label for="title" class="col-md-2 control-label">Title</label>
		<div class="col-md-8">
			<input type="text" class="form-control" id="title" name="title"
				placeholder=" 제목">
		</div>
	</div>
	<div class="form-group">
		<label for="content" class="col-md-2 control-label">Content</label>
		<div class="col-md-8">
			<textarea class="form-control" rows="10" id="content" name="content"></textarea>
		</div>
	</div>
	<div class="form-group">
		<label for="open" class="col-md-2 control-label">Open</label>
		<div class="col-md-3">
			<select class="form-control" id="open" name="open">
				<option>선택</option>
				<option value="공개">공개</option>
				<option value="비공개">비공개</option>
			</select>
		</div>
	</div>
	<div class="form-group">
		<div class="col-md-offset-2 col-md-10">
			<button type="submit">submit</button>
		</div>
	</div>
	<div class="form-group">
		<div class="col-md-offset-2 col-md-10">
			<input type="hidden" value="chocamp" id="writer" name="writer">
		</div>
	</div>
	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />

</form>