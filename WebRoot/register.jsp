<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'user_register.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" href="/user/css/base.css" />
	
	<script type="text/javascript">
		function pswCheck()
		{
			var password1=document.getElementById("password1");
			var password2=document.getElementById("password2");			
			if(password1.value!=password2.value)
			{
				alert("密码不一样，请重新输入");
				return false;
			}
		}
	</script>

  </head>
  
  <body>
    <form method="post" action="login/register">
		<table align="center" >
			<tr>
				<td><h1>用户注册</h1></td>
			</tr>
			
			<tr>
				<td>工号： <input name="id" type="text" style="width: 120px"></td>
			</tr>
			<tr>
				<td>名字： <input name="name" type="text" style="width: 120px"></td>
			</tr>
			<tr>
				<td>登陆密码： <input id="password1" name="password" type="text" style="width: 120px"></td>
			</tr>
			<tr>
				<td>确认密码： <input id="password2" name="passwordmakesure" type="text" style="width: 120px"></td>
			</tr>
			<tr>
				<td>手机： <input name="cell" type="text" style="width: 120px"></td>
			</tr>
			<tr>
				<td>部门： <input name="department" type="text" style="width: 120px"></td>
			</tr>
			<tr>
				<td>职位： <input name="position" type="text" style="width: 120px"></td>
			</tr>
			<tr>
				<td>邮箱： <input name="email" type="text" style="width: 120px"></td>
			</tr>
			<tr>
				<td><a href="#" class="button medium blue" onclick="pswCheck();">提交</a></td>
			</tr>
		</table>
</form>
  </body>
</html>
