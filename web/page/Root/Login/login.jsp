<!DOCTYPE html>
<html>
<head>
	<!-- Standard Meta -->
	<meta charset="utf-8"/>
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
	
	<!-- Site Properties -->
	<title>Login Manager</title>
	<link rel="stylesheet" type="text/css" href="../../../Semantic-UI/dist/components/reset.css">
	<link rel="stylesheet" type="text/css" href="../../../Semantic-UI/dist/components/site.css">
	
	<link rel="stylesheet" type="text/css" href="../../../Semantic-UI/dist/components/container.css">
	<link rel="stylesheet" type="text/css" href="../../../Semantic-UI/dist/components/grid.css">
	<link rel="stylesheet" type="text/css" href="../../../Semantic-UI/dist/components/header.css">
	<link rel="stylesheet" type="text/css" href="../../../Semantic-UI/dist/components/image.css">
	<link rel="stylesheet" type="text/css" href="../../../Semantic-UI/dist/components/menu.css">
	
	<link rel="stylesheet" type="text/css" href="../../../Semantic-UI/dist/components/divider.css">
	<link rel="stylesheet" type="text/css" href="../../../Semantic-UI/dist/components/segment.css">
	<link rel="stylesheet" type="text/css" href="../../../Semantic-UI/dist/components/form.css">
	<link rel="stylesheet" type="text/css" href="../../../Semantic-UI/dist/components/input.css">
	<link rel="stylesheet" type="text/css" href="../../../Semantic-UI/dist/components/button.css">
	<link rel="stylesheet" type="text/css" href="../../../Semantic-UI/dist/components/list.css">
	<link rel="stylesheet" type="text/css" href="../../../Semantic-UI/dist/components/message.css">
	<link rel="stylesheet" type="text/css" href="../../../Semantic-UI/dist/components/icon.css">
	
	<script src="../../../js/jquery-3.2.1.min.js"></script>
	<script src="../../../Semantic-UI/dist/components/form.js"></script>
	<script src="../../../Semantic-UI/dist/components/transition.js"></script>
	
	<style type="text/css">
		body {
			background-color: #DADADA;
		}
		
		body > .grid {
			height: 100%;
		}
		
		.image {
			margin-top: -100px;
		}
		
		.column {
			max-width: 450px;
		}
	</style>
	
	<%--<script>--%>
	<%--$(document)--%>
	<%--.ready(function () {--%>
	<%--$('.ui.form')--%>
	<%--.form({--%>
	<%--fields: {--%>
	<%--email: {--%>
	<%--identifier: 'email',--%>
	<%--rules: [--%>
	<%--{--%>
	<%--type: 'empty',--%>
	<%--prompt: 'Please enter your e-mail'--%>
	<%--},--%>
	<%--{--%>
	<%--type: 'email',--%>
	<%--prompt: 'Please enter a valid e-mail'--%>
	<%--}--%>
	<%--]--%>
	<%--},--%>
	<%--password: {--%>
	<%--identifier: 'password',--%>
	<%--rules: [--%>
	<%--{--%>
	<%--type: 'empty',--%>
	<%--prompt: 'Please enter your password'--%>
	<%--},--%>
	<%--{--%>
	<%--type: 'length[6]',--%>
	<%--prompt: 'Your password must be at least 6 characters'--%>
	<%--}--%>
	<%--]--%>
	<%--}--%>
	<%--}--%>
	<%--})--%>
	<%--;--%>
	<%--})--%>
	<%--;--%>
	<%--</script>--%>
	
</head>
<body>

<div class="ui middle aligned center aligned grid">
	<div class="column">
		<h2 class="ui teal image header">
			<%--<img src="assets/images/logo.png" class="image">--%>
			<div class="content">
				Log-in to your manage
			</div>
		</h2>
		<form class="ui large form" method="post" action="verify_login.jsp">
			<div class="ui stacked segment">
				<div class="field">
					<div class="ui left icon input">
						<i class="user icon"></i>
						<%--<input type="text" name="email" placeholder="E-mail address">--%>
						<input type="text" name="user" placeholder="User">
					
					</div>
				</div>
				<div class="field">
					<div class="ui left icon input">
						<i class="lock icon"></i>
						<input type="password" name="password" placeholder="Password">
					</div>
				</div>
				<div class="ui fluid large teal submit button">
					<input class="ui fluid large teal submit button" type="submit" value="Login">
				</div>
			</div>
			
			<div class="ui error message"></div>
		
		</form>
		
		<div class="ui message">
			join to us? <a href="#">Join</a>
		</div>
	</div>
</div>

</body>

</html>
