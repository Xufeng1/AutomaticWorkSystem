package com.wcstar.automaticworksystem.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity (name = "t_admin")

//@Table (name="t_admin")	出bug
public class Admin
{
	private String id;
	private String name;
	private String password;
	private String cell;
	private String email;
	
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
}
