<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link rel="stylesheet" href="css/base.css" />

<style type="text/css">
	table {width:600px;table-layout:fixed;}
	.typ1 {width:150px;}
	.typ2 {width:450px;}
	th strong {display:block;width:100%;}
	tr strong,tr td {white-space:nowrap;overflow:hidden;text-align: center;}
</style>

<script type="text/javascript">
	function pswCheck()
	{
		var oldpassword=document.getElementById("oldpassword");
		var password1=document.getElementById("password");
		var password2=document.getElementById("passwordmakesure");
		if(oldpassword.value!="<s:property value='user.password'/>")
		{
			alert("密码输入错误！");
			return false;
		}
		if(password1.value!=password2.value)
		{
			alert("密码不一样，请重新输入");
			return false;
		}
		formSubmit.submit();
		alert("提交成功！");	

		return true;
	}
	
</script>
			
</head>

<body>
<!-- 下面的错误应该是编译器的bug -->
<form name="formSubmit" method="post" action="user/User-updatePassword"> 
	<div class="table-blue">
	<table class="table">
    <caption><h1>修改密码</h1></caption>
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
   			<td colspan="2" align="center">
				<div class="grid_4">                    
            		<a href="#" class="button medium blue" onclick="pswCheck();">修改</a>
           		</div>
           	</td>
   		</tr>
   		
    </table>
    </div>
</form>
</body>
</html>
