package com.wcstar.automaticworksystem.action;

import com.opensymphony.xwork2.ActionSupport;
import com.wcstar.automaticworksystem.model.Leave;
import com.wcstar.automaticworksystem.server.LeaveServer;

public class LeaveAction extends ActionSupport
{
	/**
	 * 
	 */
	private static final long serialVersionUID = -5438068482535677854L;
	private LeaveServer leaveserver = new LeaveServer();
	private Leave leave;
	private int id;
	public String detail()
	{
		leave = leaveserver.detail(id);
		return SUCCESS;
	}
	public String delete()
	{
		leaveserver.delete(id);
		return SUCCESS;
	}
	public int getId()
	{
		return id;
	}
	public void setId(int id)
	{
		this.id = id;
	}
	public Leave getLeave()
	{
		return leave;
	}
	public void setLeave(Leave leave)
	{
		this.leave = leave;
	}
	
}
