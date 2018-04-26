<!DOCTYPE html>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
	
	<%@ page language="java" pageEncoding="UTF-8" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<script src="../../js/jquery-3.2.1.min.js"></script>
	<%--<script src="https://unpkg.com/vue/dist/vue.js"></script>--%>
	<%--<script src="https://unpkg.com/vue-router/dist/vue-router.js"></script>--%>
	<%@page import="dao2.MessageDao" %>
	<%@ page import="java.util.ArrayList" %>
	<%@ page import="model.Message" %>
	<style>
		
		body {
			font-family: "Lucida Sans", Verdana, sans-serif;
			background-color: #9acfea;
			padding: 0;
			margin: 0;
		}
		
		.header {
			padding: 1%;
			background-color: yellow;
		}
		
		.main {
			padding: 2%;
			height: 460px;
			width: 95%;
			margin-left: 1.5%;
			background-color: pink;
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
		}
		
		.gridmain {
			width: 100%;
		}
		
		.main {
			padding: 1%;
			text-align: center;
		}
		
		.gridbox {
			margin-right: 0;
			float: left;
		}
		
		.blog_content {
			text-align: left;
			margin-top: 10px;
			color: #2e6da4;
			float: left;
			font-size: 1.3em;
		}
	
	
	</style>
</head>
<body>

<div class="gridcontainer" id="app">
	<div class="gridwrapper">
		<div class="gridbox gridheader">
			<div class="header">
				<h1></h1>
			</div>
		</div>
		
		<div class="gridbox gridmain">
			<div class="main">
				<div class="menu_message">
					<div class="blog_title">
						标题：${message.message_title}
					</div>
					
					<div class="blog_date">
						日期${message.message_date}
					</div>
					
					<div class="blog_content">
						日期${message.message_content}
					</div>
				</div>
			</div>
		</div>
		<div class="gridbox gridfooter">
			<div class="footer">
			</div>
		</div>
	</div>
</div>

</body>
</html>
