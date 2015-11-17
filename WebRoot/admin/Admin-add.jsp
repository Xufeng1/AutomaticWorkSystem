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
	
	<!-- 下div可以自动换行，超出范围有拖动条 -->
	<style type="text/css">
		table {width:600px; table-layout:fixed;}
		.typ1 {width:150px;}		
		th strong {display:block; width:100%;}		
		div {height:400px; overflow:auto;word-wrap:break-word;}
	</style>
	<script type="text/javascript">
		function Check()
		{
			var id=document.getElementById("id");
			var name=document.getElementById("name");
			var password1=document.getElementById("password");
			var password2=document.getElementById("passwordmakesure");
			if(id.value == null || name.value == null
				 || password1.value == null || password2.value == null)
			{
				alert("请填写完整！");
				return false;
			}
			if(password1.value != password2.value)
			{
				alert("两次密码输入不符！");
				return false;
			}
			
			return true;
		}
	</script>
	
  </head>
   
  <body>
  <form onsubmit="return Check()" method="post" action="admin/Admin-add-searchAdmin">
  	当前位置：员工管理 - 管理员管理 - 添加管理员
    <table align="center" border="5">
    	<caption>添加管理员</caption>
    	<tr>
    		<th class="typ1">*账号：
    		<td class="typ1"><input id="id" name="id" type="text" class="typ1"/>
    		<th class="typ1">*姓名：
    		<td class="typ1"><input id="name" name="name" type="text" class="typ1"/>
    	</tr>  	
    	<tr>
    		<th class="typ1">*新密码：
    		<td class="typ1"><input id="password" name="password" type="password" class="typ1"/>
    		<th class="typ1">*确认密码：
    		<td class="typ1"><input id="passwordmakesure" name="passwordmakesure" type="password" class="typ1"/>
    	</tr> <tr>
    		<th class="typ1">电话：
    		<td class="typ1"><input id="cell" name="cell" type="text" class="typ1"/>
    		<th class="typ1">邮箱：
    		<td class="typ1"><input id="email" name="email" type="text" class="typ1"/>
    	</tr> 
    	<tr>  			
   			<td colspan="4" align="center"><input type="submit" value="添加">
   		</tr>
    </table> 
    </form>  
  </body>
</html>
