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
	
	<link rel="stylesheet" href="user/css/base.css" />
	
	<!-- 下div可以自动换行，超出范围有拖动条 -->
	<style type="text/css">
		table {width:600px; table-layout:fixed;}
		.typ1 {width:150px;}		
		th strong {display:block; width:100%;}		
		tr strong,tr td {white-space:nowrap;overflow:hidden;text-align: center;}
	</style>
	<script type="text/javascript">
		function disp_alert()
		{
			formSubmit.submit();
			alert("提交成功！");	
		}
	</script>
	
  </head>
  
  <body>
  <form name="formSubmit" method="post" action="user/User-update?id=<s:property value = "user.id"/>">
  	<div class="table-blue">
    <table class="table">
    	<caption><h1>个人信息</h1></caption>
    	<tr>
    		<th class="typ1">工号：
    		<td class="typ1"><s:property value="user.id"/>
    		<th class="typ1">姓名：
    		<td class="typ1"><input name="name" type="text" width="150px" value= "<s:property value="user.name"/>"/>
    	</tr>
    	<tr>
    		<th class="typ1">部门：
    		<td class="typ1"><input name="department" type="text" width="150px" value= "<s:property value="user.department"/>"/>
    		<th class="typ1">职位：
    		<td class="typ1"><input name="position" type="text" width="150px" value= "<s:property value="user.position"/>"/>
    	</tr>
    	<tr>
    		<th class="typ1">电话：
    		<td class="typ1"><input name="cell" type="text" width="150px" value= "<s:property value="user.cell"/>"/>
    		<th class="typ1">邮箱：
    		<td class="typ1"><input name="email" type="text" width="150px" value= "<s:property value="user.email"/>"/>
    	</tr>
    	<tr>  			
   			<td colspan="4" align="center">
				<div class="grid_4">                    
            		<a href="#" class="button medium blue" onclick="disp_alert();">修改</a>
           		</div>
           	</td>
   		</tr>
    </table> 
    </div>
    </form>  
  </body>
</html>
