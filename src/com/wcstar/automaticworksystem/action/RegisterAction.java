package com.wcstar.automaticworksystem.action;

import com.opensymphony.xwork2.ActionSupport;
import com.wcstar.automaticworksystem.model.User;
import com.wcstar.automaticworksystem.server.RegisterServer;

public class RegisterAction extends ActionSupport
{
	/**
	 * 
	 */
	private static final long serialVersionUID = 7818554556604412205L;
	private String id;
	private String name;
	private String password;
	private String cell;
	private String email;
	/**
	 * ����
	 */
	private String department;
	/**
	 * ְ��
	 */
	private String position;
	private RegisterServer registerserver = new RegisterServer();
	
	public String register()
	{
		User user = new User();
		user.setId(id);
		user.setName(name);
		user.setPassword(password);
		user.setCell(cell);
		user.setDepartment(department);
		user.setPosition(position);
		user.setEmail(email);
		
		if(registerserver.registerUser(user))
			return SUCCESS;
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
	}
	public String getName()
	{
		return name;
	}
	public void setName(String name)
	{
		this.name = name;
	}
	public String getPassword()
	{
		return password;
	}
	public void setPassword(String password)
	{
		this.password = password;
	}
	public String getCell()
	{
		return cell;
	}
	public void setCell(String cell)
	{
		this.cell = cell;
	}
	public String getEmail()
	{
		return email;
	}
	public void setEmail(String email)
	{
		this.email = email;
	}
	public String getDepartment()
	{
		return department;
	}
	public void setDepartment(String department)
	{
		this.department = department;
	}
	public String getPosition()
	{
		return position;
	}
	public void setPosition(String position)
	{
		this.position = position;
	}
}
