
package login;

import java.sql.*;
import java.util.*;
import javax.naming.*;
import javax.sql.*;
import common.*;
import login.*;


public class LoginBean
{
	
  public int getUsersLoginInfor(String UserName,String PassWords, String UserType) throws Exception {
               Connection con=null;
               Statement  Stmt=null;
               DataBase database = new DataBase();
               ResultSet rs =null;
               int nResult=0;
         try {
               con = database.getConnection();                            
               String sql = "select* from Users where ( UserType='"+UserType+"')and(UserName='"
                            +UserName+"')and(PassWords='"+PassWords+"')"; 
               Stmt = con.createStatement();
               rs = Stmt.executeQuery( sql );
              if (rs.next())
                           {
                           	sql = "select * from Employees where EmpName='"+UserName+"'";
                           	rs = Stmt.executeQuery( sql );
                           	if (rs.next())
                           	   {
                           		nResult=1;//查询正确
                           		}
                           	else{
                           		nResult=3;//公司不存在该员工
                           		}
                           		 
                           }  	
    	       else        
    	                   {
    	                 	nResult=2;
    	      	           }
     	      return nResult;                                 
              }
         catch( SQLException ex )
	    	 {
		 	        ex.printStackTrace( System.err );
			        nResult=0;
                    return nResult;
	    	 }     
        finally
              {
               database.close(null,Stmt,con);
               }
  } 
    public int SelectOneUsersLoginInfor( String UserId,String UserName,String PassWords) throws Exception {
               Connection con=null;
               Statement  Stmt=null;
               DataBase database = new DataBase();
               ResultSet rs =null;
               int nResult=0;
         try {
               con = database.getConnection();                            
               String sql = "select* from Users where ( UserId='"+UserId+"')and(UserName='"
                            +UserName+"')and(PassWords='"+PassWords+"')"; 
               Stmt = con.createStatement();
               rs = Stmt.executeQuery( sql );
              if (rs.next())
                           {
                           		nResult=1;//查询正确
                           }  	
    	       else        
    	                   {
    	                 	nResult=2;
    	      	           }
     	      return nResult;                                 
              }
         catch( SQLException ex )
	    	 {
		 	        ex.printStackTrace( System.err );
			        nResult=0;
                    return nResult;
	    	 }     
        finally
              {
               database.close(null,Stmt,con);
               }
  }
  //添加一个登录用户的基本信息
  public int InsertUsersLoginUser(String UserId,String UserName,String PassWords,String UserType) throws Exception  
              
    {
        
        Connection con = null;
        Statement Stmt = null;        
        ResultSet rs=null;
        DataBase database = new DataBase();
        int nResult = 0;
    try {    	 
         con = database.getConnection();                            
         String sql = "SELECT UserId FROM Users WHERE UserId='"+UserId+"'"; 
         Stmt = con.createStatement();
         rs = Stmt.executeQuery( sql );
         if(rs.next())
            {
               
               nResult=2;       	
            }
         else
           {
               sql= "INSERT into Users(UserId,UserName,PassWords,UserType)values('"+UserId+"','"
               +UserName+"','"+PassWords+"','"+UserType+"')" ;
               nResult = Stmt.executeUpdate(sql);  
           }
             return nResult;
         }  
         catch( SQLException ex )
	    	{
			     ex.printStackTrace( System.err );
			     nResult=0;
            return nResult;
	    	}
        finally{
             database.close(null,Stmt,con);
            }      
      
      }
      

     
   //更新一个登录用户的基本信息
 public int updateUsersLoginUser(String UserId,String UserName,String PassWords,String UserType) throws Exception                  
    {
        
        Connection con = null;
        Statement Stmt = null;        
        ResultSet rs=null;
        DataBase database = new DataBase();
        int nResult = 0;
    try {    	 
         con = database.getConnection();                            
         String sql = "UPDATE Users set UserId='"+UserId+"',UserName='"+UserName+"',PassWords='"
                       +PassWords+"',UserType='"+UserType+"' where UserId='"+UserId+"'";
         Stmt = con.createStatement();
         nResult = Stmt.executeUpdate(sql);     
         return nResult;
         }  
         catch( SQLException ex )
	    	{
			   ex.printStackTrace( System.err );
			   nResult=0;
               return nResult;
	    	}
         finally
            {
               database.close(null,Stmt,con);
             }      
      
   } 
      //更新一个登录用户的基本信息,但是不改变他的权限
 public int updateUsersLoginUserSpacial(String UserId,String UserName,String PassWords) throws Exception                  
    {
        
        Connection con = null;
        Statement Stmt = null;        
        ResultSet rs=null;
        DataBase database = new DataBase();
        int nResult = 0;
    try {    	 
         con = database.getConnection();                            
         String sql = "UPDATE Users set UserId='"+UserId+"',UserName='"+UserName+"',PassWords='"
                       +PassWords+"' where UserId='"+UserId+"'";
         Stmt = con.createStatement();
         nResult = Stmt.executeUpdate(sql);     
         return nResult;
         }  
         catch( SQLException ex )
	    	{
			   ex.printStackTrace( System.err );
			   nResult=0;
               return nResult;
	    	}
         finally
            {
               database.close(null,Stmt,con);
             }      
      
   }
  //修改一个登录用户的权限
 public int updateUsersLoginUserQuanxian(String UserId,String UserType) throws Exception                  
    {
        
        Connection con = null;
        Statement Stmt = null;        
        ResultSet rs=null;
        DataBase database = new DataBase();
        int nResult = 0;
    try {    	 
         con = database.getConnection();                            
         String sql = "UPDATE Users set UserId='"+UserId+"',UserType='"+UserType+"' where UserId='"+UserId+"'";
         Stmt = con.createStatement();
         nResult = Stmt.executeUpdate(sql);     
         return nResult;
         }  
         catch( SQLException ex )
	    	{
			   ex.printStackTrace( System.err );
			   nResult=0;
               return nResult;
	    	}
         finally
            {
               database.close(null,Stmt,con);
             }      
      
   }
     //修改一个登录个人用户的密码
 public int updateUsersLoginUserMima(String UserId,String UserName,String PassWords) throws Exception                  
    {
        
        Connection con = null;
        Statement Stmt = null;        
        ResultSet rs=null;
        DataBase database = new DataBase();
        int nResult = 0;
    try {    	 
         con = database.getConnection();                            
         String sql = "select * from Employees Where (EmpId='"+UserId+"')and(EmpName='"+UserName+"')";
         Stmt = con.createStatement();
         rs = Stmt.executeQuery( sql );     
          if (rs.next())
                     {
                     sql = "UPDATE Users set PassWords='"+PassWords+"'where UserId='"+UserId+"'";
                     nResult = Stmt.executeUpdate(sql);   
                     }  	
    	       else        
    	              {
    	                 	nResult=2;
    	      	       }
     	      return nResult;                                 
              }
         catch( SQLException ex )
	    	{
			   ex.printStackTrace( System.err );
			   nResult=0;
               return nResult;
	    	}
         finally
            {
               database.close(null,Stmt,con);
             }      
      
   }
    
   
 //删除一个登录用户的基本信息
 public int deleteOneUsersLoginUser(String UserId) throws Exception 
    {
        boolean result = false;
        Connection con = null;
        Statement Stmt = null;        
        ResultSet rs=null;
        DataBase database = new DataBase();
        int nResult = 0;
    try {    	 
         con = database.getConnection();                            
         String sql = "SELECT UserId FROM Users WHERE UserId='"+UserId+"'"; 
         Stmt = con.createStatement();
         rs = Stmt.executeQuery( sql );
         if(rs.next())
            {
             sql="DELETE  from Users where UserId='"+UserId+"'";
             nResult = Stmt.executeUpdate(sql);	    	
             }
         else
            {
              nResult=2;      
            }
             return nResult;
            }  
         catch( SQLException ex )
	    	{
			     ex.printStackTrace( System.err );
			     nResult=0;
                 return nResult;
	    	}
         finally{
                 database.close(null,Stmt,con);
                 }      
      
   } 
      //按照用户的编号进行查询某一个用户登录的详细信息
 public Login getUsersLoginDetails(String UserId) throws Exception {
    Connection con=null;
    PreparedStatement prepStmt=null;
    DataBase database = new DataBase();
    ResultSet rs =null;
    try {
      con=database.getConnection();
      String selectStatement = "select * " + "from Users where UserId = ? ";
      prepStmt = con.prepareStatement(selectStatement);
      prepStmt.setString(1, UserId);
      rs = prepStmt.executeQuery();
      if (rs.next()) {
                      Login  bd = new Login(rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4));
                      prepStmt.close();
                      return bd;
                     }
      else 
                     {
                      return null;
                      }
                  }
     finally
           {
               database.closeResultSet(rs);
               database.closePrepStmt(prepStmt);
               database.closeConnection(con);
            }
  } 
	
}