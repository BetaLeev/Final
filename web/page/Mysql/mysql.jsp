<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@include file="link.jsp"%>

<html>
<head>
	<title>SELECT</title>
</head>
<body>
<!--
JDBC 驱动名及数据库 URL
数据库的用户名与密码，需要根据自己的设置
useUnicode=true&characterEncoding=utf-8 防止中文乱码
 -->
<%--<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"--%>
                   <%--url="jdbc:mysql://localhost:3306/Runoob?useUnicode=true&characterEncoding=utf-8"--%>
                   <%--user="root"  password=""/>--%>
<sql:query dataSource="${snapshot}" var="result">
	SELECT * from user;
</sql:query>
<h1>JSP 数据库测试</h1>
<table border="1" width="100%">
	<tr>
		<th>ID</th>
		<th>站点名</th>
		<th>站点地址</th>
	</tr>
	<c:forEach var="row" items="${result.rows}">
		<tr>
			<td><c:out value="${row.id}"/></td>
			<td><c:out value="${row.user}"/></td>
			<td><c:out value="${row.password}"/></td>
		</tr>
	</c:forEach>
</table>

</body>
</html>
 