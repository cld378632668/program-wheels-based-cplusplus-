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
  <table align="center" border="0" width="760" cellspacing="0" cellpadding="0" height="355">                  
	<tr>                  
		<td width="150" height="355" valign="top">                  
			                 
		</td>                  
		<td width="10" height="100%"></td>
		<td width="1" height="100%" ></td>
		<td width="10" height="100%"></td>
		<td width="589" height="331" valign="top">                       
        <table border="0" width="100%" cellspacing="0" cellpadding="0" height="307">                  
          <tr>                  
            <td>你可以再次<a href="Show.jsp">浏览全部</a>&nbsp;&nbsp;<a href="Add.jsp">添加</a>&nbsp;&nbsp;<a href="del.jsp">删除</a>&nbsp;&nbsp;<a href="Find.jsp">查找</a></font>       
			</td>
		  </tr>

	
		  		  
			<tr> <td colspan="2" align="center">
              提示信息：
            </td>
          </tr>
		  <tr> <td colspan="2" align="center">
<%
String userID,newPass,cfmnewpass,errorMsg;
userID=request.getParameter("tid");

newPass=request.getParameter("newpass");
cfmnewpass=request.getParameter("cfmnewpass");
errorMsg="";
%>  

<%


	String sqlEdit;
	sqlEdit="update data set logname='"+newPass+"' where id='"+userID+"'";
	DBconn.executeQuery(sqlEdit);
	
%>
<%
sqlEdit="update data set em='"+cfmnewpass+"' where id='"+userID+"'";
	DBconn.executeQuery(sqlEdit);
errorMsg="您已经成功的修改完";
%>  


<%=errorMsg%><%=userID%>
            </td>
          </tr>
         
		
						<tr> 
			  <td colspan="2" height="150" align="right">&nbsp;</td>

			</tr>
	   
        </table>                  


        </td>
    </tr>
  </table>
