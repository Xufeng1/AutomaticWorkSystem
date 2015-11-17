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
		table {width:700px; table-layout:fixed;}
		.typ1 {width:175px;}
		.typ2 {width:525px;}		
		th strong {display:block; width:100%;}		
		div {height:400px; overflow:auto;word-wrap:break-word;}
	</style>
	
	

  </head>
  
  <body>
  	当前位置：日常管理 - 会议记录 - 会议详情
    <table align="center" border="5">
    	<caption>会议详情</caption>
    	<tr>
    		<th class="typ1">编号：
    		<td class="typ1"><s:property value="meeting.id"/>
    		<th class="typ1">时间：
    		<td class="typ1"><s:property value="meeting.time"/>
    	</tr>
    	<tr>
    		<th class="typ1">地点：
    		<td class="typ1"><s:property value="meeting.address"/>
    		<th class="typ1">主持人：
    		<td class="typ1"><s:property value="meeting.compere"/>
    	</tr>
    	<tr>
    		<th class="typ1">参加人员：
    		<td class="typ2" colspan="3"><s:property value="meeting.person"/>
    	</tr>
    	<tr>
    		<th class="typ1">主题：
    		<td class="typ2" colspan="3"><s:property value="meeting.subject"/>
    	</tr>
    	<tr>
    		<th class="typ1">内容：
    		<td class="typ2" colspan="3"><textarea style="height: 400px;width: 525px"><s:property value="meeting.content"/></textarea>
    	</tr>
    </table>   
  </body>
</html>
