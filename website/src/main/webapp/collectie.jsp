<%@page import="concordia.kunstverhuur.Collectie"%>
<%@page import="concordia.kunstverhuur.StandardPage"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>

<%@include file="includes/head.jsp"%>

<title>Collectie :: Concordia Kunstverhuur</title>

</head>

<body>

	<%
		out.write(StandardPage.getHeader("index", request));
	%>

	<div class="container marketing">
		<div class="page-header">
			<h1>
				Collectie <small>voor particulieren en bedrijven</small>
			</h1>
		</div>
		<div class="row well">
			<!--Menubar on the left -->

			<form role="form" class="form-inline">
				<div class="form-group">
					<label for="name" class="sr-only">Titel</label> <input type="text"
						class="form-control" id="name" placeholder="Titel">
				</div>
				<div class="form-group">
					<label for="year" class="sr-only">Jaar</label> <input type="text"
						class="form-control" id="year" placeholder="Jaar">
				</div>
				<div class="form-group">
					<label for="artist" class="sr-only">Kunstenaar</label> <select
						id="artist" class="form-control">
						<option selected>Kunstenaar</option>
						<option>Kunstenaar</option>
						<option>Kunstenaar</option>
						<option>Kunstenaar</option>
						<option>Kunstenaar</option>
						<option>Kunstenaar</option>
						<option>Kunstenaar</option>
						<option>Kunstenaar</option>
						<option>Kunstenaar</option>
					</select>
				</div>
				<div class="form-group">
					<label for="style" class="sr-only">Stijl</label> <select id="style"
						class="form-control">
						<option selected>Stijl</option>
						<option>Stijl</option>
						<option>Stijl</option>
						<option>Stijl</option>
						<option>Stijl</option>
						<option>Stijl</option>
						<option>Stijl</option>
						<option>Stijl</option>
						<option>Stijl</option>
						<option>Stijl</option>
						<option>Stijl</option>
					</select>
				</div>
				<div class="form-group">
					<label for="techniek" class="sr-only">Techniek</label> <select
						id="techniek" class="form-control">
						<option selected>Techniek</option>
						<option>Techniek</option>
						<option>Techniek</option>
						<option>Techniek</option>
						<option>Techniek</option>
						<option>Techniek</option>
						<option>Techniek</option>
						<option>Techniek</option>
					</select>
				</div>
				<div class="form-group">
					<label for="formaat" class="sr-only">Formaat</label> <select
						id="formaat" class="form-control">
						<option selected>Formaat</option>
						<option>Formaat</option>
						<option>Formaat</option>
						<option>Formaat</option>
						<option>Formaat</option>
						<option>Formaat</option>
						<option>Formaat</option>
						<option>Formaat</option>
						<option>Formaat</option>
						<option>Formaat</option>
					</select>
				</div>
				<div class="checkbox">
					<label> <input type="checkbox"> Koopbaar
					</label>
				</div>
				<button type="submit" class="btn btn-primary">Toepassen</button>
				<button type="reset" class="btn btn-default">Reset</button>
			</form>
		</div>
		<!-- /row -->
		<!-- Main content -->
		<div class="row">

		</div>
		<ul class="pagination">
			<li class="disabled"><a href="#">&laquo;</a></li>
			<li class="active"><a href="#">1 <span class="sr-only">(current)</span></a></li>
			<li><a href="#">2</a></li>
			<li><a href="#">3</a></li>
			<li><a href="#">4</a></li>
			<li><a href="#">5</a></li>
			<li><a href="#">&raquo;</a></li>
		</ul>

		<!-- /.blog-main -->
		<!-- End main content -->
	</div>
	<!-- /container -->

	<%
		out.write(StandardPage.getFooter());
	%>

</body>

</html>