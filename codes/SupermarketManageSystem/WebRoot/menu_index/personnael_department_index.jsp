<%@ page contentType="text/html;charset=gb2312"%>
<HTML>

<!-- Mirrored from web.hichina.com/sitemanager/templet/088/left1/ by HTTrack Website Copier/3.x [XR&CO'2003], Thu, 28 Aug 2003 00:02:02 GMT -->
<HEAD>
<TITLE>
<!--Your Company Name-->
Template
</TITLE>
<!--CharSet-->
<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=gb2312">
<link rel="stylesheet" href="personnael_department_images/CSS.CSS" type="text/css">
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
<BODY BGCOLOR=#994D00 leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">

<%
if ( session.getAttribute("UserName")==null || session.getAttribute("UserName")=="" || session.getAttribute("UserType")==null || session.getAttribute("UserType")=="" )
{
    session.removeAttribute("UserName");
    session.removeAttribute("UserType");
	response.sendRedirect("../login/login_exit.jsp");
}
%>
<%
  String usertype=(String)session.getAttribute("UserType");
  if(!(usertype.equals("five1") || usertype.equals("one1")) )
 // out.println("usertype="+usertype);
  response.sendRedirect("../login/login_exit.jsp");
%>




<!--Counter-->
<!--Something Here-->
<table width="778" border="0" cellspacing="0" cellpadding="0" align="center" height="150">
  <tr> 
    <td height="150" width="200" background="personnael_department_images/01.gif"><img src="personnael_department_images/index_pic.gif" width="200" height="150"></td>
    <td height="150" width="578" background="personnael_department_images/index_top1.gif" valign="top"> 
      <table border="0" cellspacing="0" cellpadding="0" width="578" align="center">
        <tr> 
          <td height="30" width="408"> <b></b> <b></b></td>
          <td height="30" width="170">&nbsp;</td>
        </tr>
        <tr> 
          <td height="30" width="408"> 
            <div align="center"><font color="#FFFFFF"><b><font size="5">
<!--Your Company Name-->人力资源部信息管理</font></b></font></div>
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
<table width="778" border="0" cellspacing="0" cellpadding="0" background="personnael_department_images/index_bg.gif" align="center">
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
            <table width="200" border="0" cellspacing="0" cellpadding="0" height="38" background="personnael_department_images/index_lm.gif">
              <tr> 
                <td> <div align="center"><b>

<a href="personnael_department_index.jsp">

人事部门的信息管理</a></b> </div></td>
              </tr>
            </table>

<!--Button1.Content.Begin-->
            <table width="200" border="0" cellspacing="0" cellpadding="0" height="38" background="personnael_department_images/index_lm.gif">
              <tr> 
                <td> 
                  <div align="center"><b>
<!--Button1.Link-->
<a href="../Departments/Departments_index.jsp">
<!--Button1-->
人事部门信息管理</a></b> </div>
                </td>
              </tr>
            </table>
<!--Button1.Content.End-->

<!--Button2.Content.Begin-->
            <table width="200" border="0" cellspacing="0" cellpadding="0" height="38" background="personnael_department_images/index_lm.gif">
              <tr> 
                <td> 
                  <div align="center"><b>
<!--Button2.Link-->
<a href="../employee/employee_index.jsp">
<!--Button2-->
员工详细信息管理 </a></b></div>
                </td>
              </tr>
            </table>
<!--Button2.Content.End-->



<!--Button4.Content.Begin-->
            <table width="200" border="0" cellspacing="0" cellpadding="0" height="38" background="personnael_department_images/index_lm.gif">
              <tr> 
                <td> 
                  <div align="center"><b>
<!--Button4.Link-->
<a href="../evaluation/evaluation_index.jsp">
<!--Button4-->
员工考勤信息管理 </a></b></div>
                </td>
              </tr>
            </table>
<!--Button4.Content.End-->



<!--Button4.Content.Begin-->
            <table width="200" border="0" cellspacing="0" cellpadding="0" height="38" background="personnael_department_images/index_lm.gif">
              <tr> 
                <td> 
                  <div align="center"><b>
<!--Button4.Link-->
<a href="../login/index_all.jsp">
<!--Button4-->
系统超级管理页面 </a></b></div>
                </td>
              </tr>
            </table>
<!--Button4.Content.End-->


<!--Button4.Content.Begin-->
            <table width="200" border="0" cellspacing="0" cellpadding="0" height="38" background="personnael_department_images/index_lm.gif">
              <tr> 
                <td> 
                  <div align="center"><b>
<!--Button4.Link-->
<a href="../login/login_update_query.jsp">
<!--Button4-->
修改用户密码 </a></b></div>
                </td>
              </tr>
            </table>
<!--Button4.Content.End-->

<!--Button5.Content.Begin-->
            <table width="200" border="0" cellspacing="0" cellpadding="0" height="38" background="personnael_department_images/index_lm.gif">
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
    <td valign="top" colspan="2"><img src="personnael_department_images/index_top2.gif" width="578" height="30"></td>
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
<table width="520" height="359" border="12" align="center">
  <tr>
    <td colspan="2" align="center"><p>人力资源部工作职责</p></td>
    </tr>
  <tr>
    <td width="28">1</td>
    <td width="455">负责后勤处人事管理工作，完成企业决策人下达的各项工作任务</td>
  </tr>
  <tr>
    <td>2</td>
    <td>根据后勤处工作计划，协助筹划、编制人力资源发展规划和人员需求计划；起草和制定人事管理办法和工资分配管理办法</td>
  </tr>
  <tr>
    <td>3</td>
    <td>负责后勤处人员甄选、招聘、竞聘、录用和解聘工作，负责相关工作关系的办理和制定劳务合同签订办法</td>
  </tr>
  <tr>
    <td>4</td>
    <td>参与薪资管理及分配方案的拟定，协调好劳资关系，负责后勤人员的劳资管理和薪酬档案管理</td>
  </tr>
  <tr>
    <td>5</td>
    <td>配合各部门制定本部门的各项规章制度，制定后勤处各项工作的规章制度、管理办法和各类服务质量标准；实施质量监督检查，跟踪管理，及时听取意见，提出改进措施，提高服务质量</td>
  </tr>
  <tr>
    <td>6</td>
    <td>负责后勤处绩效管理、职称评审、员工晋升、考核奖惩等工作</td>
  </tr>
  <tr>
    <td>7</td>
    <td>负责制定职工在职教育培训计划和培训经费年度使用计划，负责培训的组织实施和经费的使用</td>
  </tr>
  <tr>
    <td>8</td>
    <td>建立和完善后勤处人事档案，做好人事档案的立卷、维护、管理和调阅工作；建立人才储备库和人事行政资料库</td>
  </tr>
  <tr>
    <td>9</td>
    <td>完成上级交办的其他工作任务</td>
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
    <td><img src="personnael_department_images/index_bottom.gif" width="778" height="50"></td>
  </tr>
</table>
</BODY>

<!-- Mirrored from web.hichina.com/sitemanager/templet/088/left1/ by HTTrack Website Copier/3.x [XR&CO'2003], Thu, 28 Aug 2003 00:02:02 GMT -->
</HTML>
