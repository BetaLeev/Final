<%--
  Created by IntelliJ IDEA.
  User: alphb
  Date: 18/11/2017
  Time: 22:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<%@ include file="../../../Mysql/link.jsp"%>
<html>
<head>
	<title>Title</title>
</head>
<body>
<sql:query dataSource="${snapshot}" var="result">
SELECT * FROM message;
</sql:query>
<h1>JSP Message Manage</h1>
</body>
</html>
