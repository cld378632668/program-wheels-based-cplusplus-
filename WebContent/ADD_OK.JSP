<%@page contentType="text/html;charset=gb2312"%>
<%@page language="java" import="java.sql.*" %>
<jsp:useBean id="DBconn" scope="session" class="Show.DBconn"/>

<html>
  <head>
　　<title>Show MySQL!</title>
　</head>
　<body>
<%

String name,pid;


name=request.getParameter("name");
pid=request.getParameter("pid");



String sql;
ResultSet RS;
sql="insert into data(id,logname,em) values('','"+name+"','"+pid+"')";
RS=DBconn.executeQuery(sql);
%>
数据<%=name%>及<br>
新数据<%=pid%> 已经被成功添加。<br>
<br>

你可以再次<a href="Show.jsp">浏览全部</a>&nbsp;&nbsp;<a href="Add.jsp">添加</a>&nbsp;&nbsp;<a href="del.jsp">删除</a>&nbsp;&nbsp;<a href="Find.jsp">查找</a>
</BODY>
</HTML>
