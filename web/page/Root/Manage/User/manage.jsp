<%--
  Created by IntelliJ IDEA.
  User: alphb
  Date: 15/11/2017
  Time: 16:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ include file="../../../Mysql/link.jsp"%>
<html>
<head>
	<title>Title</title>
	<link rel="stylesheet" href="../../../../bootstrap/css/bootstrap.min.css">
	<style>
	
	</style>
</head>
<body>

<sql:query dataSource="${snapshot}" var="result">
	SELECT * FROM user;
</sql:query>


<%--总记录数--%>
<c:set var="number" value="${result.rowCount}" scope="page"/>
<%--每页显示记录数--%>
<c:set var="pagesize" value="4" scope="page"/>
<%--总共页数--%>
<c:set var="pagenumber" value="${(number+pagesize-1)/pagesize}"/>


<table class="table table-hover">
	<tr>
		<th>ID</th>
		<th>User</th>
		<th>Detail</th>
		<th>Operate</th>
	</tr>
	<c:forEach var="row" items="${result.rows}" begin="${param.start}" end="${param.start+pagesize-1}">
		
		<tr>
			<td><c:out value="${row.id}"/></td>
			<td><c:out value="${row.user}"/></td>
			<td><a href="modify.jsp?id=<c:out value="${row.id}"/>">Edit</a></td>
			<td><a href="drop.jsp?id=<c:out value="${row.id}"/>">Delete</a></td>
		</tr>
	</c:forEach>
</table>

<ul class="pager">
	<li><a href="manage.jsp?start=0">First</a></li>
	
	<c:choose>
		<c:when test="${param.start-pagesize>=0}">
			<li><a href="manage.jsp?start=${param.start-(1 * pagesize)}">Previous</a></li>
		</c:when>
		<c:otherwise>
			<li><a>Previous</a></li>
		</c:otherwise>
	</c:choose>
	
	<c:choose>
		<c:when test="${param.start+pagesize<number}">
			<li><a href="manage.jsp?start=${param.start + ( 1 * pagesize)}">Next</a></li>
		</c:when>
		<c:otherwise>
			<li><a>Next</a></li>
		</c:otherwise>
	</c:choose>
	
	<fmt:parseNumber var="pn" type="number" value="${pagenumber}" integerOnly="true"/>
	
	<li><a href="manage.jsp?start=${param.start * 0 + (pn - 1) * pagesize}">Last</a></li>
</ul>
</body>
</html>
