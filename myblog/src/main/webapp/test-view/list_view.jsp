<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>list_view</title>
<script src="${initParam.root}resources/js/jquery-1.11.3.min.js"></script>
<script src="${initParam.root}resources/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="${initParam.root}resources/css/bootstrap.min.css">
<link rel="stylesheet" href="${initParam.root}resources/css/custom.css">
<link rel="stylesheet"
	href="${initParam.root}resources/css/bootstrap-theme.min.css">
</head>
<script type="text/javascript">
	$(function() {
		$('#listBtn').click(function() {
			if ($("#articleList").css("display") == "none") {
				$('#articleList').show();
			} else {
				$('#articleList').hide();
			}
		});
	});
</script>
<body data-spy="scroll" data-target="#menuRight">
	<div class="container">
		<!-- header 부분 -->
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
		<!-- main page 부분 -->
		<div id=main class="container">
			<div class="row">
				<div id="contents" class="col-md-10">
					<div class="panel panel-default">
						<div class="panel-heading">
							<a id="listBtn"><span class="glyphicon glyphicon-list"></span>
								개발 노트 </a>
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
							<tr>
								<td>1</td>
								<td>테이블 테스트 테이블 테스트 테이블 테스트</td>
								<td>0</td>
								<td>2015.05.02. 18:20</td>
							</tr>
							<tr>
								<td>2</td>
								<td>테이블 테스트 테이블 테스트 테이블 테스트</td>
								<td>0</td>
								<td>2015.05.02. 18:20</td>
							</tr>
							<tr>
								<td>3</td>
								<td>테이블 테스트 테이블 테스트 테이블 테스트</td>
								<td>6</td>
								<td>2015.05.02. 18:20</td>
							</tr>
							<tr>
								<td>4</td>
								<td>테이블 테스트 테이블 테스트 테이블 테스트</td>
								<td>25</td>
								<td>2015.05.02. 18:20</td>
							</tr>
							<tr>
								<td>5</td>
								<td>테이블 테스트 테이블 테스트 테이블 테스트</td>
								<td>10</td>
								<td>2015.05.02. 18:20</td>
							</tr>
							<tr>
								<td colspan="4" align="center">
									<ul class="pagination pagination-sm">
										<li class="disabled"><span>«</span></li>
										<li class="active"><span>1 <span class="sr-only">(current)</span></span></li>
										<li><a href="#">2</a></li>
										<li><a href="#">3</a></li>
										<li><a href="#">4</a></li>
										<li><a href="#">5</a></li>
										<li><a href="#">»</a></li>
									</ul>
								</td>
							</tr>
						</table>
					</div>
					<article>
						<div class="page-header">
							<h1>여기는 페이지 제목 부분입니다.</h1>
							<br> 개발노트 | 2015.05.02. 18:20 | <a>수정</a> | <a
								style="text-decoration: none">삭제</a> | <a
								style="text-decoration: none">설정</a>
						</div>
						<div id="page-content">

							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
								Pellentesque non orci interdum, pharetra dui nec, eleifend
								ligula. Integer rutrum nunc a mi luctus vehicula. Aenean ut odio
								euismod, fringilla leo quis, tincidunt tellus. Pellentesque
								ultricies lectus non faucibus semper. Ut egestas turpis sed
								purus dignissim, quis vehicula odio convallis. Suspendisse
								egestas rutrum velit sit amet cursus. Suspendisse a sapien ac
								enim pretium egestas. Mauris eget risus ut velit molestie
								pretium.</p>

							<p>Integer ac molestie orci. Sed eget suscipit ante. Donec
								suscipit lectus sed lectus elementum mollis. Vivamus tempor
								libero vitae ligula rhoncus sollicitudin. Mauris pretium eros
								non mauris pharetra, sit amet iaculis sapien egestas. Maecenas
								sodales augue at sapien facilisis, ut venenatis justo sodales.
								Nam est mi, semper at enim tincidunt, faucibus hendrerit risus.
								Morbi ligula libero, laoreet non libero in, adipiscing sagittis
								eros. In hac habitasse platea dictumst. Aenean nec accumsan mi.
								Nam dapibus mattis vestibulum. Duis eget purus volutpat, cursus
								nisi quis, ullamcorper diam. Cras commodo sodales quam, eget
								consectetur lorem laoreet vel. Curabitur rhoncus metus vitae
								eleifend porttitor. Donec congue orci id tortor laoreet, et
								fermentum lectus tincidunt. Nullam ac tincidunt ante.</p>

							<p>Aliquam erat volutpat. Duis tincidunt mattis orci et
								lacinia. Praesent posuere fringilla dui ut vestibulum. Maecenas
								eleifend odio id tincidunt cursus. Donec molestie orci nulla,
								sed lobortis libero accumsan et. Quisque libero nisi, molestie a
								elit vel, ultricies mollis ipsum. Praesent semper massa et
								pharetra aliquet.</p>

							<p>Aliquam et fringilla odio. Integer tristique vehicula
								posuere. Aenean vulputate a lectus sed vulputate. Class aptent
								taciti sociosqu ad litora torquent per conubia nostra, per
								inceptos himenaeos. Aliquam tincidunt dui vitae viverra mattis.
								Sed eget enim enim. Curabitur blandit turpis quis metus
								tincidunt, quis egestas tortor gravida. Maecenas fermentum
								turpis justo, vel fermentum massa scelerisque eget. Vivamus
								auctor, tortor vel porttitor cursus, sem augue faucibus turpis,
								sed venenatis ante lacus in augue. Duis faucibus tortor non
								magna faucibus dictum. Aenean at dictum ligula. Maecenas at arcu
								massa. In et fermentum quam, a varius risus. Mauris ut turpis et
								sem tristique scelerisque. Aenean dui erat, laoreet ac faucibus
								eu, adipiscing ac dolor.</p>

							<p>Etiam justo orci, accumsan a lacinia ac, suscipit id
								turpis. Nunc auctor erat id risus cursus mollis. Pellentesque
								semper massa a semper sodales. Proin pretium orci dolor, in
								lacinia tellus tincidunt non. Praesent pretium nec sem vitae
								consectetur. Suspendisse ut vestibulum libero. Ut eu eleifend
								enim, in dapibus nibh. Nullam congue volutpat nisi sit amet
								iaculis. Nullam dapibus iaculis lectus sed aliquam. Ut ut eros
								et lectus posuere vestibulum in et felis. Etiam eu est iaculis,
								faucibus lectus ac, ultrices odio.</p>

						</div>
						<hr>
						<div id="page-footer">
							<span class="glyphicon glyphicon-chevron-down"></span> 덧글쓰기 | <span
								class="glyphicon glyphicon-heart-empty"></span> 공감 7
						</div>
						<br>
					</article>
				</div>
				<div id="menuRight" class="col-md-2">
					<div class="list-group" data-spy="affix" data-offset-top="140">
						<a href="#" class="list-group-item">개발노트 </a> <a href="#"
							class="list-group-item">작품노트 </a> <a href="#"
							class="list-group-item">취업노트 </a> <a href="#"
							class="list-group-item">낙서노트 </a> <a href="#"
							class="list-group-item">스크랩북 </a>
					</div>
				</div>
			</div>
		</div>
		<!-- footer 부분 -->
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
​
