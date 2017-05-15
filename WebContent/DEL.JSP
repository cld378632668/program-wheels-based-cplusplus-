<%@ page contentType="text/html; charset=gb2312"%>
<%@ page language="java" import="java.sql.*"%>
<jsp:useBean id="DBconn" scope="page" class="Show.DBconn"/>

<html>
  <head>
????<title>Show MySQL!</title>
??</head>
??<body>



<%
	//???????id??????ʼ??Ϊ0
	int id;
	id=0;
	ResultSet RS = DBconn.executeQuery("select id from data order by id");
	try
	{
		while(RS.next())
		{	
			//id????ֵΪ???˵????id
			id=RS.getInt("id");
			out.println(RS.getString("id"));
		}
	}
	catch(Exception e)
	{
		out.println(e);
	}


%>
<form name="form1" method="post" action="del_ok.jsp">
  <table width="75%" border="1">
    <tr> 
      
    </tr>
    <tr> 
      <td width="41%">?Ҫɾ????d??</td>
      <td width="59%"> 
        
        <input type="text" name="delid">
      </td>
    </tr>

    <tr> 
      
      
       </td>
    </tr>
    <tr> 
      <td colspan="2">
       <div align="center">
          <input type="submit" name="Submit" value="Submit">
          <input type="reset" name="Submit2" value="Reset">
        </div>
    </tr> 
  </table>
</form>
</BODY>
</HTML>