package employees;

import java.sql.*;
import java.util.*;
import javax.naming.*;
import javax.sql.*;

import employees.*;
import common.*;

public class EmployeesBean
{
 private ArrayList	Employees ;
 public boolean EmployeesInsert(Employees employees) throws Exception {
	DataBase database = new DataBase();
	boolean result = false;
    Connection con = null;
    PreparedStatement prepStmt = null;
    ResultSet rs=null;
    try {
      con = database.getConnection();                            
      String sql = "insert into Employees"
      +"(EmpId,DepId,EmpName,Sex,Nationality,Birth,Academic,Marital,Original,Id_Card,Mobile,Memo)"
      + "VALUES('"+employees.getEmpId()+"','"+employees.getDepId()+"','"+employees.getEmpName()+"','"+employees.getSex()
      + "','"+employees.getNationality()+"','"+employees.getBirth()+"','"+employees.getAcademic()+"','"+employees.getMarital()
      +"','"+employees.getOriginal()+"','"+employees.getId_Card()+"','"+employees.getMobile()+"','"+employees.getMemo()+"')";
 
      prepStmt = con.prepareStatement(sql);
      result = prepStmt.execute(sql);
        }
     catch( SQLException ex )
		{
			ex.printStackTrace( System.err );
			return false;
		}
       finally{
             database.closeResultSet(rs);
             database.closePrepStmt(prepStmt);
             database.closeConnection(con);
           }
        return result;
      }
//////－－－－－－－－－－－？？？？？？？？？？？？？？？？？删除员工的信息－－－
   public boolean EmployeesDelete(Employees employees) throws Exception {
	DataBase database = new DataBase();
	boolean result = false;
    Connection con = null;
    PreparedStatement prepStmt = null;
    ResultSet rs=null;
    try {
      con = database.getConnection();                            
      String sql = "delete from Employees where EmpId = '"+employees.getEmpId()+"'";
 
      prepStmt = con.prepareStatement(sql);
      result = prepStmt.execute(sql);
        }
     catch( SQLException ex )
		{
			ex.printStackTrace( System.err );
			return false;
		}
       finally{
             database.closeResultSet(rs);
             database.closePrepStmt(prepStmt);
             database.closeConnection(con);
           }
        return result;
      }
      
      
      
 ////－－－－－得到员工的详细信息－－－－－－－－－－－－－－－－－－－－－
 public Employees getEmployeesDetails(String EmpId) throws Exception {
	DataBase database = new DataBase();
	boolean result = false;
    Connection con = null;
    PreparedStatement prepStmt = null;
    ResultSet rs = null;
    try {
       con = database.getConnection(); 
       String sql = "select  EmpId, DepId, EmpName , Sex, Nationality, Birth, Academic, Marital,Original, Id_Card, Mobile, Memo "+"from  Employees where EmpId =?";                      
       prepStmt = con.prepareStatement(sql);
       prepStmt.setString(1,EmpId);
       rs = prepStmt.executeQuery();
       if(rs.next()){
      	Employees  employees = new Employees(rs.getString(1),rs.getString(2),rs.getString(3),
      	rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7),rs.getString(8),
      	rs.getString(9),rs.getString(10),rs.getString(11),rs.getString(12));
      	prepStmt.close();
      	return employees;
      	}
      	else{
      	return null;	
      	}
      	
       }
       finally{
             database.closeResultSet(rs);
             database.closePrepStmt(prepStmt);
             database.closeConnection(con);
          }
      }
 ////－－－－－－－－－－－－－－－－getEmployees()//得到员工的所有详细信息－－－－－－－－－－－－－－－
   public Collection getEmployees() throws Exception {  
	DataBase database = new DataBase();
	boolean result = false;
    Connection con = null;
    PreparedStatement prepStmt = null;
    ResultSet rs = null;
    Employees = new ArrayList();
    try {
       con = database.getConnection(); 
       String sql = "select EmpId, DepId, EmpName , Sex, Nationality, Birth, Academic, Marital,Original, Id_Card, Mobile, Memo "+"from  Employees ";                      
       prepStmt = con.prepareStatement(sql);
       rs = prepStmt.executeQuery();
       while(rs.next()){
      	Employees  bd = new Employees(rs.getString(1),rs.getString(2),rs.getString(3),
      	rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7),rs.getString(8),
      	rs.getString(9),rs.getString(10),rs.getString(11),rs.getString(12));
      	Employees.add(bd);
      	}	
       }
       finally{
             database.closeResultSet(rs);
             database.closePrepStmt(prepStmt);
             database.closeConnection(con);
          }
           Collections.sort(Employees);
          	return Employees;
      }
/////nsertEmployees 插入员工的信息
   public int InsertEmployees(String EmpId,String EmpName,String Sex,String Nationality,String Birth,
                              String Academic,String Marital,String Original,String Id_Card,
                               String Mobile,String Memo,String DepId)  throws   Exception
              
    {
        
        Connection con = null;
        Statement Stmt = null;        
        ResultSet rs=null;
        DataBase database = new DataBase();
        int nResult = 0;
    try {    	 
         con = database.getConnection();                            
         String sql = "SELECT EmpId FROM Employees WHERE EmpId='"+EmpId+"'"; 
         Stmt = con.createStatement();
         rs = Stmt.executeQuery( sql );
         if(rs.next())
            {
               
               nResult=2;       	
            }
         else
           {
               sql="insert into Employees(EmpId,EmpName,Sex,Nationality,Birth,Academic,Marital,Original,Id_Card,Mobile,Memo,DepId)VALUES('"
                   +EmpId+"','"+EmpName+"','"+Sex+"','"+Nationality+"','"+Birth+"','"+Academic+"','"+Marital+"','"
                   +Original+"','"+Id_Card+"','"+Mobile+"','"+Memo+"','"+DepId+"')";
               nResult = Stmt.executeUpdate(sql); 
               sql= "insert into Users(UserId,UserName,PassWords)values('"+EmpId+"','"+EmpName+"','"+666666+"')"; 
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
 //删除一个员工的所有信息
  public int deleteOneEmployees(String EmpId) throws Exception 
    {
        boolean result = false;
        Connection con = null;
        Statement Stmt = null;        
        ResultSet rs=null;
        DataBase database = new DataBase();
        int nResult = 0;
    try {    	 
         con = database.getConnection();                            
         String sql = "SELECT EmpId FROM Employees WHERE EmpId='"+EmpId+"'"; 
         Stmt = con.createStatement();
         rs = Stmt.executeQuery( sql );
         if(rs.next())
            {
             sql="DELETE  from Employees where EmpId='"+EmpId+"'";
             nResult = Stmt.executeUpdate(sql);	
             sql="DELETE  from Users where UserId='"+EmpId+"'";
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
 // 修改员工的信息
  public int updateEmployees(String EmpId,String EmpName,String Sex,String Nationality,String Birth,
                              String Academic,String Marital,String Original,String Id_Card,
                               String Mobile,String Memo,String DepId) throws Exception                  
    {
        
        Connection con = null;
        Statement Stmt = null;        
        ResultSet rs=null;
        DataBase database = new DataBase();
        int nResult = 0;
    try {    	 
         con = database.getConnection();                            
         String sql = "UPDATE Employees SET EmpId='"+EmpId+"',EmpName='"+EmpName+"', Sex='"
         +Sex+"',Nationality='"+Nationality+"',Birth='"+Birth+"',Academic='"+Academic+"', Marital='"
         +Marital+"',Original='"+Original+"', Id_Card='"+Id_Card+"',Mobile='"+Mobile+"', Memo='"
         +Memo+"', DepId='"+DepId+"' WHERE EmpId='"+EmpId+"'";
         Stmt = con.createStatement();
         nResult = Stmt.executeUpdate(sql);
         sql= "update Users set UserId='"+EmpId+"',UserName='"+EmpName+"' where UserId='"+EmpId+"'";
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
      

 }
  