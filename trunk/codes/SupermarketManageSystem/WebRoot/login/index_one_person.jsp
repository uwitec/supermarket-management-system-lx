<%@ page contentType="text/html;charset=gb2312"%>

<HTML>

<!-- Mirrored from web.hichina.com/sitemanager/templet/093/left1/ by HTTrack Website Copier/3.x [XR&CO'2003], Thu, 28 Aug 2003 00:02:03 GMT -->
<HEAD>
<TITLE>
<!--Your Company Name-->
Template
</TITLE>
<!--CharSet-->
<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=gb2312">
<link rel="stylesheet" href="images_one/CSS.CSS" type="text/css">
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

<%
if ( session.getAttribute("UserName")==null || session.getAttribute("UserName")=="" || session.getAttribute("UserType")==null || session.getAttribute("UserType")=="")
{
    session.removeAttribute("UserName");
    session.removeAttribute("UserType");
	response.sendRedirect("index.jsp");
	//超级管理员页面
}
%>

</HEAD>
<BODY BGCOLOR=#7C297C leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<!--Counter-->
<!--Something Here-->
<table width="778" border="0" cellspacing="0" cellpadding="0" align="center" height="194" background="images_one/index_top.gif">
  <tr>
    <td valign="top"> 
      <table border="0" cellspacing="0" cellpadding="0" width="778" align="center">
        <tr> 
          <td height="10" width="698"> 
            <div align="center"><font color="#FFFFFF"><b></b></font></div>
          </td>
          <td height="10" width="80"> 
            <div align="center"><font color="#FFFFFF"><b></b></font></div>
          </td>
        </tr>
        <tr> 
          <td height="40" width="698"> 
            <div align="center"><font color="#FFFFFF"><b><font size="5">
<!--Your Company Name-->
中小型超市综合管理信息系统 
              </font></b></font></div>
          </td>
          <td height="40" width="80"> 
            <div align="center"></div>
          </td>
        </tr>
        <tr>
          <td height="40" width="698">
            <div align="center"><font size="4" color="#FFFFFF">
<!--Your Company Name.English-->

</font> </div>
          </td>
          <td height="40" width="80">&nbsp;</td>
        </tr>
      </table>
    </td>
  </tr>
</table>
<table width="778" border="0" cellspacing="0" cellpadding="0" align="center" background="images_one/index_bg.gif">
  <tr> 
    <td valign="top" width="212"> 
      <table width="212" border="0" cellspacing="0" cellpadding="0">
        <tr> 
          <td background="images_one/01.gif"><img src="images_one/index_pic.gif" width="212" height="138"></td>
        </tr>
        <tr> 
          <td> <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td align="center">
<!--Language-->
<!--Something Here-->
</td>
              </tr>
            </table>
            <table width="212" border="0" cellspacing="0" cellpadding="0" height="40" background="images_one/index_lm.gif">
              <tr> 
                <td> <div align="center"><b><a href="index_one_person.jsp">个人信息咨询</a></b></div></td>
              </tr>
            </table>
<!--Button1.Content.Begin-->
            <table width="212" border="0" cellspacing="0" cellpadding="0" height="40" background="images_one/index_lm.gif">
              <tr> 
                <td> 
                  <div align="center"><b>
<!--Button1.Link-->
<a href="../employee/query_employee_oneperson.jsp">
<!--Button1-->
员工详细信息查询</a></b> </div>
                </td>
              </tr>
            </table>
<!--Button1.Content.End-->

<!--Button2.Content.Begin-->
            <table width="212" border="0" cellspacing="0" cellpadding="0" height="40" background="images_one/index_lm.gif">
              <tr> 
                <td> 
                  <div align="center"><b>
<!--Button2.Link-->
<a href="../evaluation/evaluation_query_oneperson.jsp">
<!--Button2-->
员工考勤信息查询 </a></b></div>
                </td>
              </tr>
            </table>
<!--Button2.Content.End-->

<!--Button3.Content.Begin-->			
            <table width="212" border="0" cellspacing="0" cellpadding="0" height="40" background="images_one/index_lm.gif">
              <tr> 
                <td> 
                  <div align="center"><b>
<!--Button3.Link-->
<a href="../salary/salaryoneinfor_query_oneperson.jsp">
<!--Button3-->
员工工资信息查询 </a></b></div>
                </td>
              </tr>
            </table>
<!--Button3.Content.End-->

<!--Button3.Content.Begin-->			
            <table width="212" border="0" cellspacing="0" cellpadding="0" height="40" background="images_one/index_lm.gif">
              <tr> 
                <td> 
                  <div align="center"><b>
<!--Button3.Link-->
<a href="index_all.jsp">
<!--Button3-->
超级用户管理页面 </a></b></div>
                </td>
              </tr>
            </table>
<!--Button3.Content.End-->

<!--Button4.Content.Begin-->
            <table width="212" border="0" cellspacing="0" cellpadding="0" height="40" background="images_one/index_lm.gif">
              <tr> 
                <td> 
                  <div align="center"><b>
<!--Button4.Link-->
<a href="login_update_query.jsp">
<!--Button4-->
修改密码 </a></b></div>
                </td>
              </tr>
            </table>
<!--Button4.Content.End-->

<!--Button5.Content.Begin-->
            <table width="212" border="0" cellspacing="0" cellpadding="0" height="40" background="images_one/index_lm.gif">
              <tr> 
                <td> 
                  <div align="center"><b>
<!--Button5.Link-->
<a href="login_exit.jsp">
<!--Button5-->
退出系统</a></b></div>
                </td>
              </tr>
            </table>
<!--Button5.Content.End-->

            <br>
            <br>
          </td>
        </tr>
      </table>
    </td>
    <td valign="top">
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr> 
          <td></td>
        </tr>
        <tr> 
          <td> 
<!--IndexPage.Content.Begin-->
            <table width="90%" border="0" cellspacing="0" cellpadding="0" align="center">
              <tr> 
                <td height="20"><table width="513" height="284" border="10" align="center">
                  <tr>
                    <td colspan="2" align="center">个人信息咨询页面</td>
                    </tr>
                  <tr>
                    <td width="180">员工详细信息</td>
                    <td width="299">输入员工编号可以进行查询个人信息</td>
                  </tr>
                  <tr>
                    <td>员工考勤编号</td>
                    <td>输入员工考勤编号可以查询个人考勤信息</td>
                  </tr>
                  <tr>
                    <td>员工工资信息</td>
                    <td>输入员工工资编号可以查询个人工资信息</td>
                  </tr>
                  <tr>
                    <td>超级管理页面</td>
                    <td>该超连接可以直接返回到超级管理页面</td>
                  </tr>
                </table>                  
                <a href="#"> </a> </td>
              </tr>
            </table>
<!--IndexPage.Content.End-->
 

            <table width="90%" border="0" cellspacing="0" cellpadding="0" align="center" height="1">
              <tr> 
                <td bgcolor="#000000"> </td>
              </tr>
            </table>
            <table width="90%" border="0" cellspacing="0" cellpadding="4" align="center">
              <tr> 
                <td> 
                  <p align="center"><br>
<!--Your Company Name-->
您的公司名称
<!--TCopyRight-->
 版权所有
@2013<br>
<!--TAddress-->
公司地址:
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
</A>

                  </p>
                </td>
              </tr>
            </table>
          </td>
        </tr>
      </table>
    </td>
  </tr>
</table>
</BODY>

<!-- Mirrored from web.hichina.com/sitemanager/templet/093/left1/ by HTTrack Website Copier/3.x [XR&CO'2003], Thu, 28 Aug 2003 00:02:03 GMT -->
</HTML>
