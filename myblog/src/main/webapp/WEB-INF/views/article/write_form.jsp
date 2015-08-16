<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<script src="${initParam.root}resources/js/jquery-1.11.3.min.js"></script>
<script type="text/javascript"
	src="${initParam.root}resources/api/smarteditor/js/HuskyEZCreator.js"
	charset="utf-8"></script>
<script type="text/javascript">
	$(function() {
		//전역변수선언
		var editor_object = [];

		nhn.husky.EZCreator
				.createInIFrame({
					oAppRef : editor_object,
					elPlaceHolder : "SE",
					sSkinURI : "${initParam.root}resources/api/smarteditor/SmartEditor2Skin.html",
					htParams : {
						// 툴바 사용 여부 (true:사용/ false:사용하지 않음)
						bUseToolbar : true,
						// 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)
						bUseVerticalResizer : true,
						// 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음)
						bUseModeChanger : true,
					}
				});

		//전송버튼 클릭이벤트
		$("#register_article_button").click(
				function() {
					//id가 smarteditor인 textarea에 에디터에서 대입
					editor_object.getById["SE"].exec("UPDATE_CONTENTS_FIELD",
							[]);

					// 이부분에 에디터 validation 검증
					/* var title = $("#register_article_form :input[name=title]")
							.val();
					var content = $("#SE").val();
					var category = $("#articleCategory").val();
					var open = $("#articleOpen]").val();
					if (title.trim() == '') {
						alert('제목을 입력하세요');
						$("#register_article_form :input[name=title]").focus();
						return false;
					} else if (content.trim() == '') {
						alert('내용을 입력하세요');
						return false;
					} else if (category == '') {
						alert('카테고리를 선택하세요');
						return false;
					} else if (open == '') {
						alert('공개여부를 선택하세요');
						return false;
					} */ 
					//폼 submit
					$("#register_article_form").submit();
				})
	})
</script>

<div class="page-header" align="center">
	<h2>Writing Note</h2>
</div>
<form class="form-horizontal" role="form" id="register_article_form"
	name="register_article_form" action="${initParam.root}article"
	method="POST">

	<div class="form-group">
		<label for="category" class="col-md-2 control-label">Category</label>
		<div class="col-md-3">
			<select class="form-control" id="articleCategory" name="category">
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
			<textarea id="SE" name="content" style="width: 100%; height: 412px;"
				rows="20" cols="30" class="form-control"></textarea>
		</div>
	</div>
	<div class="form-group">
		<label for="open" class="col-md-2 control-label">Open</label>
		<div class="col-md-3">
			<select class="form-control" id="articleOpen" name="open">
				<option>선택</option>
				<option value="공개">공개</option>
				<option value="비공개">비공개</option>
			</select>
		</div>
	</div>
	<div class="form-group">
		<div class="col-md-offset-2 col-md-10">
			<button type="button" id="register_article_button" class="btn">등록</button>
		</div>
	</div>
	<div class="form-group">
		<div class="col-md-offset-2 col-md-10">
			<input type="hidden" value="admin" id="writer" name="writer">
		</div>
	</div>
	<input type="hidden" name="${_csrf.parameterName}"
		value="${_csrf.token}" />

</form>