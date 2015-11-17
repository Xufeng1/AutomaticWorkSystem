package com.wcstar.automaticworksystem.action;

import com.opensymphony.xwork2.ActionSupport;
import com.wcstar.automaticworksystem.model.Admin;
import com.wcstar.automaticworksystem.model.User;
import com.wcstar.automaticworksystem.server.LoginServer;
import com.wcstar.automaticworksystem.util.Global;

public class LoginAction extends ActionSupport
{
	/**
	 * 
	 */
	private static final long serialVersionUID = 5003850049137659123L;
	private String id;
	private String password;
	private Admin admin = new Admin();
	private User user = new User();
	private LoginServer loginserver = new LoginServer();
	
	public String login()
	{
		if(loginserver.loginAdmin(admin))
		{
			Global.manager = id;
			return "adminsuccess";
		}
		if(loginserver.loginUser(user))
		{
			Global.manager = id;
			return "usersuccess";
		}
		return
			ERROR;
	}
		
	public String getId()
	{
		return id;
	}
	public void setId(String id)
	{
		this.id = id;
		admin.setId(id);
		user.setId(id);
	}
	public String getPassword()
	{
		return password;
	}
	public void setPassword(String password)
	{
		this.password = password;
		admin.setPassword(password);
		user.setPassword(password);
	}
	
	
}
