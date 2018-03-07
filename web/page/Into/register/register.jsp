<%--
  Created by IntelliJ IDEA.
  User: alphb
  Date: 13/11/2017
  Time: 23:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="../../../bootstrap/css/bootstrap.min.css">
<script src="../../../js/jquery-3.2.1.min.js"></script>

<script src="../../../js/register/register_form.js"></script>
<html>
<head>
	<title>Register</title>
	<style>
		body {
			background-color: #245580;
		}
		* {
			padding: 0;
			margin: 0;
		}
		#form {
			text-align: center;
			border-radius: 22px;
			/*background-color: #a6e1ec;*/
			background-image: url("cc.jpg");
			position: fixed;
			top: 50%;
			left: 50%;
			min-width: 400px;
			min-height: 450px;
			max-height: 600px;
			width:30%;
			height: 70%;
			-webkit-transform: translateX(-50%) translateY(-50%);
		}
		.form-control {
			
			width: 80%;
			margin-top: 10px;
			left: 50%;
			-webkit-transform: translateX(12%);
		}
		#code {
			width: 100px;
			-webkit-transform: translateX(38%);
		}
		#image {
			margin-top: -32px;
			height: 30px;
		}
		.btn {
			margin-top: 30px;
			width: 75%;
			-webkit-transform: translateX(15%);
			background-color: goldenrod;
		}
		#remove {
			float: left;
			margin-top: 5px;
			margin-left: 5px;
		}
	</style>
</head>
<body>
<div id="form" class="form-group">
	<a href="../../../index.jsp">
		<span id="remove" class="glyphicon glyphicon-remove"></span>
	</a>
	<h2>
		Register
	</h2>
	<hr>
	<p>&nbsp</p>

<form  method="post" action="verify_register.jsp" role="form">
	<%--<div>--%>
		<input class="form-control" type="text" name="username" placeholder="User(Like 'leev')" id="user">
	<%--</div>--%>
	<%--<div>--%>
		<input class="form-control" type="text" name="phone" placeholder="Phone" id="phone">
	<%--</div>--%>
	<%--<div>--%>
		<input class="form-control"  type="password" name="password" placeholder="Password" id="password">
	<%--</div>--%>
	<%--<div>--%>
		<input class="form-control" type="password" name="confirm" placeholder="Confirm Password" id="con_password">
	<%--</div>--%>
	<%--<div>--%>
		<input class="form-control" type="text" name="code" maxlength="4" placeholder="Code" id="code">
		<img id="image" border="0" onclick="refresh()" src="../code.jsp" title="changeimage">
		<p></p>
		<div class=".btn">
			
			<button id="submit-register" type="submit" class="btn btn-primary btn-lg btn-block" onclick="">Register
			</button>
		
		</div>
	
</form>
</div>
<script type="text/javascript">

</script>
</body>
</html>
