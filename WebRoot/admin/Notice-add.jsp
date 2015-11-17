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
		.typ2 {width:450px;}		
		th strong {display:block; width:100%;}		
		div {height:400px; overflow:auto;word-wrap:break-word;}
	</style>
	<script type="text/javascript">
		function Check()
		{
			var time=document.getElementById("time");
			var person=document.getElementById("person");
			var subject=document.getElementById("subject");
			var content=document.getElementById("content");
			if(time.value == null || person.value == null
				 ||subject.value == null ||content.value == null)
			{
				alert("请填写完整！");
				return false;
			}
			
			return true;
		}
	</script>
	
  </head>
  
  <body>
  <form onsubmit="return Check()" method="post" action="admin/Notice-add-notice">
  	当前位置：日常管理 - 公告管理 - 添加公告
    <table align="center" border="5">
    	<caption>添加公告</caption>
    	<tr>
    		<th class="typ1">时间：
    		<td class="typ1"><input id="time" name="time" type="text" class="typ1"/>
    		<th class="typ1">公告人：
    		<td class="typ1"><input id="person" name="person" type="text" class="typ1"/>
    	</tr>  	
    	<tr>
    		<th class="typ1">主题：
    		<td class="typ2" colspan="3"><input id="subject" name="subject" type="text" class="typ2"/>
    	</tr>
    	<tr height="400px">
    		<th class="typ1">内容：
    		<td class="typ2" colspan="3"><textarea id="content" name="content" style="height: 400px;width: 450px"></textarea>
    	</tr>
    	<tr>  			
   			<td colspan="4" align="center"><input type="submit" value="添加">
   		</tr>
    </table> 
    </form>  
  </body>
</html>
