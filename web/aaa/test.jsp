<!--需要显示中文，所以把编码改成gb2312-->
<%@ page language="java" contentType="text/html;charset=gb2312" pageEncoding="gb2312" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<title>你好 JSP Page.</title>
</head>
<body>
<font size="10">
	
	　　　　 <!--id 就像我们在调用类的时候创建一个对像，同等于： test.HelloWorld say = new test.HelloWorld();-->
	<jsp:useBean id="say" class="DAO.Test" scope="page"/>
	<%
		String somethingToSay = "";
		somethingToSay = say.getSaySomething();
		out.println(somethingToSay); //输出默认值：hello!
	%>
	</br>
	<%
		say.setSaySomething("my name is cqf!");//改变值
		somethingToSay = say.getSaySomething();//重新获取
		out.println(somethingToSay);//输出为：my name is cqf!%>
	　　 　　</font>
</body>
</html>
