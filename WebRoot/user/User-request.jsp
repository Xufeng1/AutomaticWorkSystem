<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>


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
	function disp_alert()
	{
		formSubmit.submit();
		alert("提交成功！");
	}
</script>
			
</head>

<body>
<form name="formSubmit" method="post" action="user/User-add-request">
	<div class="table-blue">
	<table class="table">
    <caption><h1>发布申请</h1></caption>
    	<tr>  			
   			<th class="typ1">申请人：
   			<td class="typ2"><input name="person" type="text" style="width: 450px">
   		</tr>
   		<tr>  			
   			<th class="typ1">申请时间：
   			<td class="typ2"><input name="time" type="text" style="width: 450px">
   		</tr> 
   		<tr>  			
   			<th class="typ1">申请摘要：
   			<td class="typ2"><input name="subject" type="text" style="width: 450px">
   		</tr>
   		<tr height="200px">  			
   			<th class="typ1">申请内容：
   			<td class="typ2"><textarea name="content" style="width: 450px;height: 200px"></textarea>
   		</tr>
   		<tr>  			
   			<td colspan="2" align="center">
			<div class="grid_4">                    
            	<a href="#" class="button medium blue" onclick="disp_alert();">提交</a>
            </div>
            </td>
   		</tr>
   		
    </table>
    </div>
</form>
</body>
</html>
