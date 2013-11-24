<%@ page contentType="text/html;charset=gb2312"%>
<HTML>

<!-- Mirrored from web.hichina.com/sitemanager/templet/089/left1/ by HTTrack Website Copier/3.x [XR&CO'2003], Thu, 28 Aug 2003 00:02:02 GMT -->
<HEAD>
<TITLE>
<!--Your Company Name-->
Template
</TITLE>
<!--CharSet-->
<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=gb2312">
<link rel="stylesheet" href="images/CSS.CSS" type="text/css">
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
<%
  String usertype=(String)session.getAttribute("UserType");
  //usertype=(String)session.getAttribute("UserType");
 // out.println("usertype="+usertype);
  if(!usertype.equals("five1"))
  //response.sendRedirect("index.jsp");
 response.sendRedirect("index.jsp");
%>



</HEAD>
<BODY BGCOLOR=#990000 leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<!--Counter-->
<!--Something Here-->
<table width="778" border="0" cellspacing="0" cellpadding="0" align="center" height="240">
  <tr> 
    <td width="218" height="75"><img src="images/index_top1.gif" width="218" height="75"></td>
    <td rowspan="2" width="560" height="240" background="images/index_top2.gif" valign="top"> 
      <table border="0" cellspacing="0" cellpadding="0" width="500" align="center">
        <tr> 
          <td height="50" width="408"> <b></b> <b></b></td>
        </tr>
        <tr> 
          <td height="50" width="408"> 
            <div align="center"><font color="#FFFFFF"><b><font size="5">
<!--Your Company Name-->
中型超市管理系统
              </font></b></font></div>
          </td>
        </tr>
        <tr> 
          <td height="50" width="408"> 
            <div align="center"><font size="4" color="#FFFFFF">
<!--Your Company Name.English-->
 
</font></div>
          </td>
        </tr>
      </table>
    </td>
  </tr>
  <tr> 
    <td width="218" height="165" background="images/01.gif"><img src="images/index_pic.gif" width="218" height="165"></td>
  </tr>
</table>
<table width="778" border="0" cellspacing="0" cellpadding="0" background="images/index_bg.gif" align="center">
  <tr> 
    <td width="218" valign="top">
      <table width="218" border="0" cellspacing="0" cellpadding="0">
        <tr> 
          <td height="226"> 
            <table width="218" border="0" cellspacing="0" cellpadding="0" height="20">
              <tr> 
                <td> 
                  <div align="center">
<!--Language-->
<!--Something Here-->
				  </div>
                </td>
              </tr>
            </table>
			
            <table width="218" border="0" cellspacing="0" cellpadding="0" height="36" background="images/index_lm.gif">
              <tr> 
                <td> <div align="center"><b><a href="index_all.jsp">首页</a></b> </div></td>
              </tr>
            </table>
<!--Button1.Content.Begin-->
            <table width="218" border="0" cellspacing="0" cellpadding="0" height="36" background="images/index_lm.gif">
              <tr> 
                <td> 
                  <div align="center"><b>
<!--Button1.Link-->
<a href="index_one_person.jsp">
<!--Button1-->
个人信息管理</a></b> </div>
                </td>
              </tr>
            </table>
<!--Button1.Content.End-->

<!--Button2.Content.Begin-->
            <table width="218" border="0" cellspacing="0" cellpadding="0" height="36" background="images/index_lm.gif">
              <tr> 
                <td> 
                  <div align="center"><b>
<!--Button2.Link-->
<a href="../menu_index/personnael_department_index.jsp">
<!--Button2-->
人力资源部 </a></b></div>
                </td>
              </tr>
            </table>
<!--Button2.Content.End-->

<!--Button3.Content.Begin-->
            <table width="218" border="0" cellspacing="0" cellpadding="0" height="36" background="images/index_lm.gif">
              <tr> 
                <td> 
                  <div align="center"><b>
<!--Button3.Link-->
<a href="../menu_index/finance_department_index.jsp">
<!--Button3-->
公司财务部 </a></b></div>
                </td>
              </tr>
            </table>
<!--Button3.Content.End-->

<!--Button4.Content.Begin-->
            <table width="218" border="0" cellspacing="0" cellpadding="0" height="36" background="images/index_lm.gif">
              <tr> 
                <td> 
                  <div align="center"><b>
<!--Button4.Link-->
<a href="../menu_index/purchase_department_index.jsp">
<!--Button4-->
商品采购部 </a></b></div>
                </td>
              </tr>
            </table>
<!--Button4.Content.End-->

<!--Button5.Content.Begin-->
            <table width="218" border="0" cellspacing="0" cellpadding="0" height="36" background="images/index_lm.gif">
              <tr> 
                <td> 
                  <div align="center"><b>
<!--Button5.Link-->
<a href="../menu_index/sale_department_index.jsp">
<!--Button5-->
商品销售部</a></b></div>
                </td>
              </tr>
            </table>
<!--Button5.Content.End-->


			
 <table width="218" border="0" cellspacing="0" cellpadding="0" height="36" background="images/index_lm.gif">
              <tr> 
                <td> 
                  <div align="center"><b>
<!--Button6.Link-->
<a href="login_update_self.jsp">
<!--Button6-->
用户权限修改</a></b></div>
                </td>
              </tr>
            </table>
<!--Button6.Content.End-->
			
			            <table width="218" border="0" cellspacing="0" cellpadding="0" height="36" background="images/index_lm.gif">
              <tr> 
                <td> 
                  <div align="center"><b>
<!--Button6.Link-->
<a href="login_exit.jsp">
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
    <td valign="top" align="center"><p><img src="images/all_one.png" width="499" height="254" border="15" style="border:double" ></p>
    <p>&nbsp;</p>
	

	
	
	
	
	
	</td>
    <td valign="top" width="20">&nbsp;</td>
  </tr>
</table>
<table width="778" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td><img src="images/index_bottom.gif" width="778" height="42"></td>
  </tr>
</table>
</BODY>

<!-- Mirrored from web.hichina.com/sitemanager/templet/089/left1/ by HTTrack Website Copier/3.x [XR&CO'2003], Thu, 28 Aug 2003 00:02:02 GMT -->
</HTML>
