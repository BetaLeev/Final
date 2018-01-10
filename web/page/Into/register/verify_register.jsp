<%--
  Created by IntelliJ IDEA.
  User: alphb
  Date: 13/11/2017
  Time: 23:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%--<%@ include file="../../Mysql/mysql.jsp" %>--%>

<html>
<head>
	<title>Title</title>
</head>
<body>
<c:set var="user" value="${param.get('username')}" scope="request"/>
<c:set var="phone" value="${param.get('phone')}" scope="request"/>
<c:set var="pw" value="${param.get('password')}" scope="request"/>
<c:set var="confirm" value="${param.get('confirm')}" scope="request"/>

<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
                   url="jdbc:mysql://localhost:3306/Final?useUnicode=true&characterEncoding=utf-8"
                   user="root"  password=""/>

<sql:query dataSource="${snapshot}" var="result">
	SELECT user from user where user = '${user}';
</sql:query>

<c:set var="rand" value="${sessionScope.get('code')}" scope="session"/>
<c:set var="input" value="${param.get('code')}" scope="request"/>

<c:if test="${rand!=input}">
	<script>
        alert("Code error");
        location.href = "register.jsp";
	</script>
</c:if>

<c:if test="${rand.equals(input)}">
	<c:choose>
		<c:when test="${pw.equals(confirm)}">
			<c:if test="${empty result.rows}">
				<sql:update dataSource="${snapshot}">
					INSERT INTO user (user,password,phone) VALUES ('${user}','${pw}',${phone});
				</sql:update>
				<script>
                    alert("Successfully");
                    location.href = "../../../index.jsp"
				</script>
			</c:if>
			<c:if test="${not empty result.rows}">
				<script>
					alert("The user had aleady register!")
					location.href = "register.jsp"
				</script>
			</c:if>
			
		</c:when>
		
		<c:otherwise>
				<script>
                    alert("The password was different");
                    location.href = "register.jsp"
				</script>
		</c:otherwise>
	</c:choose>
</c:if>




</body>
</html>
