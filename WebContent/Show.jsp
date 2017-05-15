<%@ page contentType="text/html; charset=gb2312"%>
<%@ page language="java" import="java.sql.*"%>
<jsp:useBean id="DBconn" scope="page" class="Show.DBconn"/>
<html>
  <head>
　　<title>Show MySQL!</title>
　</head>
　<body>
　 
你可以再次<a href="Show.jsp">浏览全部</a>&nbsp;&nbsp;<a href="Add.jsp">添加</a>&nbsp;&nbsp;<a href="del.jsp">删除</a>&nbsp;&nbsp;<a href="Find.jsp">查找</a>    
　　<%
      ResultSet RS = DBconn.executeQuery
      ("SELECT * FROM data");
      while (RS.next()) {
        out.print("<h1>" + RS.getString("id") + "&nbsp;" + RS.getString("logname") + "&nbsp;" + RS.getString("em") + "</h1>");
      }
      RS.close();
     %>
　</body >
</html >
