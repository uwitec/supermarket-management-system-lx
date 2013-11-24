<%@ page contentType="text/html; charset=gb2312" %>
<%@ page import="java.util.*" %>
<%@ page import="employees.*" %>
<%@ page import="java.util.Properties" %>
<%@ page errorPage="errorpage.jsp" %>

<HTML>

<!-- Mirrored from web.hichina.com/sitemanager/templet/088/left1/ by HTTrack Website Copier/3.x [XR&CO'2003], Thu, 28 Aug 2003 00:02:02 GMT -->
<HEAD>
<TITLE>
<!--Your Company Name-->
Template
</TITLE>
<!--CharSet-->
<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=gb2312">
<link rel="stylesheet" href="employee_images/CSS.CSS" type="text/css">
<style type="text/css">
<!--
-->
</style>
<SCRIPT ID=clientEventHandlersJS LANGUAGE=javascript>
<!--

function window_onload() {
// <!--Page.OnLoad-->
}

//-->
</SCRIPT>
</HEAD>
<%!
   public String convert(String s){
    try{
     	return new String(s.getBytes("GB2312"),"GB2312");
    }catch(Exception e){return null;}
   }
%>
<%
if ( session.getAttribute("UserName")==null || session.getAttribute("UserName")=="" || session.getAttribute("UserType")==null || session.getAttribute("UserType")=="")
{
    session.removeAttribute("UserName");
    session.removeAttribute("UserType");
	response.sendRedirect("../login/index.jsp");
	//超级管理员页面
}
%>


<BODY BGCOLOR=#994D00 leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<!--Counter-->
<!--Something Here-->
<table width="778" border="0" cellspacing="0" cellpadding="0" align="center" height="150">
  <tr> 
    <td height="150" width="200" background="employee_images/01.gif"><img src="employee_images/index_pic.gif" width="200" height="150"></td>
    <td height="150" width="578" background="employee_images/index_top1.gif" valign="top"> 
      <table border="0" cellspacing="0" cellpadding="0" width="578" align="center">
        <tr> 
          <td height="30" width="408"> <b></b> <b></b></td>
          <td height="30" width="170">&nbsp;</td>
        </tr>
        <tr> 
          <td height="30" width="408"> 
            <div align="center"><font color="#FFFFFF"><b><font size="5">
<!--Your Company Name-->
企业人力资源部——员工信息管理 
              </font></b></font></div>
          </td>
          <td height="30" width="170">&nbsp;</td>
        </tr>
        <tr> 
          <td height="30" width="408"> 
            <div align="center"><font size="4" color="#FFFFFF">
<!--Your Company Name.English-->
Human Resource Department
</font></div>
          </td>
          <td height="30" width="170">&nbsp;</td>
        </tr>
      </table>
    </td>
  </tr>
</table>
<table width="778" border="0" cellspacing="0" cellpadding="0" background="employee_images/index_bg.gif" align="center">
  <tr> 
    <td width="200" valign="top" rowspan="2"> 
      <table width="200" border="0" cellspacing="0" cellpadding="0">
        <tr> 
          <td height="226" align="center"> 

            <table width="200" border="0" cellspacing="0" cellpadding="0" height="20">
              <tr> 
                <td> 
                  <div align="center"></div>
                </td>
              </tr>
            </table>
            <br>
<!--Language-->
<!--Something Here-->
            <table width="200" border="0" cellspacing="0" cellpadding="0" height="38" background="employee_images/index_lm.gif">
              <tr> 
                <td> <div align="center"><b>

<a href="../login/index_one_person.jsp">个人信息咨询</a></b> </div></td>
              </tr>
            </table>


<!--Button6.Content.Begin-->
            <table width="200" border="0" cellspacing="0" cellpadding="0" height="38" background="employee_images/index_lm.gif">
              <tr> 
                <td> 
                  <div align="center"><b>
<!--Button6.Link-->
<a href="../login/login_exit.jsp">
<!--Button6-->
退出系统</a></b></div>
                </td>
              </tr>
            </table>
<!--Button6.Content.End-->

          </td>
        </tr>
      </table>
    </td>
    <td valign="top" colspan="2"><img src="employee_images/index_top2.gif" width="578" height="30"></td>
  </tr>
  <tr> 
    <td valign="top" width="20">&nbsp; </td>
    <td width="558" valign="top">
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr> 
          <td></td>
        </tr>
        <tr> 
          <td> 
           
<jsp:useBean id="employeesbean" scope="application" class="employees.EmployeesBean"/>
<%
  String EmpId = request.getParameter("EmpId");
  Employees employees = employeesbean.getEmployeesDetails(EmpId);
%>
<%
if(employees==null)
{
%>
<p>该员工不存在<p>
<%
return;
}else{
%>

<table width="483" height="361" border="10"  align="center" >
  <tr>
    <td colspan="2" align="center">员工个人信息的详细介绍</td>
    </tr>
  <tr>
    <td width="186">员工编号</td>
    <td width="327">&nbsp;<%=convert(employees.getEmpId())%></td>
  </tr>
   <tr>
    <td>部门编号</td>
    <td>&nbsp;<%=convert(employees.getDepId())%></td>
  </tr>
  <tr>
    <td>员工姓名</td>
    <td>&nbsp;<%=employees.getEmpName()%></td>
  </tr>
  <% 
  String Sexx=employees.getSex();
  if(Sexx.equals("Female"))
   Sexx="女";
   else
   Sexx="男";
  %>
  <tr>
    <td>性别</td>
    <td>&nbsp;<%=Sexx%></td>
  </tr>
 <% 
  String MAR=employees.getMarital();
  if(MAR.equals("Mar"))
   MAR="是";
   else
   MAR="否";
  %>   
   <tr>
    <td>结婚是否</td>
    <td>&nbsp;<%=MAR%></td>
  </tr>
  <tr>
    <td>籍贯</td>
    <td>&nbsp;<%=employees.getNationality()%></td>
  </tr>
  <tr>
    <td>出生年月</td>
    <td>&nbsp;<%=employees.getBirth()%></td>
  </tr>
  <tr>
    <td>学历</td>
    <td>&nbsp;<%=employees.getAcademic()%></td>
  </tr>
  <tr>
    <td>住址</td>
    <td>&nbsp;<%=employees.getOriginal()%></td>
  </tr>
  <tr>
    <td>身份证号码</td>
    <td>&nbsp;<%=convert(employees.getId_Card())%></td>
  </tr>
  <tr>
    <td>电话</td>
    <td>&nbsp;<%=convert(employees.getMobile())%></td>
  </tr>
  <tr>
    <td>个人描述</td>
    <td>&nbsp;<%=convert(employees.getMemo())%></td>
  </tr>
</table>

<%
}
%>
  
		   
		   
<!--IndexPage.Content.Begin-->
<!--IndexPage.Content.End-->
<table width="90%" border="0" cellspacing="0" cellpadding="0" align="center" height="1">
              <tr> 
                <td bgcolor="#000000"> </td>
              </tr>
            </table>
            <table width="90%" border="0" cellspacing="0" cellpadding="4" align="center">
              <tr> 
                <td> 
                  <div align="center"> 

<!--TCopyRight-->
 版权所有
@2013<br>
<!--TAddress-->
公司地址:CQUT
<!--Address-->
<br>
<!--TTelephone-->
电话:
<!--Telephone-->
<!--TEMail-->
 电子邮件:
<!--EMail-->
<A HREF='mailto:
<!--Email-->

'>
<!--Email-->
</A>                  </div>                </td>
              </tr>
            </table>          </td>
        </tr>
      </table>
    </td>
  </tr>
</table>
<table width="778" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td><img src="employee_images/index_bottom.gif" width="778" height="50"></td>
  </tr>
</table>
</BODY>

<!-- Mirrored from web.hichina.com/sitemanager/templet/088/left1/ by HTTrack Website Copier/3.x [XR&CO'2003], Thu, 28 Aug 2003 00:02:02 GMT -->
</HTML>
