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
			<div class="col-md-4 col-md-offset-4">
				<div class="page-header" align="center">
					<h2>Welcome! Please Sign In </h2>
				</div>
				<form class="form-signin">
					<span id="reauth-email" class="reauth-email"></span> <input
						type="email" id="inputEmail" class="form-control"
						placeholder="Email address" required autofocus> <input
						type="password" id="inputPassword" class="form-control"
						placeholder="Password" required>
					<div id="remember" class="checkbox">
						<label> <input type="checkbox" value="remember-me">
							Remember me
						</label>
					</div>
					<button class="btn btn-lg btn-primary btn-block btn-signin"
						type="submit">Sign in</button>
				</form>
				<!-- /form -->
				<a href="#" class="forgot-password"> Forgot the password? </a>
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