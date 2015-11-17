package com.wcstar.automaticworksystem.action;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.wcstar.automaticworksystem.model.Admin;
import com.wcstar.automaticworksystem.model.Leave;
import com.wcstar.automaticworksystem.model.Meeting;
import com.wcstar.automaticworksystem.model.Notice;
import com.wcstar.automaticworksystem.model.Request;
import com.wcstar.automaticworksystem.model.User;
import com.wcstar.automaticworksystem.server.AdminServer;
import com.wcstar.automaticworksystem.util.Global;

public class AdminAction extends ActionSupport
{
	/**
	 * 
	 */
	private static final long serialVersionUID = -6664560403254342612L;
	private AdminServer adminserver = new AdminServer();
	private List<Meeting> meetings;	
	private List<Notice> notices;
	private List<User> users;
	private List<Admin> admins;
	private List<Leave> leaves;
	private List<Request> requests;
	private Admin admin;
	private String id;
	private String password;
	private String name;
	private String cell;
	private String email;	
	private String person;
	private String time;
	private String subject;
	private String content;
	public String meeting()
	{
		meetings = adminserver.searchMeeting();
		return SUCCESS;
	}
	public String notice()
	{
		notices = adminserver.searchNotice();
		return SUCCESS;
	}
	public String leave()
	{
		leaves = adminserver.searchLeave();
		return SUCCESS;
	}
	public String request()
	{
		requests = adminserver.searchRequest();
		return SUCCESS;
	}
	public String searchUser()
	{
		users = adminserver.searchUser();
		return SUCCESS;
	}
	public String searchAdmin()
	{
		admins = adminserver.searchAdmin();
		return SUCCESS;
	}
	public String delete()
	{
		adminserver.delete(id);
		return SUCCESS;
	}
	public String add()
	{
		admin = new Admin();
		admin.setId(id);
		admin.setName(name);
		admin.setPassword(password);
		admin.setCell(cell);
		admin.setEmail(email);
		
		adminserver.add(admin);
		return SUCCESS;
	}
	public String information()
	{
		admin = adminserver.information(Global.manager);		
		return SUCCESS;
	}
	public String update()
	{
		admin = new Admin();
		admin.setId(id);
		admin.setName(name);
		admin.setCell(cell);
		admin.setEmail(email);
		adminserver.update(admin);
		return SUCCESS;
	}
	public String updatePassword()
	{
		adminserver.updatePassword(Global.manager,password);
		return SUCCESS;
	}
	public String password()
	{
		admin = adminserver.information(Global.manager);
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
	public String getPerson()
	{
		return person;
	}
	public void setPerson(String person)
	{
		this.person = person;
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
	public String getId()
	{
		return id;
	}
	public void setId(String id)
	{
		this.id = id;
	}
	public Admin getAdmin()
	{
		return admin;
	}
	public void setAdmin(Admin admin)
	{
		this.admin = admin;
	}
	public String getPassword()
	{
		return password;
	}
	public void setPassword(String password)
	{
		this.password = password;
	}
	public String getName()
	{
		return name;
	}
	public void setName(String name)
	{
		this.name = name;
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
	public List<Leave> getLeaves()
	{
		return leaves;
	}
	public void setLeaves(List<Leave> leaves)
	{
		this.leaves = leaves;
	}
	public List<Request> getRequests()
	{
		return requests;
	}
	public void setRequests(List<Request> requests)
	{
		this.requests = requests;
	}
	public List<User> getUsers()
	{
		return users;
	}
	public void setUsers(List<User> users)
	{
		this.users = users;
	}
	public List<Admin> getAdmins()
	{
		return admins;
	}
	public void setAdmins(List<Admin> admins)
	{
		this.admins = admins;
	}
	
}
