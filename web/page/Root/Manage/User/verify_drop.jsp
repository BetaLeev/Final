<%--
  Created by IntelliJ IDEA.
  User: alphb
  Date: 13/11/2017
  Time: 23:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<%@ include file="../../../Mysql/link.jsp" %>
<html>
<head>
	<title>Title</title>
</head>
<body>
<c:set var="id" value="${param.id}" scope="page"/>
<c:set var="name" value="${param.name}" scope="page"/>

<c:set var="phone" value="${param.phone}" scope="page"/>

<sql:update dataSource="${snapshot}" var="update">
	update FROM user set name = ${name},phone = ${phone} WHERE id = ${id}
</sql:update>
<c:redirect url="../Index/index.jsp"/>

</body>
</html>
