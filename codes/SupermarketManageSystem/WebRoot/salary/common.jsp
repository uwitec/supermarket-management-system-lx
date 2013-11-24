<%@ page contentType="text/html; charset=GB2312" %>
<%@ page import="common.*" %>
<%@ page import="salary.*" %>
<%@ page import="java.util.Properties" %>

<%!
   public String convert(String s){
    try{
     	return new String(s.getBytes("ISO-8859-1"),"GB2312");
    }catch(Exception e){return null;}
   }
%>