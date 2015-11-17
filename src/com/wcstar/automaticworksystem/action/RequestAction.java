package com.wcstar.automaticworksystem.action;

import com.opensymphony.xwork2.ActionSupport;
import com.wcstar.automaticworksystem.model.Request;
import com.wcstar.automaticworksystem.server.RequestServer;

public class RequestAction extends ActionSupport
{
	/**
	 * 
	 */
	private static final long serialVersionUID = -3388952794477226539L;
	RequestServer requestserver = new RequestServer();
	private Request request;
	private int id;
	
	public String detail()
	{
		request = requestserver.detail(id);
		return SUCCESS;
	}
	public String delete()
	{
		requestserver.delete(id);
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
	public Request getRequest()
	{
		return request;
	}
	public void setRequest(Request request)
	{
		this.request = request;
	}
	
}
