<%@ page contentType="text/html;charset=gb2312" %> 
<%@page language="java" import="java.sql.*"%>
<jsp:useBean id="DBconn" scope="page" class="Show.DBconn"/>
<%!
public String getStr(String str)
{
	try
	{
		String temp_p=str;
		byte[] temp_t=temp_p.getBytes("ISO8859-1");
		String temp=new String(temp_t);
		return temp;
	}
	catch(Exception e)
	{
	 
	}
	return "null";
}
%>                 
  <html>
<head>
	<title>Untitled</title>
</head>

<body>                  
        <table border="0" width="100%" cellspacing="0" cellpadding="0" height="">                  
          <tr>                  
            <td>您要找的是</font>       
			</td>
		  </tr>
<%!
	String logname,email;
	boolean loginAttempt = false;
	String errorMessage = "";
String idMessage = "";
	//logname = request.getParameter("logname");
//	logpass = request.getParameter("logpass");

%>
<%
if(request.getParameterValues("findpass") != null 
&&request.getParameterValues("logname") != null)
{
	loginAttempt = true;
}
if (loginAttempt)
{	
	logname=request.getParameter("logname");
	
	logname=getStr(logname);
	
	String sql="select * from data where logname='"+logname+"'";
	//out.println(sql);
	ResultSet RS=DBconn.executeQuery(sql);
	
	int rowscount=0;
	try
	{
		while(RS.next())
		{
			rowscount++;
			errorMessage=RS.getString("em");
idMessage=RS.getString("id");
		}
	}
	catch(Exception e)
	{

	}
	if(rowscount!=0)
	{
		//errorMessage=RS.getString("em");
	}else response.sendRedirect("error.htm");
	
}
%>
	<tr><td height="40" >
	<font>您的em:<%=errorMessage%></font>
<font color=red>请记住此id:<%=idMessage%></font>		
	</td>
	</tr>
</table>
你可以<a href="index.htm">返回首页</a>&nbsp;&nbsp;<a href="Find.jsp">重新查找</a>&nbsp;&nbsp;或
         
<form name="form1" method="post" action="del_ok.jsp">
<table width="75%" border="1">
<input type="hidden" name="delid" value="<%=idMessage%>">
<input type="submit" name="Submit" value="删除此项">
</form>
<form name="form2" method="post" action="updata.jsp">
<table width="75%" border="1">
<input type="hidden" name="sid" value="<%=idMessage%>">
<input type="submit" name="Submit" value="更改此项">
</form>

         
        </td>
    </tr>
  </table>
</body>
</html>