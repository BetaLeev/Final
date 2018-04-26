<!DOCTYPE html>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
	
	<%@ page language="java" pageEncoding="UTF-8" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<link rel="stylesheet" href="../../bootstrap/css/bootstrap.min.css">
	<script src="../../js/jquery-3.2.1.min.js"></script>
	<script src="js/wangEditor.js"></script>
	
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
			height: 520px;
			width: 95%;
			margin-left: 2.15%;
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
		}
		
		.gridbox {
			margin-right: 0;
			float: left;
		}
		
		.blog_title {
			text-align: center;
			
			width: 20%;
			margin-left: 42%;
			
		}
		
		.blog_content {
			margin-top: 10px;
			color: #2e6da4;
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
					<form role="form" action="/addArticle" method="post">
						<%--<form action="addArticle" method="get">--%>
						
						<div class="blog_title">
							<div class="form-group">
								<label>标题</label>
								<input type="text" class="form-control" placeholder="标题输入" maxlength="10" name="title">
							</div>
						
						</div>
						
						
						<div class="blog_content">
							<div id="editor">
							
							</div>
							<div>
								<br>
								<input type="hidden" value="" name="content" id="content">
								<input type="submit" value="确认发布" id="sbt">
							</div>
						
						</div>
					</form>
				</div>
			</div>
		</div>
		<div class="gridbox gridfooter">
			<div class="footer">
			</div>
		</div>
	</div>
</div>
<script>
    document.getElementById("sbt").addEventListener("click", function () {
        var content = editor.txt.text();
        document.getElementById("content").value = content;
    }, false);

    var E = window.wangEditor;
    var editor = new E('#editor');


    editor.create();


</script>
</body>
</html>
