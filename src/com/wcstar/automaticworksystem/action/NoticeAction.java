package com.wcstar.automaticworksystem.action;

import com.opensymphony.xwork2.ActionSupport;
import com.wcstar.automaticworksystem.model.Notice;
import com.wcstar.automaticworksystem.server.NoticeServer;

public class NoticeAction extends ActionSupport
{
	/**
	 * 
	 */
	private static final long serialVersionUID = -1274391808578819136L;
	private NoticeServer noticeserver = new NoticeServer();
	private Notice notice;
	private int id;
	private String time;
	private String person;
	private String subject;
	private String content;

	public String detail()
	{
		notice = noticeserver.detail(id);
		return SUCCESS;
	}
	public String delete()
	{
		noticeserver.delete(id);
		return SUCCESS;
	}
	public String add()
	{
		notice = new Notice();
		notice.setTime(time);
		notice.setPerson(person);
		notice.setSubject(subject);
		notice.setContent(content);
		
		noticeserver.add(notice);
		return SUCCESS;
	}

	public Notice getNotice()
	{
		return notice;
	}
	public void setNotice(Notice notice)
	{
		this.notice = notice;
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
