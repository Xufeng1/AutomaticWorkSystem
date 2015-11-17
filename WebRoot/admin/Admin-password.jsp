<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<style type="text/css">
	table {width:600px;table-layout:fixed;}
	.typ1 {width:150px;}
	.typ2 {width:450px;}
	th strong {display:block;width:100%;}
	tr strong,tr td {white-space:nowrap;overflow:hidden;}
</style>

<script type="text/javascript">
	function pswCheck()
	{
		var oldpassword=document.getElementById("oldpassword");
		var password1=document.getElementById("password");
		var password2=document.getElementById("passwordmakesure");
		if(oldpassword.value!="<s:property value='admin.password'/>")
		{
			alert("密码输入错误！");
			return false;
		}
		if(password1.value!=password2.value)
		{
			alert("密码不一样，请重新输入");
			return false;
		}
		alert("修改成功！");
		return true;
	}
</script>
			
</head>

<body>
<!-- 下面的错误应该是编译器的bug -->
<form onsubmit="return pswCheck()" method="post" action="admin/Admin-updatePassword">
	当前位置：系统管理 - 修改密码 
	<table align="center" border="5">
    <caption>修改密码</caption>
    	<tr>  			
   			<th class="typ1">请输入当前密码：
   			<td class="typ2"><input id="oldpassword" name="oldpassword" type="password" style="width: 450px">
   		</tr>
   		<tr>  			
   			<th class="typ1">请输入新密码：
   			<td class="typ2"><input id="password" name="password" type="password" style="width: 450px">
   		</tr> 
   		<tr>  			
   			<th class="typ1">请确认新密码：
   			<td class="typ2"><input id="passwordmakesure" name="passwordmakesure" type="password" style="width: 450px">
   		</tr>  		
   		<tr>  			
   			<td colspan="2" align="center"><input type="submit" value="提交" >

   		</tr>
   		
    </table>
</form>
</body>
</html>
