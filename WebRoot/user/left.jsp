<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="css/amcss.css" rel="stylesheet" type="text/css">
<script language="JavaScript">
	function show(i) {
		if (i.style.display == "none") {
			i.style.display = "";
		} else {
			i.style.display = "none";
		}
	}
	function setRefresh(){
	   window.parent.frames.top_ifream.location.reload() ;
	}
</script>

<table width="162" border="0" cellpadding="0" cellspacing="1">
	<tr>
		<td width="160" height="38" align=right class=font><div
				align="center">
				<a href="welcome.jsp" target="right_ifream">
					<img src="images/menu.gif" width="158" height="38" border="0"> 
				</a>
			</div>
		</td>
	</tr>
	<tr>
		<td valign="top">
			<!--=============-->
			<table width="100%" border="0" align=center cellpadding="0"
				cellspacing="1">
				<tr>
					<td height=27 background="images/title.gif" style="cursor:hand"
						onClick="show(a1)">
						<div align="center">
							<strong>日常管理</strong>
						</div>
					</td>
				</tr>
				<tr>
					<td>
						<DIV id=a1 style="DISPLAY: none">
							<div align="left">
								<table width="156" border="0" cellspacing="1" cellpadding="1"
									align="center">
									<tr>
										<td align="center" height=23 class="amrow">・<a href="User-meeting"
											target="right_ifream" onClick="setRefresh()">会议记录</a>
										</td>
									</tr>
									<tr>
										<td align="center" height=23 class="amrow">・<a href="User-notice"
											target="right_ifream" onClick="setRefresh()">公告查询</a>
										</td>
									</tr>
								</table>
							</div>
						</div></td>
				</tr>
				<tr>
					<td height=27 background="images/title.gif" style="cursor:hand"
						onClick="show(a2)">
						<div align="center">
							<strong>考勤管理</strong>
						</div>
					</td>
				</tr>
				<tr>
					<td>
						<DIV id=a2 style="DISPLAY: none">
							<div align="left">
								<table width="156" border="0" cellspacing="1" cellpadding="1"
									align="center">							
									<tr>
										<td align="center" height=23 class="amrow">・<a href="User-leave"
											target="right_ifream" onClick="setRefresh()">请假登记</a>
										</td>
									</tr>								
								</table>
							</div>
						</div></td>
				</tr>
				<tr>
					<td height=27 background="images/title.gif" style="cursor:hand"
						onClick="show(a3)">
						<div align="center">
							<strong>申请管理</strong>
						</div>
					</td>
				</tr>
				<tr>
					<td>
						<DIV id=a3 style="DISPLAY: none">
							<div align="left">
								<table width="156" border="0" cellspacing="1" cellpadding="1"
									align="center">
									<tr>
										<td align="center" height=23 class="amrow">・<a href="User-request"
											target="right_ifream" onClick="setRefresh()">发布申请</a>
										</td>
									</tr>
								</table>
							</div>
						</div></td>
				</tr>
				<tr>
					<td height=27 background="images/title.gif" style="cursor:hand"
						onClick="show(a4)">
						<div align="center">
							<strong>员工管理</strong>
						</div>
					</td>
				</tr>
				<tr>
					<td>
						<DIV id=a4 style="DISPLAY: none">
							<div align="left">
								<table width="156" border="0" cellspacing="1" cellpadding="1"
									align="center">
									<tr>
										<td align="center" height=23 class="amrow">・<a href="User-searchUser"
											target="right_ifream" onClick="setRefresh()">员工查询</a></td>
									</tr>
								</table>
							</div>
						</div></td>
				</tr>
				<tr>
					<td height=27 background="images/title.gif" style="cursor:hand"
						onClick="show(a18)">
						<div align="center">
							<strong>系统管理</strong>
						</div>
					</td>
				</tr>
				<tr>
					<td>
						<DIV id=a18 style="DISPLAY: none">
							<div align="left">
								<table width="156" border="0" cellspacing="1" cellpadding="1"
									align="center">
									<tr>
										<td align="center" height=23 class="amrow">・<a href="User-information" 
											target="right_ifream" onClick="setRefresh()">个人信息</a>
										</td>
									</tr>
									<tr>
										<td align="center" height=23 class="amrow">・<a href="User-password"
											target="right_ifream" onClick="setRefresh()">修改密码</a></td>
									</tr>
								</table>
							</div>
						</div>
					</td>
				</tr>
				<tr>
					<td height=27 background="images/admin_left_10.gif"
						style="cursor:hand"
						onClick="if (confirm('你确定要退出系统吗？')){top.location='../login.jsp'}"
					>
						<div align="center">			
							<strong>安全退出</strong>
						</div>
					</td>
				</tr>

			</table> <!--=============--></td>
	</tr>
	<tr>
		<td height=5 bgcolor="#FFFFFF"></td>
	</tr>
	<tr>
		<td height=60 bgcolor="#FFFFFF" class="amrow">
			<strong>
				<p align="left" style="line-height:180%">
					&nbsp;版权：<br> &nbsp;<a target=_blank class=black>760823254@qq.com</a><br>
					&nbsp;版本：<br> &nbsp;1.0内测版
			</strong>
		</td>
	</tr>
	<tr>
		<td height=3 bgcolor="#FFFFFF">&nbsp;</td>
	</tr>
</table>

</html>
