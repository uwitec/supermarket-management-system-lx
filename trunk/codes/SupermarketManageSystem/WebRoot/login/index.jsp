<%@ page contentType="text/html;charset=gb2312"%>
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
<%
	if (session.getAttribute("UserName") == null
			|| session.getAttribute("UserName") == ""
			|| session.getAttribute("UserType") == null
			|| session.getAttribute("UserType") == "") {
		session.removeAttribute("UserName");
		session.removeAttribute("UserType");
	}
%>
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
							</table>
						</td>
					</tr>
				</table>
			</td>
			<td valign="top"><p>&nbsp;</p>
				<p>&nbsp;</p>



				<form id="form1" name="form1" method="post" action="login_cfrm.jsp">
					<table width="405" height="265" border="12" align="center">
						<tr>
							<td colspan="2" align="center">用户登录</td>
						</tr>
						<tr>
							<td width="181" align="center">用户姓名</td>
							<td width="208"><input type="text" name="UserName"
								id="textfield" />
							</td>
						</tr>
						<tr>
							<td align="center">用户密码</td>
							<td><input type="password" name="PassWords" id="textfield" />
							</td>
						</tr>
						<tr>
							<td height="47" align="center">用户部门</td>
							<td><select name="bumen" size="1" id="select">
									<option value="1">人力资源部负责人</option>
									<option value="2">人力资源部员工</option>
									<option value="3">商品销售部负责人</option>
									<option value="4">商品销售部员工</option>
									<option value="5">商品采购部负责人</option>
									<option value="6">商品采购部员工</option>
									<option value="7">公司财务部负责人</option>
									<option value="8">公司财务部员工</option>
									<option value="9">企业规划决策人</option>
							</select>
							</td>
						</tr>
						<tr>
							<td height="64" align="center"><input type="submit"
								name="Submit" value="登录" id="Submit"
								onClick="javascript:return (checkvalue());" />
							</td>
							<td align="center"><input type="reset" name="Reset"
								value="重填" id="Submit" />
							</td>
						</tr>
					</table>
				</form>
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
