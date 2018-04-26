<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Welocme</title>
	<link rel="icon" href="img/icon.ico" type="image/x-icon">
	<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="css/index.css">
	<script src="js/jquery-3.2.1.min.js"></script>
	<script src="bootstrap/js/bootstrap.min.js"></script>
	<%@ page language="java" pageEncoding="UTF-8" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
</head>
<style>
	
	nav {
		height: 50px;
		width: 100%;
		position: absolute;
		top: 10px;
		z-index: 1020;
		
	}
</style>
<body>
<div>
	<nav class="navbar navbar-default" role="navigation">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="index.jsp"></a>
			</div>
			<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li class="active"><a href="index.jsp">Main</a></li>
					<li><a href="talking">Talking</a></li>
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">Studying<span
								class="caret"></span></a>
						<ul class="dropdown-menu" role="menu">
							<li><a href="#">professional</a></li>
							<li class="divider"></li>
							<li><a href="page/English/index.jsp">english</a></li>
							<li class="divider"></li>
							<li><a href="page/Math/index.jsp">mathematics</a></li>
						</ul>
					</li>
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">Entertainment<span
								class="caret"></span></a>
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
						<a href="page/Into/login/login.jsp" data-toggle="modal" id="user">登录</a>
					</li>
					<%--登陆--%>
					<li>
						<a href="page/Into/register/register.jsp" data-toggle="modal">注册</a>
					
					</li>
					<%--注册--%>
				</ul>
			
			</div>
		</div>
	</nav>
	
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
						<p class="text-center"><a href="page/Music/index.jsp" class="btn btn-success text-center"
						                          role="button">Enter</a>
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
		
		</div>
	</div>
	
	<div>
		<hr>
		<p style="text-align: center"><a href="page/Root/Login/login.jsp">All Rights@tok7.com</a></p>
		<%--<p style="text-align: center">TencentQQ:469700722</p>--%>
	</div>

</footer>


<%if (session.getAttribute("session_user") != null) {%>
<script>

    var add1 = "<span class='caret'></span>"
    var add2 = "<ul class='dropdown-menu' role='menu'><li><a href='#'>个人中心</a></li> <li class='divider'></li><li> <a href='destroysession.jsp'>退出</a></li></ul>"
    if ($("#user").text() != "" && $("#user").text() != null) {
        $("#user").text("<%=session.getAttribute("session_user")%>");
        $("#user").append(add1);
        $("#user").parent().append(add2);

        $("#user").addClass("dropdown-toggle");
        $("#user").parent().addClass("dropdown");

        $("#user").attr("href", "#");
        $("#user").attr("data-toggle", "dropdown");

    }
</script>
<%}%>


<script src="js/index.js"></script>

</body>
</html>