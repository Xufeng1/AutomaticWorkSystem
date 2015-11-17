package com.wcstar.automaticworksystem.server;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import com.wcstar.automaticworksystem.model.Admin;
import com.wcstar.automaticworksystem.model.Leave;
import com.wcstar.automaticworksystem.model.Meeting;
import com.wcstar.automaticworksystem.model.Notice;
import com.wcstar.automaticworksystem.model.Request;
import com.wcstar.automaticworksystem.model.User;

public class AdminServer
{

	public List<Meeting> searchMeeting()
	{
		Session session = HibernateSessionFactory.getSession();
		session.beginTransaction();
		Query q = session.createQuery("from t_meeting");

		@SuppressWarnings("unchecked")
		List<Meeting> meeting = (List<Meeting>)q.list();
//		user = (User) session.get(User.class,id);
		session.getTransaction().commit();
		HibernateSessionFactory.closeSession();
		 
		return meeting;
	}
	
	public List<Notice> searchNotice()
	{
		Session session = HibernateSessionFactory.getSession();
		session.beginTransaction();
		Query q = session.createQuery("from t_notice");

		@SuppressWarnings("unchecked")
		List<Notice> notice = (List<Notice>)q.list();
//		user = (User) session.get(User.class,id);
		session.getTransaction().commit();
		HibernateSessionFactory.closeSession();
		 
		return notice;
	}
	public List<User> searchUser()
	{
		Session session = HibernateSessionFactory.getSession();
		session.beginTransaction();
		Query q = session.createQuery("from t_user");

		@SuppressWarnings("unchecked")
		List<User> users = (List<User>)q.list();
//		user = (User) session.get(User.class,id);
		session.getTransaction().commit();
		HibernateSessionFactory.closeSession();
		 
		return users;
	}
	public List<Admin> searchAdmin()
	{
		Session session = HibernateSessionFactory.getSession();
		session.beginTransaction();
		Query q = session.createQuery("from t_admin");

		@SuppressWarnings("unchecked")
		List<Admin> admins = (List<Admin>)q.list();
//		user = (User) session.get(User.class,id);
		session.getTransaction().commit();
		HibernateSessionFactory.closeSession();
		 
		return admins;
	}
	public List<Leave> searchLeave()
	{
		Session session = HibernateSessionFactory.getSession();
		session.beginTransaction();
		Query q = session.createQuery("from t_leave");

		@SuppressWarnings("unchecked")
		List<Leave> leaves = (List<Leave>)q.list();
//		user = (User) session.get(User.class,id);
		session.getTransaction().commit();
		HibernateSessionFactory.closeSession();
		 
		return leaves;
	}
	public List<Request> searchRequest()
	{
		Session session = HibernateSessionFactory.getSession();
		session.beginTransaction();
		Query q = session.createQuery("from t_request");

		@SuppressWarnings("unchecked")
		List<Request> requests = (List<Request>)q.list();
//		user = (User) session.get(User.class,id);
		session.getTransaction().commit();
		HibernateSessionFactory.closeSession();
		 
		return requests;
	}
	public void delete(String id)
	{
		Session session = HibernateSessionFactory.getSession();
		session.beginTransaction();	
		Admin admin = (Admin) session.get(Admin.class,id);
		session.delete(admin);
		session.getTransaction().commit();
		HibernateSessionFactory.closeSession();
	}
	public void add(Admin admin)
	{	
		Session session = HibernateSessionFactory.getSession();
		session.beginTransaction();
		session.save(admin);
		session.getTransaction().commit();
		HibernateSessionFactory.closeSession();
	}
	public Admin information(String id)
	{
		Session session = HibernateSessionFactory.getSession();
		session.beginTransaction();		
		Admin admin = (Admin) session.get(Admin.class,id);
		session.getTransaction().commit();
		HibernateSessionFactory.closeSession();
		return admin;
	}
	public void update(Admin admin)
	{
		Session session = HibernateSessionFactory.getSession();
		session.beginTransaction();		
		session.update(admin);
		session.getTransaction().commit();
		HibernateSessionFactory.closeSession();
	}
	public void updatePassword(String id,String password)
	{
		Session session = HibernateSessionFactory.getSession();
		session.beginTransaction();
		Query q = session.createQuery("update t_admin ad set ad.password = ? where ad.id = ?");
		q.setString(0, password)
			.setString(1, id);
		q.executeUpdate();
		session.getTransaction().commit();
		HibernateSessionFactory.closeSession();
	}
}
