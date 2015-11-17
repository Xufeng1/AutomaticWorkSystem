<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>My JSP 'index.jsp' starting page</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
</head>

<body background-color = #f2f2f2>

	<table align="center" border="5">

		<tr>
			<td colspan="2">
				<%//@ include file="../user/top.jsp"%>
				<iframe id="top_ifream" name ="top_ifream" src="../user/top.jsp" marginheight="0px" marginwidth="0px" width="1100px" height="200px" frameborder="0" scrolling="no">
				</iframe>
			</td>
		</tr>
		<tr>
			<td height="500" width="180">
				<iframe name ="left_ifream" src="../user/left.jsp" width="100%" height="100%" frameborder="0" scrolling="auto">
				</iframe>
			</td>
			<td height="500">
				<iframe name ="right_ifream" src="../user/welcome.jsp" width="100%" height="100%" frameborder="0" scrolling="auto">
				</iframe>
			</td>
		</tr>
		
	</table>

</body>
</html>
