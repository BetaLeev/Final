<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ include file="../../../Mysql/link.jsp" %>
<html>
<head>
	<title>修改编辑</title>
</head>
<body>
<c:set var="id" value="${param.id}" scope="page"/>
<sql:query dataSource="${snapshot}" var="edit">
	select * FROM user WHERE id = ${id};
</sql:query>

<c:forEach var="row" items="${edit.rows}">
	<form action="verify_modify.jsp?id=<c:out value="${row.id}"/>" method="post">
		id<p><c:out value="${row.id}"/></p>
		用户名<input type="text" name="name" value="<c:out value="${row.user}"/>">
		电话<input type="text" name="phone" value="<c:out value="${row.phone}"/>">
			<%--<a href="verify_modify.jsp?id=<c:out value="${row.id}"/>">确认</a>--%>
		<button type="submit">提交</button>
	</form>
</c:forEach>

</table>
</body>
</html>