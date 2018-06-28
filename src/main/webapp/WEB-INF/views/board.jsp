<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
<link rel="icon" type="image/png"
	href="resources/images/icons/favicon.ico" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="resources/fonts/font-awesome.min.css">
<!--===============================================================================================-->

<title>ONE IN A MILLION !</title>

<!-- Bootstrap core CSS -->
<link rel="stylesheet" type="text/css"
	href="resources/css/bootstraps.min.css">
<!-- Custom styles for this template -->
<link rel="stylesheet" type="text/css"
	href="resources/css/sticky-footer-navbar.css">
</head>

<body>

	<!-- Fixed navbar -->
	<nav class="navbar navbar-default navbar-fixed-top">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#navbar" aria-expanded="false"
				aria-controls="navbar">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span> <span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="./mainhome">LOVE</a>
		</div>
		<div id="navbar" class="collapse navbar-collapse">
			<ul class="nav navbar-nav">
				<li><a href="./mainhome">Home</a></li>
				<li><a href="./mainabout">About</a></li>
				<li class="active"><a href="./mainboard">Board</a></li>
				<li><a href="./maincontact">Contact</a></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-expanded="false">Dropdown
						<span class="caret"></span>
				</a>
					<ul class="dropdown-menu" role="menu">
						<li><a href="#">첫번째</a></li>
						<li><a href="#">두번째</a></li>
						<li><a href="#">세번째</a></li>
						<li class="divider"></li>
						<li class="dropdown-header">중분류</li>
						<li><a href="#">네번째</a></li>
						<li><a href="#">다섯번째</a></li>
					</ul></li>
			</ul>
		</div>
		<!--/.nav-collapse -->
	</div>
	</nav>

	<!-- Begin page content -->
	<div class="container">
		<div class="page-header">
			<h1>Write your story</h1>
		</div>

	</div>
	<div class="col-md-10 col-md-offset-1">

		<div class="panel panel-default panel-table">
			<div class="panel-heading">
				<div class="row">
					<div class="col col-xs-6">
						<p class="lead">아름다운 당신의 이야기를 작성해주세요.</p>
					</div>
					<div class="col col-xs-6 text-right">
						<a href="./mainwrite"><button type="button" class="btn btn-sm btn-primary btn-create">글쓰기</button></a>
					</div>
				</div>
			</div>
			<div class="panel-body">
				<table class="table table-striped table-bordered table-list">
					<thead>
						<tr>

							<th class="hidden-xs">#</th>
							<th>Title</th>
							<th>Detail</th>
							<th>ID</th>
							<th>View</th>
							<th><em class="fa fa-cog"></em></th>
						</tr>
					</thead>
					<tbody>
						<tr>

							<td class="hidden-xs"><a class="btn btn-default"><em
									class="fa fa-pencil"></em></a> <a class="btn btn-danger"><em
									class="fa fa-trash"></em></a>
									#1</td>
							<td>첫번째글</td>
							<td>블라블라</td>
							<td>관리자</td>
							<td>1</td>
							<td align="center">2018-06-28</td>
						</tr>
					</tbody>
				</table>

			</div>
			<div class="panel-footer">
				<div class="row">
					<div class="col col-xs-4">Page 1 of 5</div>
					<div class="col col-xs-8">
						<ul class="pagination hidden-xs pull-right">
							<li><a href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li><a href="#">5</a></li>
						</ul>
						<ul class="pagination visible-xs pull-right">
							<li><a href="#">«</a></li>
							<li><a href="#">»</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>

	</div>

	<footer class="footer">
	<div class="container">
		<p class="text-muted">Seoyul Yoon.</p>
	</div>
	</footer>


	<!-- Bootstrap core JavaScript
    ================================================== -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script src="resources/js/bootstraps.min.js"></script>
</body>
</html>