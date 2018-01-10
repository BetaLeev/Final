<%--
  Created by IntelliJ IDEA.
  User: alphb
  Date: 13/11/2017
  Time: 23:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<title>Administrator</title>
	<link rel="stylesheet" href="../../../bootstrap/css/bootstrap.min.css">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<style>
	.form-group {
		width: 30%;
		margin: auto auto;
		background-color: pink;
	}
	
	.form-control {
		width: 200px;
		margin-top: 10px;
	}
	#code {
		width: 135px;
		display: inline;
	}
		#image {
		
		}
	</style>
</head>
<body>
<div style="text-align: center">
	<form action="verify_login.jsp" method="post">
	<div><label for="">ID</label><input type="text" name="user"></div>
	<div><label for="">PASSWORD</label><input type="password" name="password"></div>
		<div><label for="">Code：</label><input type="text" name="code" maxlength="4">
			<img id="image" border="0" onclick="refresh()" src="../../Into/code.jsp" title="changeimage">
		</div>
		<div><input type="submit" value="Log In"></div>
	</form>
</div>

</body>
</html>
