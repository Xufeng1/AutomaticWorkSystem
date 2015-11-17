<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page import="com.wcstar.automaticworksystem.util.Global;"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<!-- saved from url=(0030)http://localhost/crm_login.asp -->
<base href="<%=basePath%>">
<link rel="stylesheet" href="images/base.css" />
<script type="text/javascript">
	function disp_alert()
	{
		formSubmit.submit();
	}
</script>
<%
	Global.manager = null;   
%>
<HEAD>
<TITLE>自动化办公系统</TITLE>
<META content="text/html; charset=utf-8" http-equiv=Content-Type>
<LINK rel=stylesheet type=text/css href="images/style.css">
<META name=GENERATOR content="MSHTML 8.00.6001.19298">
</HEAD>
<BODY
	style="BACKGROUND: url(images/lgoin_body.jpg) #d6dee0 no-repeat center top">
	<DIV id=login>
		<DIV id=login_title></DIV>
		<DIV id=login_body>
			<FORM name="formSubmit" method=post action=login/login>
				<TABLE>
					<TBODY>
						<TR>
							<TD width=60 height="50" align=right>工 号：</TD>
							<TD colSpan=2><INPUT class=form_text type=text name="id">
							</TD>
						</TR>
						<TR>
							<TD height="50" align=right>密 码：</TD>
							<TD colSpan=2><INPUT class=form_text type=password
								name="password">
							</TD>
						</TR>

						<TR align=middle>
							<TD height="50" colSpan=2 align=middle>
								                   
            						<a href="#" class="button medium blue" onclick="disp_alert();">登录</a>
            					
							</TD>
						</TR>
					</TBODY>
				</TABLE>
			</FORM>
		</DIV>
		<DIV style="TEXT-ALIGN: center" id=login_bottom></DIV>
	</DIV>
</BODY>
</HTML>
