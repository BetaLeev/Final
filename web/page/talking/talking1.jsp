<!DOCTYPE html>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
	
	<%@ page language="java" pageEncoding="UTF-8" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<script src="../../js/jquery-3.2.1.min.js"></script>
	<%--<script src="https://unpkg.com/vue/dist/vue.js"></script>--%>
	<%--<script src="https://unpkg.com/vue-router/dist/vue-router.js"></script>--%>
	
	<style>
		
		body {
			font-family: "Lucida Sans", Verdana, sans-serif;
			background-color: #9acfea;
			padding: 0;
			margin: 0;
		}
		
		.main img {
			width: 100%;
		}
		
		h1 {
			font-size: 1.625em;
		}
		
		h2 {
			font-size: 1.375em;
		}
		
		.header {
			padding: 1%;
			background-color: yellow;
		}
		
		.menuitem {
			margin: 4%;
			padding: 0.4%;
			height: 80px;
			border-radius: 10px;
			background-color: #5bc0de;
		}
		
		.main {
			padding: 2%;
			height: 460px;
			background-color: pink;
		}
		
		.right {
			padding: 4%;
			background-color: #CDF0F6;
		}
		
		.footer {
			padding: 1%;
			text-align: center;
			background-color: #f1f1f1;
			border: 1px solid #e9e9e9;
			font-size: 0.625em;
		}
		
		.gridcontainer {
			width: 100%;
			background-color: #9acfea;
		}
		
		.gridwrapper {
			overflow: hidden;
		}
		
		.gridbox {
			margin-bottom: 2%;
			margin-right: 2%;
			float: left;
		}
		
		.gridheader {
			width: 100%;
		}
		
		.gridmenu {
			padding: 1%;
			width: 78%;
		}
		
		.gridmain {
			width: 13%;
		}
		
		.gridfooter {
			width: 100%;
			margin-bottom: 0;
		}
		
		@media only screen and (max-width: 500px) {
			.gridmenu {
				width: 100%;
			}
			
			.menuitem {
				margin: 1%;
				padding: 1%;
			}
			
			.gridmain {
				width: 100%;
			}
			
			.main {
				padding: 1%;
				
			}
			
			.gridbox {
				margin-right: 0;
				float: left;
			}
		}
		
		.blog_id {
			float: left;
			background-color: #3affff;
		}
		
		.blog_title {
			float: left;
			margin-left: 30px;
		}
		
		.blog_content {
			clear: both;
			color: red;
			border: groove 1px salmon;
			border-radius: 3px;
			height: 60px;
			top: 15px;
			overflow-y: auto;
		}
		
		.blog_date {
			position: relative;
			color: white;
			float: right;
			
		}
	
	</style>
</head>
<body>

<div class="gridcontainer" id="app">
	<div class="gridwrapper">
		<div class="gridbox gridheader">
			<div class="header">
				<h1>管理员个人博客</h1>
			</div>
		</div>
		<div class="gridbox gridmenu" id="blog">
			
			<c:forEach begin="0" items="${list}" step="1" var="item">
				<div class="menuitem">
					
					<div class="blog_id">
						<a href='article?id=${item.message_id}'>阅读全文</a>
					</div>
					
					<div class="blog_title">
						标题：${item.message_title}
					</div>
					
					<div class="blog_date">
						日期${item.message_date}
					</div>
					
					<div class="blog_content">
						日期${item.message_content}
					</div>
				
				
				</div>
			</c:forEach>
		
		
		</div>
		<div class="gridbox gridmain">
			<div class="main">
				<%--<a href="add.jsp">添加博文</a>--%>
				<br>
				<%--<a href="manage.jsp">管理文章</a>--%>
				<br>
				<a href="#">查找文章</a>
			</div>
		</div>
		<div class="gridbox gridfooter">
			<div class="footer">
				<p>管理员.</p>
			</div>
		</div>
	</div>
</div>

</body>
</html>
