<%@ page contentType="text/html;charset=gb2312" %> 
<%@page language="java" import="java.sql.*"%>
<jsp:useBean id="DBconn" scope="page" class="Show.DBconn"/>
<%
String id;
id=request.getParameter("sid");
%>  
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

<table align="center" border="0" width="760" cellspacing="0" cellpadding="0" height="355">                  
	<tr>                  
		<td width="150" height="355" valign="top">                  
			                 
		</td>                  
		<td width="10" height="100%"></td>
		<td width="1" height="100%" ></td>
		<td width="10" height="100%"></td>
		<td width="589" height="331" valign="top" background="images/bg1.gif">                       
        <table border="0" width="100%" cellspacing="0" cellpadding="0" height="307">                  
          <tr>                  
            <td>修改</font>       
			</td>
		  </tr>
 		  		  	<form action="edit_ok.jsp" method="post">
			<tr><td align="right" height="32" width="40%">id名：</td>
            <td>
			  <%=id%>
            </td>
          </tr>
          

		  <tr> 
            <td align="right"  height="32">新名字：</td>
            <td>
              <input type="text" name="newpass">
            </td>
          </tr>

		  <tr> 
            <td align="right"  height="32">新em：</td>
            <td>
              <input type="text" name="cfmnewpass">
<input type="hidden" name="tid" value="<%=id%>">
            </td>
          </tr>
          <tr> <td colspan="2" align="center">
              <input type="submit" value="修改" name="editpass">
            </td>
          </tr>
		  </form>
						<tr> 
			  <td colspan="2" height="150" align="right">&nbsp;</td>
			</tr>

	   
        </table>                  
        </td>
    </tr>
  </table>
</body>

</html>