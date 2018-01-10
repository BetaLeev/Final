<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Leev</title>
	<link rel="icon" href="img/icon.ico" type="image/x-icon">
	<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<script src="js/jquery-3.2.1.min.js"></script>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%--<script src="http://lib.sinaapp.com/js/jquery/2.0.2/jquery-2.0.2.min.js"></script>--%>
	<script src="bootstrap/js/bootstrap.min.js"></script>
	<%--<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>--%>
	
	<%@ page import="java.io.*,java.util.*" %>
	
	<style>
	.carousel-inner {
		margin-top: -20px;
		height: 500px;
		
	}
		h3 {
			text-align: center;
		}
		/*#login li{*/
			/*background-color: #b9def0;*/
			/*margin-left: 4px;*/
			/*border-radius: 20px;*/
			/*!*height: 40px;*!*/
			/**/
		/*}*/
	/*#login li:hover {*/
		/*background-color: #a6e1ec;*/
	/*}*/
	</style>
</head>
<body>

<div>
	<nav class="navbar navbar-default" role="navigation">
		<div class="container-fluid">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<%--<img src="../img/kaola-5.png" alt="">--%>
				<a class="navbar-brand" href="index.jsp"></a>
			</div>
			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li class="active"><a href="index.jsp">Main</a></li>
					
					<li><a href="page/talking/talking.jsp">Talking</a></li>
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">Studying<span class="caret"></span></a>
						<ul class="dropdown-menu" role="menu">
							<li><a href="#">professional</a></li>
							<li class="divider"></li>
							<li><a href="page/English/index.jsp">english</a></li>
							<li class="divider"></li>
							<li><a href="page/Math/index.jsp">mathematics</a></li>
						</ul>
					</li>
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">Entertainment<span class="caret"></span></a>
						<ul class="dropdown-menu" role="menu">
							<li><a href="#"></a></li>
							<li><a href="#">YouTube</a></li>
							<li class="divider"></li>
							<li><a href="#">BiliBili</a></li>
						
						</ul>
					</li>
				</ul>
				<form class="navbar-form navbar-left" role="search">
					<div class="form-group">
						<input type="text" class="form-control" placeholder="search">
					</div>
					<button type="submit" class="btn btn-info">Search</button>
				</form>
				<ul class="nav navbar-nav navbar-right" id="login">
					<li>
						<%--<button class="btn btn-info">注册</button>--%>
						<a href="page/Into/login/login.jsp" data-toggle="modal" id="user">Sign in</a>
					</li>
					
					<li>
						<%--<button class="btn btn-success">登录</button>--%>
					<a href="page/Into/register/register.jsp" data-toggle="modal">Register</a>
					</li>
					
					<%--<li class="dropdown">--%>
						<%--<a href="#" class="dropdown-toggle" data-toggle="dropdown">Contact me<span class="caret"></span></a>--%>
						<%--<ul class="dropdown-menu" role="menu">--%>
							<%--&lt;%&ndash;点击弹出图片二维码&ndash;%&gt;--%>
							<%--<li><a href="#">QQ</a></li>--%>
							<%----%>
							<%--<li class="divider"></li>--%>
							<%--<li><a href="#">facebook</a></li>--%>
							<%--<li class="divider"></li>--%>
							<%--<li><a href="#">twitter</a></li>--%>
							<%--<li class="divider"></li>--%>
							<%--<li><a href="#">e-mail</a></li>--%>
						<%--</ul>--%>
					<%--</li>--%>
				</ul>
			</div>
		</div>
	</nav>
		<!-- /.navbar-collapse -->
		<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
				<li data-target="#carousel-example-generic" data-slide-to="1"></li>
			</ol>
			
			<!-- Wrapper for slides -->
			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<%--图片固定像素--%>
					<img src="img/2.jpg" alt="...1">
					<div class="carousel-caption">
					
					</div>
				</div>
				<div class="item">
					<img src="img/1.jpg" alt="...2">
					<div class="carousel-caption">
					
					</div>
				</div>
			
			</div>
			
			<!-- Controls -->
			<a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
				<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a>
			<a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
				<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<!--  <span class="sr-only">Next</span> -->
			</a>
		</div>
		<p></p>
		<section class="lanmu container">
			<div class="row">
				<div class="col-sm-6 col-md-3">
					<div class="thumbnail">
						<img src="img/kaola-1.png" alt="...">
						
						<div class="caption">
							<h3>qq</h3>
							<p></p>
							<p class="text-center"><a href="#" class="btn btn-success text-center" role="button">Enter</a></p>
						</div>
					</div>
				</div>
				
				<div class="col-sm-6 col-md-3">
					<div class="thumbnail">
						<img src="img/kaola-2.png" alt="...">
						
						<div class="caption">
							<h3>starSky</h3>
							<p></p>
							<p class="text-center"><a href="starSky.jsp" class="btn btn-success text-center" role="button">Enter</a></p>
						</div>
					</div>
				</div>
				
				<div class="col-sm-6 col-md-3">
					<div class="thumbnail">
						<img src="img/kaola-3.png" alt="...">
						
						<div class="caption">
							<h3>Poster</h3>
							<p></p>
							<p class="text-center"><a href="imoc/index.html" class="btn btn-success text-center" role="button">Enter</a></p>
						</div>
					</div>
				</div>
				
				<div class="col-sm-6 col-md-3">
					<div class="thumbnail">
						<img src="img/kaola-4.png" alt="...">
						
						<div class="caption">
							<h3>Music</h3>
							<p></p>
							<p class="text-center"><a href="#" class="btn btn-success text-center" role="button">Enter</a></p>
						</div>
					</div>
				</div>
			</div>
		</section>

</div>

<div>
	<p style="text-align: center"><a href="page/Root/Login/login.jsp">All Rights@tok7.com</a></p>
</div>
<c:if test="${not empty sessionScope.get(session_user)}">
	<script>
		var user = document.getElementById("user");
		user.innerHTML = <%=session.getAttribute("session_user")%>;
		user.href="#";
		console.log(user.innerHTML)
	</script>
</c:if>


</body>
</html>