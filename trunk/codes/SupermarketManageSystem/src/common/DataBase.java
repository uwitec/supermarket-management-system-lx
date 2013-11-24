/** access SQLserver2008 database through JDBC Driver */


package common;
import java.sql.*;
import javax.naming.*;
import javax.sql.*;
import java.util.*;

public class DataBase {

  //private ArrayList books;
  private String dbUrl =  "jdbc:microsoft:sqlserver://localhost:1433;DatabaseName=ManagermentDB";
  private String dbUser = "sa";
  private String dbPwd = "Server2008";

  public DataBase() throws Exception{
     Class.forName("com.microsoft.jdbc.sqlserver.SQLServerDriver");
  }

  public Connection getConnection()throws Exception{
      return java.sql.DriverManager.getConnection(dbUrl,dbUser,dbPwd);
  }

  public void closeConnection(Connection con){
    try{
        if(con!=null) con.close();
      }catch(Exception e){
        e.printStackTrace();
      }
  }

  public void closePrepStmt(PreparedStatement prepStmt){
    try{
        if(prepStmt!=null) prepStmt.close();
      }catch(Exception e){
        e.printStackTrace();
      }
  }

  public void closeResultSet(ResultSet rs){
    try{
        if(rs!=null) rs.close();
      }catch(Exception e){
        e.printStackTrace();
      }
  }
 public static void close( ResultSet rs, Statement st, Connection conn )
	{
		try
		{
			if( rs!=null ) rs.close();
		}
		catch( SQLException ex ) { };
	
		try
		{
			if( st!=null ) st.close();
		}
		catch( SQLException ex ) { };
	
		try
		{
			if( conn!=null ) conn.close();
		}
		catch( SQLException ex ) { };
	}
  
}

