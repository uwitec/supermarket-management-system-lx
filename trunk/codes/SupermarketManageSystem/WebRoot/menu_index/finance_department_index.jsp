<%@ page contentType="text/html;charset=gb2312"%>
<HTML>

<!-- Mirrored from web.hichina.com/sitemanager/templet/088/left5/ by HTTrack Website Copier/3.x [XR&CO'2003], Thu, 28 Aug 2003 00:04:09 GMT -->
<HEAD>
<TITLE>
<!--Your Company Name-->
Template
</TITLE>
<!--CharSet-->
<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=gb2312">
<link rel="stylesheet" href="finance_department_images/CSS.CSS" type="text/css">
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
	response.sendRedirect("../login/login_exit.jsp");
	//超级管理员页面
}
%>
<%
  String usertype=(String)session.getAttribute("UserType");
  if(!(usertype.equals("five1") || usertype.equals("four1")) )
 // out.println("usertype="+usertype);
  response.sendRedirect("../login/login_exit.jsp");
%>


</HEAD>
<BODY BGCOLOR=#339933 leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<!--Counter-->
<!--Something Here-->
<table width="778" border="0" cellspacing="0" cellpadding="0" align="center" height="150">
  <tr> 
    <td height="150" width="200" background="finance_department_images/01.gif"><img src="finance_department_images/index_pic.gif" width="200" height="150"></td>
    <td height="150" width="578" background="finance_department_images/index_top1.gif" valign="top"> 
      <table border="0" cellspacing="0" cellpadding="0" width="578" align="center">
        <tr> 
          <td height="30" width="408"> <b></b> <b></b></td>
          <td height="30" width="170">&nbsp;</td>
        </tr>
        <tr> 
          <td height="30" width="408"> 
            <div align="center"><font color="#FFFFFF"><b><font size="5">
<!--Your Company Name-->
公司财务部
              </font></b></font></div>
          </td>
          <td height="30" width="170">&nbsp;</td>
        </tr>
        <tr> 
          <td height="30" width="408"> 
            <div align="center"><font size="4" color="#FFFFFF">
<!--Your Company Name.English-->
 Enterprise Finance Department
</font></div>
          </td>
          <td height="30" width="170">&nbsp;</td>
        </tr>
      </table>
    </td>
  </tr>
</table>
<table width="778" border="0" cellspacing="0" cellpadding="0" background="finance_department_images/index_bg.gif" align="center">
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
            <table width="200" border="0" cellspacing="0" cellpadding="0" height="38" background="finance_department_images/index_lm.gif">
              <tr> 
                <td> <div align="center"><b>

<a href="finance_department_index.jsp">

公司财务部</a></b> </div></td>
              </tr>
            </table>

<!--Button1.Content.Begin-->
            <table width="200" border="0" cellspacing="0" cellpadding="0" height="38" background="finance_department_images/index_lm.gif">
              <tr> 
                <td> 
                  <div align="center"><b>
<!--Button1.Link-->
<a href="../salary/salary_all_infor_page.jsp">
<!--Button1-->
工资信息管理</a></b> </div>
                </td>
              </tr>
            </table>
<!--Button1.Content.End-->

<!--Button2.Content.Begin-->
            <table width="200" border="0" cellspacing="0" cellpadding="0" height="38" background="finance_department_images/index_lm.gif">
              <tr> 
                <td> 
                  <div align="center"><b>
<!--Button2.Link-->
<a href="../checkout/checkout.jsp">
<!--Button2-->
商品销售业绩 </a></b></div>
                </td>
              </tr>
            </table>
<!--Button2.Content.End-->

<!--Button3.Content.Begin-->
            <table width="200" border="0" cellspacing="0" cellpadding="0" height="38" background="finance_department_images/index_lm.gif">
              <tr> 
                <td> 
                  <div align="center"><b>
<!--Button3.Link-->
<a href="../purchase/purchase_all_infor_page_money.jsp">
<!--Button3-->
商品采购费用 </a></b></div>
                </td>
              </tr>
            </table>
<!--Button3.Content.End-->

<!--Button3.Content.Begin-->
            <table width="200" border="0" cellspacing="0" cellpadding="0" height="38" background="finance_department_images/index_lm.gif">
              <tr> 
                <td> 
                  <div align="center"><b>
<!--Button3.Link-->
<a href="../login/index_all.jsp">
<!--Button3-->
超级管理页面 </a></b></div>
                </td>
              </tr>
            </table>
<!--Button3.Content.End-->

<!--Button4.Content.Begin-->
            <table width="200" border="0" cellspacing="0" cellpadding="0" height="38" background="finance_department_images/index_lm.gif">
              <tr> 
                <td> 
                  <div align="center"><b>
<!--Button4.Link-->
<a href="../login/login_update_query.jsp">
<!--Button4-->
修改密码 </a></b></div>
                </td>
              </tr>
            </table>
<!--Button4.Content.End-->

<!--Button5.Content.Begin-->
            <table width="200" border="0" cellspacing="0" cellpadding="0" height="38" background="finance_department_images/index_lm.gif">
              <tr> 
                <td> 
                  <div align="center"><b>
<!--Button5.Link-->
<a href="../login/login_exit.jsp">
<!--Button5-->
退出系统</a></b></div>
                </td>
              </tr>
            </table>
<!--Button5.Content.End-->


          </td>
        </tr>
      </table>
    </td>
    <td valign="top" colspan="2"><img src="finance_department_images/index_top2.gif" width="578" height="30"></td>
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
            <p>&nbsp;</p>
<!--IndexPage.Content.Begin-->
<table width="503" height="290" border="10" align="center">
  <tr>
    <td align="center" >企业财务管理信息化的涵义</td>
  </tr>
  <tr>
    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;企业财务管理信息是指在企业财务管理的各个环节，充分利用现代信息技术，建立信息系统，是使企业财务信息得到集成和综合，从而提高财务管理水平和经济效益的过程。企业财务管理信息化推动了企业整体经营管理信息化的发展，带动了企业各项工作的创新和升级，对企业的发展壮大有至关重要的作用。从历史发展的角度看，我国企业财务管理信息化经历了三个发展阶段。第一阶段是使用财务会计软件，实现会计电算化，用计算机手段记账、核算、制作会计报表和进行财务分析。第二阶段是，在企业内部运用统一的计算机财务软件，将总公司和分公司的财务收支联系起来，实现单纯财务环节管理的信息化。第三阶段是使用比较先进的计算机管理技术，达到“统一计算机平台、统一规章制度、统一信息及业务编码、统一管理、统一监督”的财务与业务一体化的要求，实现财务系统与销售、供应、生产等系统的信息集成和数据共享，通过建立企业内部局域网或直接利用互联网，使总公司和各分公司能及时反映、传递会计信息，为企业决策者和报表使用者服务。这三个阶段是一个渐进的过程，只有第三个阶段才是真正的企业财务管理信息化。</td>
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
</A>

                  </div>
                </td>
              </tr>
            </table>
          </td>
        </tr>
      </table>
    </td>
  </tr>
</table>
<table width="778" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td><img src="finance_department_images/index_bottom.gif" width="778" height="50"></td>
  </tr>
</table>
</BODY>

<!-- Mirrored from web.hichina.com/sitemanager/templet/088/left5/ by HTTrack Website Copier/3.x [XR&CO'2003], Thu, 28 Aug 2003 00:04:09 GMT -->
</HTML>
