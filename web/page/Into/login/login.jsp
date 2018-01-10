<%--
  Created by IntelliJ IDEA.
  User: alphb
  Date: 13/11/2017
  Time: 23:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="../../../bootstrap/css/bootstrap.min.css">

<html>
<head>
	<title>Title</title>
	<style>
		body {
			/*background-color:#a6e1ec ;*/
			background-color: dimgray;
		}
		* {
			padding: 0;
			margin: 0;
		}
		#form {
			text-align: center;
			border-radius: 22px;
			/*background-color:#245580 ;*/
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
			margin-top: -10px;
			margin-left: 5px;
		}
	</style>
</head>
<body>
<script type="text/javascript">
    function refresh() {
        //IE存在缓存,需要new Date()实现更换路径的作用
        document.getElementById("image").src="../code.jsp?"+new Date();
    }
</script>
<div id="form" class="form-group">

	<form action="verify_login.jsp" method="post" role="form">
	
	<a href="../../../index.jsp">
		<span id="remove" class="glyphicon glyphicon-remove"></span>
	</a>
	<h2>
		Sign
	</h2>
	<hr>
	<p>&nbsp</p>

	<%--<div>--%>
			<input class="form-control" type="text" name="user" placeholder="User">
			<%--</div>--%>
			<%--<div>--%>
			<%--<input class="form-control" type="text" name="phone" placeholder="Phone">--%>
			<%--</div>--%>
			<%--<div>--%>
			<input class="form-control"  type="password" name="password" placeholder="Password">
			<%--</div>--%>
			<%--<div>--%>
			<%--<input class="form-control" type="password" name="confirm" placeholder="Confirm Password">--%>
			<%--</div>--%>
			<%--<div>--%>
			<input class="form-control" type="text" name="code" maxlength="4" placeholder="Code" id="code">
			<img id="image" border="0" onclick="refresh()" src="../code.jsp" title="changeimage">
			<p></p>
			<div class=".btn">
				<button type="submit" class="btn btn-primary btn-lg btn-block" onclick="">Sign In</button>
			</div>
		<div class=".btn">
			<button type="button" class="btn btn-primary btn-lg btn-block" onclick="location.href='../register/register.jsp'">Create account</button>
		</div>
	
	
	</form>
</div>

</body>
</html>
