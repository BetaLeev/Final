<%--
  Created by IntelliJ IDEA.
  User: alphb
  Date: 21/04/2018
  Time: 21:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<title>Title</title>
</head>
<body>
<%
	session.removeAttribute("session_user");

%>
<script type="text/javascript">
    window.location = "index.jsp";
</script>
</body>
</html>
