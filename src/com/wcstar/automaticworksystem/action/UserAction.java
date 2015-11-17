package com.wcstar.automaticworksystem.action;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.wcstar.automaticworksystem.model.Leave;
import com.wcstar.automaticworksystem.model.Meeting;
import com.wcstar.automaticworksystem.model.Notice;
import com.wcstar.automaticworksystem.model.Request;
import com.wcstar.automaticworksystem.model.User;
import com.wcstar.automaticworksystem.server.UserServer;
import com.wcstar.automaticworksystem.util.Global;

public class UserAction extends ActionSupport
{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1214485556039957555L;
	private UserServer userserver = new UserServer();
	private List<Meeting> meetings;	
	private List<Notice> notices;
	private List<User> users;
	private User user;
	private String id;
	private String password;
	private String name;
	private String department;
	private String position;
	private String cell;
	private String email;
	private String person;
	private String leavetime;
	private String backtime;
	private String reason;
	private String time;
	private String subject;
	private String content;
	
	public String meeting()
	{
		meetings = userserver.searchMeeting();
		return SUCCESS;
	}
	public String notice()
	{
		notices = userserver.searchNotice();
		return SUCCESS;
	}
	public String leave()
	{
		return SUCCESS;
	}
	public String addleave()
	{		
		Leave leave = new Leave();
		leave.setPerson(person);
		leave.setLeavetime(leavetime);
		leave.setBacktime(backtime);
		leave.setReason(reason);
		userserver.addLeave(leave);
		return SUCCESS;
	}
	public String request()
	{
		return SUCCESS;
	}
	public String addrequest()
	{	
		Request request = new Request();
		request.setPerson(person);
		request.setTime(time);
		request.setSubject(subject);
		request.setContent(content);
		userserver.addRequest(request);
		return SUCCESS;
	}
	public String searchUser()
	{
		users = userserver.searchUser();
		return SUCCESS;
	}
	public String detail()
	{
		user = userserver.detail(id);
		return SUCCESS;
	}
	public String delete()
	{
		userserver.delete(id);
		return SUCCESS;
	}
	public String information()
	{
		user = userserver.information(Global.manager);
		
		return SUCCESS;
	}
	public String update()
	{
		User user = new User();
		user.setId(id);
		user.setName(name);
		user.setDepartment(department);
		user.setPosition(position);
		user.setCell(cell);
		user.setEmail(email);
		userserver.update(user);
		return SUCCESS;
	}
	public String password()
	{
		user = userserver.information(Global.manager);
		return SUCCESS;
	}
	public String updatePassword()
	{
		userserver.updatePassword(Global.manager,password);
		return SUCCESS;
	}
	
	public List<Meeting> getMeetings()
	{
		return meetings;
	}
	public void setMeetings(List<Meeting> meetings)
	{
		this.meetings = meetings;
	}
	public List<Notice> getNotices()
	{
		return notices;
	}
	public void setNotices(List<Notice> notices)
	{
		this.notices = notices;
	}
	public List<User> getUsers()
	{
		return users;
	}
	public void setUsers(List<User> users)
	{
		this.users = users;
	}
	public String getPerson()
	{
		return person;
	}
	public void setPerson(String person)
	{
		this.person = person;
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
	public String getReason()
	{
		return reason;
	}
	public void setReason(String reason)
	{
		this.reason = reason;
	}
	public String getTime()
	{
		return time;
	}
	public void setTime(String time)
	{
		this.time = time;
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
	public User getUser()
	{
		return user;
	}
	public void setUser(User user)
	{
		this.user = user;
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
	public String getPassword()
	{
		return password;
	}
	public void setPassword(String password)
	{
		this.password = password;
	}
	
}
