<!--��Ҫ��ʾ���ģ����԰ѱ���ĳ�gb2312-->
<%@ page language="java" contentType="text/html;charset=gb2312" pageEncoding="gb2312" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<title>��� JSP Page.</title>
</head>
<body>
<font size="10">
	
	�������� <!--id ���������ڵ������ʱ�򴴽�һ������ͬ���ڣ� test.HelloWorld say = new test.HelloWorld();-->
	<jsp:useBean id="say" class="DAO.Test" scope="page"/>
	<%
		String somethingToSay = "";
		somethingToSay = say.getSaySomething();
		out.println(somethingToSay); //���Ĭ��ֵ��hello!
	%>
	</br>
	<%
		say.setSaySomething("my name is cqf!");//�ı�ֵ
		somethingToSay = say.getSaySomething();//���»�ȡ
		out.println(somethingToSay);//���Ϊ��my name is cqf!%>
	���� ����</font>
</body>
</html>
