<%--
  Created by IntelliJ IDEA.
  User: alphb
  Date: 13/11/2017
  Time: 23:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<html>
<head>
	<title></title>
</head>
<body>
<c:set var="user" value="${param.get('user')}" scope="request"/>
<c:set var="pw" value="${param.get('password')}" scope="request"/>


<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
                   url="jdbc:mysql://localhost:3306/Final?useUnicode=true&characterEncoding=utf-8"
                   user="root"  password=""/>

<sql:query dataSource="${snapshot}" var="result">
	SELECT user,password from user where user = '${user}' && password = '${pw}';
</sql:query>


<c:set var="rand" value="${sessionScope.get('code')}" scope="session"/>
<c:set var="input" value="${param.get('code')}" scope="request"/>

<c:if test="${rand!=input}">
	<script>
		alert("Code error");
        location.href = "login.jsp";
	</script>
</c:if>

<c:if test="${rand.equals(input)}">
	<c:if test="${empty result.rows}">
		<script>
            alert("Password error");
            location.href = "login.jsp";
		</script>
	</c:if>
	
	<c:if test="${not empty result.rows}">
		<script>
            alert("Successfully");
		</script>
		<c:set var="session_user" value="${user}" scope="session"/>
		<c:redirect url="../../../index.jsp"/>
	</c:if>
</c:if>




</body>
</html>
