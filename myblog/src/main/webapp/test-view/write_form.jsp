<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Default Layout</title>
<script src="${initParam.root}resources/js/jquery-1.11.3.min.js"></script>
<script src="${initParam.root}resources/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="${initParam.root}resources/css/bootstrap.min.css">
<link rel="stylesheet" href="${initParam.root}resources/css/custom.css">
<link rel="stylesheet"
	href="${initParam.root}resources/css/bootstrap-theme.min.css">
</head>
<body data-spy="scroll" data-target="#menuRight">
	<div id="container">
		<div id="header" class="container">
			<div class="row">
				<nav class="navbar navbar-inverse" role="navigation">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse"
							data-target=".navbar-ex1-collapse">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
						<a class="navbar-brand" href="#">MyBlog</a>
					</div>
					<div
						class="collapse navbar-collapse navbar-right navbar-ex1-collapse">
						<ul class="nav navbar-nav">
							<li><a href="#"><span class="glyphicon glyphicon-user"></span></a></li>
							<li><a href="#"><span
									class="glyphicon glyphicon-envelope"></span></a></li>
							<li><a href="#"><span
									class="glyphicon glyphicon-calendar"></span></a></li>
							<li><a href="#"><span class="glyphicon glyphicon-th"></span></a></li>
						</ul>
					</div>
				</nav>
			</div>
		</div>
		<div id=main class="container">
			<div class="row">
				<div class="page-header" align="center">
					<h2>Writing Note</h2>
				</div>
				<form class="form-horizontal" role="form">

					<div class="form-group">
						<label for="category" class="col-md-2 control-label">Category</label>
						<div class="col-md-3">
							<select class="form-control" id="category">
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
							<input type="text" class="form-control" id="title"
								placeholder=" 제목">
						</div>
					</div>
					<div class="form-group">
						<label for="content" class="col-md-2 control-label">Content</label>
						<div class="col-md-8">
							<textarea class="form-control" rows="10" id="content"></textarea>
						</div>
					</div>
					<div class="form-group">
						<label for="open" class="col-md-2 control-label">Open</label>
						<div class="col-md-3">
							<select class="form-control" id="open">
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

				</form>
				<br>
			</div>
		</div>
		<div id="footer" class="container">
			<div class="row">
				<nav class="navbar navbar-inverse">
					<div class="collapse navbar-collapse navbar-ex1-collapse">
						<ul class="nav navbar-nav">
							<li><a href="#">Facebook</a></li>
							<li><a href="#">GitHub</a></li>
							<li><a href="#">DevNote</a></li>
						</ul>
						<form class="navbar-form navbar-right" role="search">
							<div class="form-group">
								<input type="text" class="form-control" placeholder="Search">
							</div>
							<button type="submit" class="btn btn-default">
								<span class="glyphicon glyphicon-search"></span>
							</button>
						</form>
					</div>
				</nav>
			</div>
		</div>
	</div>
</body>
</html>