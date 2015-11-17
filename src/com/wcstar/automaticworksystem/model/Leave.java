package com.wcstar.automaticworksystem.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity (name = "t_leave")
public class Leave
{
	private int id;
	private String leavetime;
	private String backtime;
	private String person;
	private String reason;
	private String state;
	
	@Id
	@GeneratedValue
	public int getId()
	{
		return id;
	}
	public void setId(int id)
	{
		this.id = id;
	}
	public String getLeavetime()
	{
		return leavetime;
	}
	public void setLeavetime(String leavetime)
	{
		this.leavetime = leavetime;
	}
	public String getBacktime()
	{
		return backtime;
	}
	public void setBacktime(String backtime)
	{
		this.backtime = backtime;
	}
	public String getPerson()
	{
		return person;
	}
	public void setPerson(String person)
	{
		this.person = person;
	}
	public String getReason()
	{
		return reason;
	}
	public void setReason(String reason)
	{
		this.reason = reason;
	}
	public String getState()
	{
		return state;
	}
	public void setState(String state)
	{
		this.state = state;
	}
	
}
