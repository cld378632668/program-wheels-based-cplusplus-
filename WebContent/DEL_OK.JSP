<%@page contentType="text/html;charset=gb2312"%>
<%@page language="java" import="java.sql.*" %>
<jsp:useBean id="DBconn" scope="session" class="Show.DBconn"/>

<html>
  <head>
　　<title>Show MySQL!</title>
　</head>
　<body>
<%
String id;

id=request.getParameter("delid");
%>
<%
DBconn.executeQuery("delete from data where id='"+id+"'");

%>
<%
DBconn.executeQuery("OPTIMIZE TABLE data");//OPTIMIZE 是收回删除的空间

%>
数据<%=id%>成功删除.<br>
<br>

你可以再次<a href="Show.jsp">浏览全部</a>&nbsp;&nbsp;<a href="Add.jsp">添加</a>&nbsp;&nbsp;<a href="del.jsp">删除</a>&nbsp;&nbsp;<a href="Find.jsp">查找</a>

</BODY>
</HTML>