<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Welocme</title>
	<link rel="icon" href="img/icon.ico" type="image/x-icon">
	<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<script src="js/jquery-3.2.1.min.js"></script>
	<script src="bootstrap/js/bootstrap.min.js"></script>
	
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	
	<style>
		body {
			background-color: aliceblue;
			cursor: url("img/cursor.cur"), default;
			
		}
		
		body a {
			cursor: url("img/pointer.cur"), pointer;
		}
		
		/*body｛cursor：pointer｝*/
		
		.carousel-inner {
		margin-top: -20px;
		height: 500px;
		}
		h3 {
			text-align: center;
		}
		
		#load_img {
			width: 100%;
			height: 500px;
		}
		
		.side li {
			list-style-type: none;
			background-color: black;
			display: inline-block;
			top: 86%;
			height: 35px;
			width: 35px;
			left: 94.5%;
			z-index: 1010;
			position: fixed;
		}
		
		/*.feedback img {*/
		/*top: 1390px;*/
		/*height: 100px;*/
		/*width: 100px;*/
		/*left: 60%;*/
		/*position: absolute;*/
		/*z-index: 101;*/
		/*}*/
		
		#jpg img {
			width: 400px;
		}
		.side img {
			height: 35px;
			width: 35px;
		}
		
		.side li:hover {
			background-color: red
		}
		
		#footer_menu {
			height: 300px;
			background-color: #b9def0;
		}
		
		#footer_menu div {
			float: left;
		}
		
		#footer_menu li {
			list-style-type: none;
			font-size: 2.4rem;
			margin-bottom: 5%;
		}
		
		#footer_menu_left {
			width: 55%;
		}
	
	
	</style>
</head>
<body>
<div id="nav">

</div>
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
				<%--搜索结束--%>
				
				
				<ul class="nav navbar-nav navbar-right" id="login">
					<li>
						<a href="page/Into/login/login.jsp" data-toggle="modal" id="user">Sign in</a>
					</li>
					<%--登陆--%>
					<li>
					<a href="page/Into/register/register.jsp" data-toggle="modal">Register</a>
					</li>
					<%--注册--%>
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
					<img alt="...1" id="load_img" src=""/>
					<div class="carousel-caption">
					</div>
				</div>
				
				<div class="item">
					<img src="img/2.jpg" alt="...2" style="width: 100%;height: 500px"/>
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
	
	<div class="side">
		<ul>
			<li style="border:none;" id="sidetop">
				<a class="sidetop">
					<img src="img/top.png"/>
				</a>
			</li>
		</ul>
	</div>
	
	
	<section class="lanmu container">
		<div class="row">
			<div class="col-sm-6 col-md-3">
				<div class="thumbnail">
					<img src="img/kaola-1.png" alt="...">
					
					<div class="caption">
						<h3>qq</h3>
						<p></p>
						<p class="text-center"><a href="#" class="btn btn-success text-center" role="button">Enter</a>
						</p>
					</div>
				</div>
			</div>
			
			<div class="col-sm-6 col-md-3">
				<div class="thumbnail">
					<img src="img/kaola-2.png" alt="...">
					
					<div class="caption">
						<h3>starSky</h3>
						<p></p>
						<p class="text-center"><a href="starSky.jsp" class="btn btn-success text-center" role="button">Enter</a>
						</p>
					</div>
				</div>
			</div>
			
			<div class="col-sm-6 col-md-3">
				<div class="thumbnail">
					<img src="img/kaola-3.png" alt="...">
					
					<div class="caption">
						<h3>Poster</h3>
						<p></p>
						<p class="text-center"><a href="imoc/index.html" class="btn btn-success text-center"
						                          role="button">Enter</a></p>
					</div>
				</div>
			</div>
			
			<div class="col-sm-6 col-md-3">
				<div class="thumbnail">
					<img src="img/kaola-4.png" alt="...">
					
					<div class="caption">
						<h3>Music</h3>
						<p></p>
						<p class="text-center"><a href="#" class="btn btn-success text-center" role="button">Enter</a>
						</p>
					</div>
				</div>
			</div>
		</div>
	</section>
	
	<section class="lanmu container">
		<div class="row">
			<div class="col-sm-6 col-md-3">
				<div class="thumbnail">
					<img src="img/kaola-1.png" alt="...">
					
					<div class="caption">
						<h3>qq</h3>
						<p></p>
						<p class="text-center"><a href="#" class="btn btn-success text-center" role="button">Enter</a>
						</p>
					</div>
				</div>
			</div>
			
			<div class="col-sm-6 col-md-3">
				<div class="thumbnail">
					<img src="img/kaola-2.png" alt="...">
					
					<div class="caption">
						<h3>starSky</h3>
						<p></p>
						<p class="text-center"><a href="starSky.jsp" class="btn btn-success text-center" role="button">Enter</a>
						</p>
					</div>
				</div>
			</div>
			
			<div class="col-sm-6 col-md-3">
				<div class="thumbnail">
					<img src="img/kaola-3.png" alt="...">
					
					<div class="caption">
						<h3>Poster</h3>
						<p></p>
						<p class="text-center"><a href="imoc/index.html" class="btn btn-success text-center"
						                          role="button">Enter</a></p>
					</div>
				</div>
			</div>
			
			<div class="col-sm-6 col-md-3">
				<div class="thumbnail">
					<img src="img/kaola-4.png" alt="...">
					
					<div class="caption">
						<h3>Music</h3>
						<p></p>
						<p class="text-center"><a href="#" class="btn btn-success text-center" role="button">Enter</a>
						</p>
					</div>
				</div>
			</div>
		</div>
	</section>

</div>
<footer>
	<div id="footer_menu">
		<div id="footer_menu_left">
			<h2>&nbsp</h2>
			<ul>
				
				<li>Message</li>
				<li>Help</li>
				<li>About</li>
			</ul>
		</div>
		
		<div>
			<%--<img id="footer_img" src="img/feedback.jpg" alt="">--%>
		</div>
	</div>
	
	<div>
		<hr>
		<p style="text-align: center"><a href="page/Root/Login/login.jsp">All Rights@tok7.com</a></p>
		<p style="text-align: center">TencentQQ:469700722</p>
	</div>
</footer>


<%--<c:if test="${not empty sessionScope.get(session_user)}">--%>
<%----%>
<%--<script>--%>
<%--var user = document.getElementById("user");--%>
<%--user.innerHTML = <%=session.getAttribute("session_user")%>;--%>
<%--user.href="#";--%>
<%--console.log(user.innerHTML)--%>
<%--</script>--%>
<%--</c:if>--%>

<script src="js/index.js"></script>

</body>
</html>