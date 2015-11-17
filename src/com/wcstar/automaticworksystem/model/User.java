package com.wcstar.automaticworksystem.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity (name = "t_user")

//@Table (name="t_user")	用Table就报错，bug？还是jar包冲突？
public class User
{
	private String id;
	private String name;
	private String password;
	private String cell;
	private String email;
	/**
	 * 部门
	 */
	private String department;
	/**
	 * 职务
	 */
	private String position;
	
	@Id
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
