<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import = "com.wcstar.automaticworksystem.util.Global;" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<%
     	if(Global.manager == null){   //如果session过期，则提示用户重新登录系统
     %>
<script language="javascript">                         
          alert("您登录的网页已经过期，请重新登录！");           
          top.location="../login.jsp" 
   </script>
<%	
    		}
   	%>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<title>自动化办公系统</title>
		<link rel="stylesheet" type="text/css"
			href="ext/resources/css/ext-all.css" />
		<!-- GC -->
		<!-- LIBS -->
		<script type="text/javascript" src="ext/adapter/ext/ext-base.js">
	
</script>
		<!-- ENDLIBS -->
		<script type="text/javascript" src="ext/ext-all.js">
	
</script>

		<script type="text/javascript" src="ext/ext-lang-zh_CN.js">
	
</script>
		<style type="text/css">
html,body {
	font: normal 12px verdana;
	margin: 0;
	padding: 0;
	border: 0 none;
	overflow: hidden;
	height: 100%;
}

.empty .x-panel-body {
	padding-top: 0;
	text-align: center;
	font-style: italic;
	color: gray;
	font-size: 11px;
}

.x-btn button {
	font-size: 14px;
}

.x-panel-header {
	font-size: 14px;
}
</style>
<script type="text/javascript">	
	Ext.onReady( function() {
		//Ext.Msg.alert('ext','welcome you!');
		 

		var addPanel = function(btn, event) {
			var n;
			n = tabPanel.getComponent(btn.id);
			if(n) {
				tabPanel.setActiveTab(n);
				return;
			}
			n = tabPanel.add( {
				id : btn.id,
				title : btn.id,
				html : '<iframe width=100% height=100% src=' + btn.id + ' />',
				//autoLoad : '',
				closable : 'true'
			});
			tabPanel.setActiveTab(n);
		}

		var item1 = new Ext.Panel( {
			title : '日常管理',
			//html : '&lt;empty panel&gt;',
// 			cls : 'empty',
			items : [ 
				new Ext.Button({
					id : 'Admin-meeting',
					text : '会议管理',
					width : '100%',
					listeners : {
						click : addPanel
					}

				}),

				new Ext.Button({
					id : 'Admin-notice',
					text : '公告管理',
					width : '100%',
					listeners : {
						click : addPanel
					}

				})

				]
		});

		var item2 = new Ext.Panel( {
			title : '考勤管理',
// 			html : '&lt;empty panel&gt;',
// 			cls : 'empty'
			items : [ 
				new Ext.Button({
					id : 'Admin-leave',
					text : '请假管理',
					width : '100%',
					listeners : {
						click : addPanel
					}

				})			

				]
		});

		var item3 = new Ext.Panel( {
			title : '申请管理',
// 			html : '&lt;empty panel&gt;',
// 			cls : 'empty'
			items : [ 
				new Ext.Button({
					id : 'Admin-request',
					text : '审核批示',
					width : '100%',
					listeners : {
						click : addPanel
					}

				})

				]
		});

		var item4 = new Ext.Panel( {
			title : '员工管理',
// 			html : '&lt;empty panel&gt;',
// 			cls : 'empty'
			items : [ 
				new Ext.Button({
					id : 'Admin-searchUser',
					text : '员工管理',
					width : '100%',
					listeners : {
						click : addPanel
					}

				}),

				new Ext.Button({
					id : 'Admin-searchAdmin',
					text : '管理员管理',
					width : '100%',
					listeners : {
						click : addPanel
					}

				})

				]
		});

		var item5 = new Ext.Panel( {
			title : '系统管理',
// 			html : '&lt;empty panel&gt;',
// 			cls : 'empty'
			items : [ 
				new Ext.Button({
					id : 'Admin-information',
					text : '个人信息',
					width : '100%',
					listeners : {
						click : addPanel
					}

				}),

				new Ext.Button({
					id : 'Admin-password',
					text : '修改密码',
					width : '100%',
					listeners : {
						click : addPanel
					}

				}),
				
				new Ext.Button({
					id : 'Admin-quit',
					text : '退出系统',
					width : '100%',
					listeners : {
						click : function beSure() 
								{ 
									if(confirm("确认退出系统？")) 
									{ 
										top.location="../login.jsp"
									} 
								}
					}

				})

				]
		});

		var accordion = new Ext.Panel( {
			region : 'west',
			margins : '5 0 5 5',
			split : true,
			width : 210,
			layout : 'accordion',
			items : [ item1, item2, item3, item4, item5 ]
		});

		var tabPanel = new Ext.TabPanel( {
			region : 'center',
			enableTabScroll : true,
			deferredRender : false,
			activeTab : 0,
			items : [ {

				title : 'welcome',

				//html : 'aaaaaa'
				autoLoad : 'welcome.jsp'
			} ]
		});

		var viewport = new Ext.Viewport( {
			layout : 'border',
			items : [ accordion, tabPanel ]
		});

	});
</script>
	</head>
	<body>
		
		<!-- EXAMPLES -->
	</body>
</html>
