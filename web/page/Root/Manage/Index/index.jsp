<%--
  Created by IntelliJ IDEA.
  User: alphb
  Date: 15/11/2017
  Time: 16:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../../../Mysql/link.jsp"%>
<html>
<head>
	<title>ADMINISTRACTOR</title>
	<style>
		* {
			margin: 0;
			padding: 0;
		}
		body {
			background-color:#F0F0F0;
		}
		nav {
			background-color: white;
			height: 45px;
		}
		li {
			list-style-type: none;
		}
		.div {
			float: left;
		}
		#content{
			margin-top: 35px;
			width: 80%;
			background-color: #2aabd2;
			z-index: 1;
			
		}
		#main-control {
			background-color:#DFE0DF;
			width: 20%;
			height: 400px;
			position: relative;
			z-index: 2;
			box-shadow: 0px 0px 10px #888888;
		}
		#ui-view {
			width: 80%;
			height: 400px;
			background-color:#FFFFFF;
			position: relative;
			z-index: 2;
			
		}
		iframe {
			height: 300px;
			width: auto;
			/*overflow: hidden;*/
			
		}
		#main-control li {
			/*margin-left: -60px;*/
			margin-top: 10px;
		
		}
		h2 {
			color: #616161;
		}
		#main-control a {
			line-height: 30px;
			font-size: 18px;
			text-decoration-line: none;
			color: #535353;
		}
		#main-control li:hover {
			background-color: #EDEDED;
		}
	</style>
</head>
<body>
<nav>

</nav>
<div>
	<center>
		<div id="content">
			<div id="main-control" class="div">
				<ul>
					<p>&nbsp</p>
					<h2>管理</h2>
					<p>&nbsp</p>
					<li><a href="../User/view.jsp" target="iframe-show">用户视图</a></li>
					<li><a href="../User/increase.jsp" target="iframe-show">添加用户</a></li>
					<li><a href="../User/manage.jsp" target="iframe-show">用户管理</a></li>
					<li><a href="../../../../index.jsp" >首页</a></li>
					
				</ul>
				
			</div>
			<%----%>
			<div id="ui-view" class="div">
				
				<p>&nbsp</p>
				<p>&nbsp</p>
				<p>&nbsp</p>
				<%--<p>&nbsp</p>--%>
		
				<iframe src="../User/view.jsp" frameborder="0" name="iframe-show" scrolling="no"></iframe>
			</div>
			
		</div>
	</center>
</div>
</body>
</html>
