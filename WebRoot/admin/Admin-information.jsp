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
			alert("修改成功！");
			return true;
		}
	</script>
	
  </head>
  
  <body>
  <form onsubmit="return Check()" method="post" action="admin/Admin-update-information?id=<s:property value = "admin.id"/>">
  	当前位置：系统管理 - 个人信息 
    <table align="center" border="5">
    	<caption>个人信息</caption>
    	<tr>
    		<th class="typ1">账号：
    		<td class="typ1"><s:property value="admin.id"/>
    		<th class="typ1">姓名：
    		<td class="typ1"><input name="name" type="text" width="150px" value= "<s:property value="admin.name"/>"/>
    	</tr> 	
    	<tr>
    		<th class="typ1">电话：
    		<td class="typ1"><input name="cell" type="text" width="150px" value= "<s:property value="admin.cell"/>"/>
    		<th class="typ1">邮箱：
    		<td class="typ1"><input name="email" type="text" width="150px" value= "<s:property value="admin.email"/>"/>
    	</tr>
    	<tr>  			
   			<td colspan="4" align="center"><input type="submit" value="修改">
   		</tr>
    </table> 
    </form>  
  </body>
</html>
