<%--
  Created by IntelliJ IDEA.
  User: alphb
  Date: 13/11/2017
  Time: 23:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
	<title>Title</title>
</head>
<body>
<%--<c:set var="root" value="${param.get('user')}" scope="request"/>--%>
<%--<c:set var="pw" value="${param.get('password')}" scope="request"/>--%>

<%--<c:set var="rand" value="${sessionScope.get('code')}" scope="session"/>--%>
<%--<c:set var="input" value="${param.get('code')}" scope="request"/>--%>

<%--<c:if test="${rand != input}">--%>
<%--<script>--%>
<%--alert("Code error");--%>
<%--location.href = "login.jsp"--%>
<%--</script>--%>
<%--</c:if>--%>
<%--<c:if test="${rand.equals(input)}">--%>
<%--<c:if test="${root.equals('521')}">--%>
<%--<c:if test="${pw != '125'}">--%>
<%--<script>--%>
<%--alert("Password error");--%>
<%--location.href = "login.jsp"--%>
<%--</script>--%>
<%--</c:if>--%>
<%--<c:if test="${pw.equals('125')}">--%>
<%--<c:redirect url="http://localhost:8888/page/Root/Manage/Index/index.jsp"/>--%>
<%--&lt;%&ndash;<c:redirect url="http://www.tok7.com/page/Root/Manage/Index/index.jsp"/>&ndash;%&gt;--%>
<%--</c:if>--%>
<%--</c:if>--%>
<%--</c:if>--%>

<c:set var="root" value="${param.get('user')}" scope="request"/>
<c:set var="pw" value="${param.get('password')}" scope="request"/>


<c:if test="${root.equals('root')}">
	<c:if test="${pw != 'root'}">
		<script>
            alert("Password error");
            location.href = "login.jsp"
		</script>
	</c:if>
	<c:if test="${pw.equals('root')}">
		<c:redirect url="http://localhost:8888/page/Root/Manage/Index/index.jsp"/>
		<%--<c:redirect url="http://www.tok7.com/page/Root/Manage/Index/index.jsp"/>--%>
	</c:if>
</c:if>
</body>
</html>
