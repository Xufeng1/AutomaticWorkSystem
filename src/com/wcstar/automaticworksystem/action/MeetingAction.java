package com.wcstar.automaticworksystem.action;

import com.opensymphony.xwork2.ActionSupport;
import com.wcstar.automaticworksystem.model.Meeting;
import com.wcstar.automaticworksystem.server.MeetingServer;

public class MeetingAction extends ActionSupport
{
	/**
	 * 
	 */
	private static final long serialVersionUID = -4441639782035606207L;
	private MeetingServer meetingserver = new MeetingServer();
	private Meeting meeting;
	private int id;
	private String time;
	private String address;
	private String compere;
	private String person;
	private String subject;
	private String content;

	public String detail()
	{
		meeting = meetingserver.detail(id);
		return SUCCESS;
	}
	public String delete()
	{
		meetingserver.delete(id);
		return SUCCESS;
	}
	public String add()
	{
		meeting = new Meeting();
		meeting.setTime(time);
		meeting.setAddress(address);
		meeting.setCompere(compere);
		meeting.setPerson(person);
		meeting.setSubject(subject);
		meeting.setContent(content);
		
		meetingserver.add(meeting);
		return SUCCESS;
	}

	public Meeting getMeeting()
	{
		return meeting;
	}
	public void setMeeting(Meeting meeting)
	{
		this.meeting = meeting;
	}
	public int getId()
	{
		return id;
	}
	public void setId(int id)
	{
		this.id = id;
	}
	public String getTime()
	{
		return time;
	}
	public void setTime(String time)
	{
		this.time = time;
	}
	public String getAddress()
	{
		return address;
	}
	public void setAddress(String address)
	{
		this.address = address;
	}
	public String getCompere()
	{
		return compere;
	}
	public void setCompere(String compere)
	{
		this.compere = compere;
	}
	public String getPerson()
	{
		return person;
	}
	public void setPerson(String person)
	{
		this.person = person;
	}
	public String getSubject()
	{
		return subject;
	}
	public void setSubject(String subject)
	{
		this.subject = subject;
	}
	public String getContent()
	{
		return content;
	}
	public void setContent(String content)
	{
		this.content = content;
	}
	
}
