package employees;

import java.sql.*;
import java.util.*;
import javax.naming.*;
import javax.sql.*;

import employees.*;
import common.*;

public class EmployeesBean_Page
{

 ////－－－－－－－－－－－－－－－－getEmployees()//得到员工的所有详细信息－－－－－－－－－－－－－－－

	public Vector allEmployees() throws Exception
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
			String sql = sql = "select EmpId, DepId, EmpName , Sex, Nationality, Birth, Academic, Marital,Original, Id_Card, Mobile, Memo "+"from  Employees ";   
			sql = sql + " ORDER BY EmpId ASC";
			rs = st.executeQuery( sql );
		    	while( rs.next() )
		          	{
            	Employees  bd = new Employees(rs.getString(1),rs.getString(2),rs.getString(3),
                             	rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7),rs.getString(8),
                            	rs.getString(9),rs.getString(10),rs.getString(11),rs.getString(12));
             	vt.add(bd);
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
//返回Employees表项数
	public int getCount()throws Exception
	 {
		Connection conn = null;
		Statement st = null;
		ResultSet rs = null;
		DataBase database = new DataBase();
		int count=0;
		try {
			conn = database.getConnection();
			st = conn.createStatement();
			String sql = sql = "select  count(EmpId) from  Employees ";   
			rs = st.executeQuery( sql );
			if(!rs.next()) 
			{
				return 0;
			} 
			else 
			{
				count = rs.getInt(1);
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
		 
         	return count;
    }
 ////////////////////////////////////////////////////////////
   public ResultSet getPageof(String pg, int pagesize)throws Exception 
    	{
    	Connection conn = null;
		Statement st = null;
		ResultSet rs = null;
		DataBase database = new DataBase();	
		int page = Integer.parseInt(pg);
		int count = getCount();
		if(count==0)
		  return null;
		int totalpage = (count+pagesize-1)/pagesize;	
		if(page > totalpage)
			page = totalpage;
	    int start = (page-1)*pagesize;		
		try {
			
			conn = database.getConnection();
			st = conn.createStatement();
			String sql = sql = "select EmpId, DepId, EmpName , Sex, Nationality, Birth, Academic, Marital,Original, Id_Card, Mobile, Memo "+"from  Employees ";   
			sql = sql + " ORDER BY EmpId ASC";
			rs = st.executeQuery( sql );		
			for(int i=0; i<start; i++)
				rs.next();
		}catch(SQLException e) {
			System.err.println("QueryPage.getPageof()" +e.getMessage());
		}
		
		return rs;
	}

 //////////////////////////////////////////////
  public int totalPage(int pagesize) throws Exception
    {
        int  Count = getCount();
		return (Count+pagesize-1)/pagesize;
  	}
 }   
  