
package login;


import java.sql.*;
/**
 *  用户登录信息检查
 */

public class Login {
	private String UserId ;   //用户ID号
	private String UserName; //登录用户名
	private String PassWords; //登录密码
	private String UserType; //用户权限

	public Login(String UserId,String UserName,String PassWords,String UserType)
       {
       		 this.UserId=UserId ;  
        	 this.UserName=UserName; 
	         this.PassWords=PassWords; 
             this.UserType=UserType; 
      	} 
	
	
	public String getUserId() {
		return UserId;
	}
    public void setUserId(String newUserId) {
		UserId = newUserId;
	}
	public String getUserName() {
		return UserName;
	}
	public void setUserName(String newUserName) {
		UserName = newUserName;
	}
	public String getPassWords() {
		return PassWords;
	}
	public void setPassWords(String newPassWords) {
	    PassWords = newPassWords;
	}
	public String getUserType() {
		return UserType;
	}
	public void setUserType(String newUserType) {
	    UserType = newUserType;
	}

}
