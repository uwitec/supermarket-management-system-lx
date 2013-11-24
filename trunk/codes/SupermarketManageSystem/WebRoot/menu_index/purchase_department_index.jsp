<%@ page contentType="text/html;charset=gb2312"%>

<HTML>

<!-- Mirrored from web.hichina.com/sitemanager/templet/096/left1/ by HTTrack Website Copier/3.x [XR&CO'2003], Thu, 28 Aug 2003 00:02:03 GMT -->
<HEAD>
<TITLE>
<!--Your Company Name-->
Template
</TITLE>
<!--CharSet-->
<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=gb2312">
<link rel="stylesheet" href="purchase_department_images/CSS.CSS" type="text/css">
<style type="text/css">
<!--
.style1 {
	font-size: 24px;
	font-family: "隶书";
}
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
if ( session.getAttribute("UserName")==null || session.getAttribute("UserName")=="" || session.getAttribute("UserType")==null || session.getAttribute("UserType")=="" )
{
    session.removeAttribute("UserName");
    session.removeAttribute("UserType");
	response.sendRedirect("../login/login_exit.jsp");
	//out.println("dengluchengong认为其二维尔维尔却无二");
}
%>
<%
  String usertype=(String)session.getAttribute("UserType");
  if(!(usertype.equals("five1") || usertype.equals("three1")) )
 // out.println("usertype="+usertype);
  response.sendRedirect("../login/login_exit.jsp");
%>




</HEAD>
<BODY BGCOLOR=#669999 leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<!--Counter-->
<!--Something Here-->
<table width="778" border="0" cellspacing="0" cellpadding="0" align="center" height="130">
  <tr>
    <td background="purchase_department_images/index_top1.gif" valign="top"> 
      <table border="0" cellspacing="0" cellpadding="0" width="778" align="center">
        <tr> 
          <td height="25"> <font color="#FFFFFF"><b></b></font> 
            <div align="center"><font color="#FFFFFF"><b></b></font></div>
          </td>
        </tr>
        <tr> 
          <td height="30"> <font color="#FFFFFF"><b></b></font> 
            <div align="center"><font color="#000000"><b><font size="5">
<!--Your Company Name-->
超市管理系统——商品采购部
              </font></b></font></div>
          </td>
        </tr>
        <tr> 
          <td height="30"> 
            <div align="center"><font size="4" color="#000000">
<!--Your Company Name.English-->
Enterprise Purchase Department
</font> </div>
          </td>
        </tr>
      </table>
    </td>
  </tr>
</table>
<table width="778" border="0" cellspacing="0" cellpadding="0" align="center" background="purchase_department_images/index_bg.gif">
  <tr> 
    <td valign="top" width="215" rowspan="2">
      <table width="215" border="0" cellspacing="0" cellpadding="0">
        <tr> 
          <td> 
            <table width="215" border="0" cellspacing="0" cellpadding="0" height="20" background="purchase_department_images/01.gif">
              <tr> 
                <td> <img src="purchase_department_images/index_pic.gif" width="215" height="155"></td>
              </tr>
            </table>
          </td>
        </tr>
        <tr> 
          <td> 
            <table width="215" border="0" cellspacing="0" cellpadding="0" height="15">
              <tr> 
                <td> 
                  <div align="center">
<!--Language-->
<!--Something Here-->
</div>
                </td>
              </tr>
            </table>
            <table width="215" border="0" cellspacing="0" cellpadding="0" height="40" background="purchase_department_images/index_lm.gif">
              <tr> 
                <td> <div align="center"><b><a href="purchase_department_index.jsp">商品采购部</a></b> </div></td>
              </tr>
            </table>


<!--Button2.Content.Begin-->
            <table width="215" border="0" cellspacing="0" cellpadding="0" height="40" background="purchase_department_images/index_lm.gif">
              <tr> 
                <td> 
                  <div align="center"><b>
<!--Button2.Link-->
<a href="../protype/protype_all.jsp">
<!--Button2-->
 
 商品类型信息管理</a></b></div>
                </td>
              </tr>
            </table>
<!--Button2.Content.End-->

<!--Button3.Content.Begin-->
            <table width="215" border="0" cellspacing="0" cellpadding="0" height="40" background="purchase_department_images/index_lm.gif">
              <tr> 
                <td> 
                  <div align="center"><b>
<!--Button3.Link-->
<a href="../product/product_index.jsp">
<!--Button3-->
商品详细信息管理</a></b></div>
                </td>
              </tr>
            </table>
<!--Button3.Content.End-->

<!--Button4.Content.Begin-->
            <table width="215" border="0" cellspacing="0" cellpadding="0" height="40" background="purchase_department_images/index_lm.gif">
              <tr> 
                <td> 
                  <div align="center"><b>
<!--Button4.Link-->
<a href="../supplyer/supplyer_all_infor_page.jsp">
<!--Button4-->
供应商厂家管理</a></b></div>
                </td>
              </tr>
            </table>
<!--Button4.Content.End-->

<!--Button5.Content.Begin-->
            <table width="215" border="0" cellspacing="0" cellpadding="0" height="40" background="purchase_department_images/index_lm.gif">
              <tr> 
                <td> 
                  <div align="center"><b>
<!--Button5.Link-->
<a href="../saler/saler_all_infor_page.jsp">
<!--Button5-->采购联系人管理</a></b></div>
                </td>
              </tr>
            </table>
<!--Button5.Content.End-->

<!--Button6.Content.Begin-->
            <table width="215" border="0" cellspacing="0" cellpadding="0" height="40" background="purchase_department_images/index_lm.gif">
              <tr> 
                <td> 
                  <div align="center"><b>
<!--Button6.Link-->
<a href="../purchase/purchase_all_infor_page.jsp">
<!--Button6-->
采购信息管理</a></b></div>
                </td>
              </tr>
            </table>
<!--Button6.Content.End-->

<!--Button6.Content.Begin-->
            <table width="215" border="0" cellspacing="0" cellpadding="0" height="40" background="purchase_department_images/index_lm.gif">
              <tr> 
                <td> 
                  <div align="center"><b>
<!--Button6.Link-->
<a href="../login/index_all.jsp">
<!--Button6-->
系统超级管理</a></b></div>
                </td>
              </tr>
            </table>
<!--Button6.Content.End-->




<!--Button7.Content.Begin-->
            <table width="215" border="0" cellspacing="0" cellpadding="0" height="40" background="purchase_department_images/index_lm.gif">
              <tr> 
                <td> 
                  <div align="center"><b>
<!--Button7.Link-->
<a href="../login/login_update_query.jsp">
<!--Button7-->修改密码</a></b></div>
                </td>
              </tr>
            </table>
<!--Button7.Content.End-->
<!--Button7.Content.Begin-->
            <table width="215" border="0" cellspacing="0" cellpadding="0" height="40" background="purchase_department_images/index_lm.gif">
              <tr> 
                <td> 
                  <div align="center"><b>
<!--Button7.Link-->
<a href="../login/login_exit.jsp">
<!--Button7-->退出系统</a></b></div>
                </td>
              </tr>
            </table>
<!--Button7.Content.End-->
          </td>
        </tr>
      </table>
    </td>
    <td valign="top" width="563"><img src="purchase_department_images/index_top2.gif" width="563" height="70"></td>
  </tr>
  <tr>
    <td valign="top">
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr> 
          <td></td>
        </tr>
        <tr> 
          <td> 
<!--IndexPage.Content.Begin-->
<table width="564" height="452" border="12" align="center">
  <tr>
    <td  align="center"><span class="style1">采购成本控制措施</span></td>
  </tr>
  <tr>
    <td height="401">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;控制采购成本对于一个企业的经营业绩至关重要。采购成本下降不仅体现在企业现金流出的减少，而且直接体现在商品成本的下降、利润的增加，以及企业竞争力的增强。要降低采购成本应从以下几个方面着手：一、建立、完善采购制度，做好采购成本控制的基础工作。采购工作涉及面广，并且主要是和外界打交道，因此，如果企业不制定严格的采购制度和程序，不仅采购工作无章可依，还会给采购人员提供暗箱操作的温床。二，完善采购工作要注意以下几点：建立严格、完善的采购制度，不仅能规范企业的采购活动，提高效率，杜绝部门之间扯皮，还能预防采购人员的不良行为。采购制度应规定商品采购的申请、授权人的批准权限、商品采购的流程、相关部门（特别是财务部门）的责任和关系、各种商品采购的规定和方式、报价和价格审批等。建立价格档案和价格评价体系，企业采购部门要对所有采购商品建立价格档案，对每一批采购物品的报价，应首先与归档的材料价格进行比较，分析价格差异的原因。如无特殊原因，原则上采购的价格不能超过档案中的价格水平，否则要作出详细地说明。对于重点材料的价格，要建立价格评价体系，由公司有关部门组成价格评审组，定期收集有关的供应价格信息，来分析、评价现有的价格水平，并对归档的价格档案进行评价和更新。这种评议视情况可一季度或半年进行一次。建立商品的标准采购价格并对采购人员根据工作业绩进行奖罚，财务部对重点监控的材料根据市场的变化和产品标准成本定期制定标准采购价格，促使采购人员积极寻找货源，货比三家，不断地降低采购价格，标准采购价格亦可与价格评价体系结合起来进行，并提出奖惩措施，对完成降低公司采购成本任务的采购人员进行奖励，对没有完成采购成本下降任务的采购人员，分析原因，确定对其奖惩的措施。通过以上四个方面的工作，虽然不能完全杜绝采购人员的暗箱操作，对对完善采购管理，提高效率，控制采购成本，确实有较大的成效。</td>
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
                  <p align="center">

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
<table width="778" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td><img src="purchase_department_images/index_bottom.gif" width="778" height="50"></td>
  </tr>
</table>
</BODY>

<!-- Mirrored from web.hichina.com/sitemanager/templet/096/left1/ by HTTrack Website Copier/3.x [XR&CO'2003], Thu, 28 Aug 2003 00:02:03 GMT -->
</HTML>
