package protype;


import java.sql.*;
import java.util.*;
import javax.naming.*;
import javax.sql.*;
import common.*;


public class ProtypeBean
{
	//插入商品类型的信息
  public int InsertProtype(String TypeId,String TypeName)
   throws Exception 
    {
        boolean result = false;
        Connection con = null;
        Statement Stmt = null;        
        ResultSet rs=null;
        DataBase database = new DataBase();
        int nResult = 0;
    try {    	 
         con = database.getConnection();                            
         String sql = "SELECT TypeId FROM ProType WHERE TypeId='"+TypeId+"'"; 
         Stmt = con.createStatement();
         rs = Stmt.executeQuery( sql );
         if(rs.next())
            {
         	 nResult=2;
         	
            }
         else
           {
              sql="insert into ProType(TypeId,TypeName)VALUES('"+TypeId+"','"+TypeName+"')";
              nResult = Stmt.executeUpdate(sql);
              if(nResult==1)
              nResult=1;      
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
  	// 查询商品类型的信息
	public Vector queryProtype()throws Exception
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
			String sql = "SELECT TypeId,TypeName FROM Protype ";
			sql = sql + " ORDER BY TypeId ASC";
			rs = st.executeQuery( sql );
			while( rs.next() )
			{
			    Protype  Dep = new Protype(rs.getString(1),rs.getString(2));
                vt.add(Dep);
			}
		}
		catch( SQLException ex )
		{
			ex.printStackTrace( System.err );
		}
		finally
		{
			database.close( rs, st, conn );
		}
		return vt;
	}
	   //按照部门的编号进行查询某一个部门的详细信息
   public Protype getProtypeDetails(String TypeId) throws Exception {
    Connection con=null;
    PreparedStatement prepStmt=null;
    DataBase database = new DataBase();
    ResultSet rs =null;
    try {
      con=database.getConnection();
      String selectStatement = "select TypeId,TypeName " + "from Protype where TypeId = ? ";
      prepStmt = con.prepareStatement(selectStatement);
      prepStmt.setString(1, TypeId);
      rs = prepStmt.executeQuery();
      if (rs.next()) {
                      Protype bd = new Protype(rs.getString(1), rs.getString(2));
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
  //按照商品类型的编号进行修改某一个商品类型的详细信息
  public int updateProtype(String TypeId,String TypeName)  throws Exception                  
    {
        
        Connection con = null;
        Statement Stmt = null;        
        ResultSet rs=null;
        DataBase database = new DataBase();
        int nResult = 0;
    try {    	 
         con = database.getConnection();                            
         String sql = "Update Protype set TypeId='"+TypeId+"', TypeName='"+TypeName
         +"' where TypeId='"+TypeId+"'";
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
  //删除一个商品类型的所有信息
  public int deleteOneProtype(String TypeId) throws Exception 
    {
        boolean result = false;
        Connection con = null;
        Statement Stmt = null;        
        ResultSet rs=null;
        DataBase database = new DataBase();
        int nResult = 0;
    try {    	 
         con = database.getConnection();                            
         String sql = "SELECT TypeId FROM Product WHERE TypeId='"+TypeId+"'"; 
         Stmt = con.createStatement();
         rs = Stmt.executeQuery( sql );
         if(rs.next())
            {
    	      nResult=2; //商品表中还存在该类型的信息
             }
         else
            {
              sql="DELETE  from Protype where TypeId='"+TypeId+"'";
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

}