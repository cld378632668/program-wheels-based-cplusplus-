/*
 * DBconn.java
 *
 * Created on 
 */
//package Show;
package Show;
import java.sql.*;

public class DBconn 
  {String DBDriver="com.mysql.jdbc.Driver";
   String ConnStr="jdbc:mysql://localhost/web";
   String MyUser="root";
   String MyPassword="";
   Connection conn = null;
   ResultSet rs = null;
   public DBconn()
     {try 
        {Class.forName(DBDriver);
        }
      catch(java.lang.ClassNotFoundException e) 
        {System.err.println("DBconn (): " + e.getMessage());
        }
     }
   public ResultSet executeQuery(String sql) 
     {rs = null;
      try
        {conn = DriverManager.getConnection(ConnStr,MyUser,MyPassword);
         Statement stmt = conn.createStatement();
         rs = stmt.executeQuery(sql);
        }
      catch(SQLException ex) 
        {System.err.println("aq.executeQuery:"+ex.getMessage());
        }
      return rs;
     }
  }

