package salary;

import java.sql.*;
import java.util.*;
import javax.naming.*;
import javax.sql.*;
import common.*;


public class SalaryBean
{
	//插入一个员工的工资
   public int InsertSalary(String SalaryId,String EmpId,
   String SBasicSalary,String SItem1,String SItem2,String SItem3,String SItem4,String SItem5,String SalaryTime) throws Exception  
              
    {  
        Connection con = null;
        Statement Stmt = null;        
        ResultSet rs=null;
        DataBase database = new DataBase();
        int nResult = 0;
         float  BasicSalary = Float.valueOf(SBasicSalary);
         float  Item1 = Float.valueOf(SItem1);
         float  Item2 = Float.valueOf(SItem2);
         float  Item3 = Float.valueOf(SItem3);
         float  Item4 = Float.valueOf(SItem4);
         float  Item5 = Float.valueOf(SItem5);
    try { 

   	 
         con = database.getConnection();                            
         String sql = "SELECT SalaryId FROM Salary WHERE SalaryId='"+SalaryId+"'"; 
         Stmt = con.createStatement();
         rs = Stmt.executeQuery( sql );
         if(rs.next())
            {
               
               nResult=2;   //存在重复的编号    	
            }
         else
           {   sql = "SELECT EmpId FROM Employees WHERE EmpId='"+EmpId+"'"; 
               rs = Stmt.executeQuery( sql );
               if(rs.next())
               {
               sql= "INSERT INTO Salary(SalaryId,EmpId,BasicSalary,Item1,Item2,Item3,Item4,Item5,SalaryTime)values('"
               +SalaryId+"','"+EmpId+"',"+BasicSalary+","+Item1+","+Item2+","
               +Item3+","+Item4+","+Item5+",'"+SalaryTime+"')";
               nResult = Stmt.executeUpdate(sql);  //添加成功
              }
              else
              {
              	 nResult=4;//不存在该员工
              	}
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
   
   //按照员工的编号进行查询某一个员工工资的详细信息
  public Salary getSalaryDetails(String SalaryId) throws Exception {
    Connection con=null;
    PreparedStatement prepStmt=null;
    DataBase database = new DataBase();
    ResultSet rs =null;
    try {
      con=database.getConnection();
      String selectStatement = "select SalaryId,EmpId,BasicSalary,Item1,Item2,Item3,Item4,Item5,SalaryTime " + "from Salary where SalaryId = ? ";
      prepStmt = con.prepareStatement(selectStatement);
      prepStmt.setString(1, SalaryId);
      rs = prepStmt.executeQuery();
      if (rs.next()) {
                      Salary bd = new Salary(rs.getString(1), rs.getString(2), 
                                           rs.getFloat(3),rs.getFloat(4),rs.getFloat(5),
                                           rs.getFloat(6),rs.getFloat(7),rs.getFloat(8),rs.getString(9));
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
  
  
  //删除一个员工工资的所有信息
  public int deleteOneSalary(String SalaryId) throws Exception 
    {
        boolean result = false;
        Connection con = null;
        Statement Stmt = null;        
        ResultSet rs=null;
        DataBase database = new DataBase();
        int nResult = 0;
    try {    	 
         con = database.getConnection();                            
         String sql = "SELECT SalaryId FROM Salary WHERE SalaryId='"+SalaryId+"'"; 
         Stmt = con.createStatement();
         rs = Stmt.executeQuery( sql );
         if(rs.next())
            {
             sql="DELETE  from Salary where SalaryId='"+SalaryId+"'";
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
  
   
   //更新一个员工工资的详细信息
 public int updateSalary(String SalaryId,String EmpId,
   String SBasicSalary,String SItem1,String SItem2,String SItem3,String SItem4,String SItem5,String SalaryTime) throws Exception                  
    {
        
        Connection con = null;
        Statement Stmt = null;        
        ResultSet rs=null;
        DataBase database = new DataBase();
        int nResult = 0;
    try {
    	 float  BasicSalary = Float.valueOf(SBasicSalary);
         float  Item1 = Float.valueOf(SItem1);
         float  Item2 = Float.valueOf(SItem2);
         float  Item3 = Float.valueOf(SItem3);
         float  Item4 = Float.valueOf(SItem4);
         float  Item5 = Float.valueOf(SItem5);    	 
         con = database.getConnection();                            
         String sql ="UPDATE Salary set  SalaryId='"+SalaryId+"', EmpId='"+EmpId+"',BasicSalary="
                     +BasicSalary+",Item1="+Item1+",Item2="
                     +Item2+",Item3="+Item3+", Item4="+Item4+", Item5="+Item5+",SalaryTime='"
                     +SalaryTime+"' where SalaryId='"+SalaryId+"'";
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
 // 查询所有的员工工资的详细信息
	public Vector allSalaryInfor()throws Exception
	{
		Vector vt = new Vector();
		Connection conn = null;
		Statement st = null;
		ResultSet rs = null;
		DataBase database = new DataBase();
		try
	    	{
			conn = database.getConnection();
			st = conn.createStatement();
			String sql = "SELECT SalaryId, EmpId,BasicSalary,Item1,Item2,Item3,Item4,Item5,SalaryTime FROM Salary ";
			sql = sql + " ORDER BY SalaryId ASC";
			rs = st.executeQuery( sql );
		    	while( rs.next() )
		          	{
				
				Salary  salary = new Salary(rs.getString(1), rs.getString(2), 
                                            rs.getFloat(3),rs.getFloat(4),rs.getFloat(5),
                                            rs.getFloat(6),rs.getFloat(7),rs.getFloat(8),rs.getString(9));
                vt.add(salary);

		      	}
		    }
    	catch( SQLException ex )
	    	{
			   ex.printStackTrace( System.err );
	    	}
         finally
            {
               database.close(null,st,conn);
             } 
		 
         	return vt;
    }
    
}