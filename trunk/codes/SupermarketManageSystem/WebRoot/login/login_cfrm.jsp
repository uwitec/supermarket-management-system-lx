<%@ page contentType="text/html;charset=gb2312"%>
<%-- <%@ page import="com.ideals.util.*" %> --%>
<%@ page import="java.util.*"%>
<%@ page import="login.*"%>


<HTML>

<!-- Mirrored from web.hichina.com/sitemanager/templet/089/left1/ by HTTrack Website Copier/3.x [XR&CO'2003], Thu, 28 Aug 2003 00:02:02 GMT -->
<HEAD>
<TITLE>
	<!--Your Company Name--> Template</TITLE>
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
		// <!--Page.OnLoad   
	}
//-->
</SCRIPT>
<script language="javascript">
	function checkvalue() {
		var mainform = document.forms["form1"];
		if (mainform.UserName.value.length == 0) {
			alert("请输入您的用户名！");
			mainform.UserName.focus();
			return false;
		}
		if (mainform.PassWords.value.length == 0) {
			alert("请输入您的密码！");
			mainform.PassWords.focus();
			return false;
		}
		if (mainform.Password_cfrm.value.length == 0) {
			alert("请输入您的确认密码！");
			mainform.Password_cfrm.focus();
			return false;
		}
		return true;
	}
</script>
</HEAD>
<BODY BGCOLOR=#990000 leftmargin="0" topmargin="0" marginwidth="0"
	marginheight="0">
	<!--Counter-->
	<!--Something Here-->
	<table width="778" border="0" cellspacing="0" cellpadding="0"
		align="center" height="240">
		<tr>
			<td width="218" height="75"><img src="images/index_top1.gif"
				width="218" height="75"></td>
			<td rowspan="2" width="560" height="240"
				background="images/index_top2.gif" valign="top">
				<table border="0" cellspacing="0" cellpadding="0" width="500"
					align="center">
					<tr>
						<td height="50" width="408"><b></b> <b></b></td>
					</tr>
					<tr>
						<td height="50" width="408">
							<div align="center">
								<font color="#FFFFFF"><b><font size="5"> <!--Your Company Name-->
											中型超市管理系统 </font> </b> </font>
							</div>
						</td>
					</tr>
					<tr>
						<td height="50" width="408">
							<div align="center">
								<font size="4" color="#FFFFFF"> <!--Your Company Name.English-->
								</font>
							</div>
						</td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td width="218" height="165" background="images/01.gif"><img
				src="images/index_pic.gif" width="218" height="165"></td>
		</tr>
	</table>
	<table width="778" border="0" cellspacing="0" cellpadding="0"
		background="images/index_bg.gif" align="center">
		<tr>
			<td width="218" valign="top">
				<table width="218" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td height="226">
							<table width="218" border="0" cellspacing="0" cellpadding="0"
								height="20">
								<tr>
									<td>
										<div align="center">
											<!--Language-->
											<!--Something Here-->
										</div>
									</td>
								</tr>
							</table> <!--Button6.Content.Begin-->
							<table width="218" border="0" cellspacing="0" cellpadding="0"
								height="36" background="images/index_lm.gif">
								<tr>
									<td>
										<div align="center">
											<b> <!--Button6.Link--> <a href="#"> <!--Button6-->
													系统登陆 </a> </b>
										</div>
									</td>
								</tr>
							</table> <!--Button6.Content.Begin-->
							<table width="218" border="0" cellspacing="0" cellpadding="0"
								height="36" background="images/index_lm.gif">
								<tr>
									<td>
										<div align="center">
											<b> <!--Button6.Link--> <a href="index.jsp"> <!--Button6-->
													返回到登陆</a> </b>
										</div>
									</td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</td>
			<td valign="top"><p>&nbsp;</p>
				<p>&nbsp;</p> <%
 	String UserName = request.getParameter("UserName");
 	//out.println("Username="+UserName);
 	String PassWords = request.getParameter("PassWords");
 	//out.println("PassWords="+PassWords);
 %> <%
 	String UserType = null;
 	int bumen = Integer.parseInt(request.getParameter("bumen"));
 	switch (bumen) {
 	case 1:
 		UserType = "one1";
 		out.println("人力资源部负责人");
 		out.println("UserType=" + UserType);
 		break;
 	case 2:
 		UserType = "one";
 		//  out.println("人力资源部员工");   
 		//  out.println("UserType="+UserType);	  
 		break;
 	case 3:
 		UserType = "two1";
 		//  out.println("商品销售部负责人");
 		//  out.println("UserType="+UserType);	  
 		break;
 	case 4:
 		UserType = "two";
 		//  out.println("商品销售部员");
 		//  out.println("UserType="+UserType);	  
 		break;
 	case 5:
 		UserType = "three1";
 		//  out.println("商品采购部负责人");   
 		//  out.println("UserType="+UserType);	  
 		break;
 	case 6:
 		UserType = "three";
 		//  out.println("商品采购部员工");
 		//   out.println("UserType="+UserType);	  
 		break;
 	case 7:
 		UserType = "four1";
 		//   out.println("公司财务部负责人");
 		//   out.println("UserType="+UserType);	  
 		break;
 	case 8:
 		UserType = "four";
 		//   out.println("公司财务部员工");   
 		//  out.println("UserType="+UserType);	  
 		break;
 	case 9:
 		UserType = "five1";
 		//  out.println("企业规划决策人");
 		//  out.println("UserType="+UserType);	  
 		break;
 	default:
 		out.println("error");
 		break;
 	}
 %> <jsp:useBean id="login" scope="session" class="login.LoginBean" />
				<%
					int result = login
							.getUsersLoginInfor(UserName, PassWords, UserType);
					// out.println("result="+result); 

					if (result == 1) {
						if (UserType.equals("one1")) {
							session.setAttribute("UserName", UserName);
							session.setAttribute("UserType", UserType);
							response.sendRedirect("../menu_index/personnael_department_index.jsp");
						}
						if (UserType.equals("one")) {
							session.setAttribute("UserName", UserName);
							session.setAttribute("UserType", UserType);
							response.sendRedirect("index_one_person.jsp");
						}
						if (UserType.equals("two1")) {
							session.setAttribute("UserName", UserName);
							session.setAttribute("UserType", UserType);
							response.sendRedirect("../menu_index/sale_department_index.jsp");
						}
						if (UserType.equals("two")) {
							session.setAttribute("UserName", UserName);
							session.setAttribute("UserType", UserType);
							response.sendRedirect("index_one_person.jsp");
						}
						if (UserType.equals("three1")) {
							session.setAttribute("UserName", UserName);
							session.setAttribute("UserType", UserType);
							response.sendRedirect("../menu_index/purchase_department_index.jsp");
						}
						if (UserType.equals("three")) {
							session.setAttribute("UserName", UserName);
							session.setAttribute("UserType", UserType);
							response.sendRedirect("index_one_person.jsp");
						}
						if (UserType.equals("four1")) {
							session.setAttribute("UserName", UserName);
							session.setAttribute("UserType", UserType);
							response.sendRedirect("../menu_index/finance_department_index.jsp");
						}
						if (UserType.equals("four")) {
							session.setAttribute("UserName", UserName);
							session.setAttribute("UserType", UserType);
							response.sendRedirect("index_one_person.jsp");
						}
						if (UserType.equals("five1")) {
							session.setAttribute("UserName", UserName);
							session.setAttribute("UserType", UserType);
							response.sendRedirect("index_all.jsp");
						}
					} else {
						session.removeAttribute("UserName");
						session.removeAttribute("UserType");
						out.println("登录失败！由于其他原因！");
					}
				%>
			</td>
			<td valign="top" width="20">&nbsp;</td>
		</tr>
	</table>
	<table width="778" border="0" cellspacing="0" cellpadding="0"
		align="center">
		<tr>
			<td><img src="images/index_bottom.gif" width="778" height="42">
			</td>
		</tr>
	</table>
</BODY>

<!-- Mirrored from web.hichina.com/sitemanager/templet/089/left1/ by HTTrack Website Copier/3.x [XR&CO'2003], Thu, 28 Aug 2003 00:02:02 GMT -->
</HTML>
