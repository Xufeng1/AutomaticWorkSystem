package com.wcstar.automaticworksystem.server;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import com.wcstar.automaticworksystem.model.Leave;
import com.wcstar.automaticworksystem.model.Meeting;
import com.wcstar.automaticworksystem.model.Notice;
import com.wcstar.automaticworksystem.model.Request;
import com.wcstar.automaticworksystem.model.User;

public class UserServer
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
	public void delete(String id)
	{
		Session session = HibernateSessionFactory.getSession();
		session.beginTransaction();	
		User user = (User) session.get(User.class,id);
		session.delete(user);
		session.getTransaction().commit();
		HibernateSessionFactory.closeSession();
	}
	public void addLeave(Leave leave)
	{		
		Session session = HibernateSessionFactory.getSession();
		session.beginTransaction();
		session.save(leave);
		session.getTransaction().commit();
		HibernateSessionFactory.closeSession();
	}
	public void addRequest(Request request)
	{		
		Session session = HibernateSessionFactory.getSession();
		session.beginTransaction();
		session.save(request);
		session.getTransaction().commit();
		HibernateSessionFactory.closeSession();
	}
	public User detail(String id)
	{
		Session session = HibernateSessionFactory.getSession();
		session.beginTransaction();		
		User user = (User) session.get(User.class,id);
		session.getTransaction().commit();
		HibernateSessionFactory.closeSession();
		return user;
	}
	public User information(String id)
	{
		Session session = HibernateSessionFactory.getSession();
		session.beginTransaction();		
		User user = (User) session.get(User.class,id);
		session.getTransaction().commit();
		HibernateSessionFactory.closeSession();
		return user;
	}
	public void update(User user)
	{
		Session session = HibernateSessionFactory.getSession();
		session.beginTransaction();		
		session.update(user);
		session.getTransaction().commit();
		HibernateSessionFactory.closeSession();
	}
	public void updatePassword(String id,String password)
	{
		Session session = HibernateSessionFactory.getSession();
		session.beginTransaction();
		Query q = session.createQuery("update t_user u set u.password = ? where u.id = ?");
		q.setString(0, password)
			.setString(1, id);
		q.executeUpdate();
		session.getTransaction().commit();
		HibernateSessionFactory.closeSession();

	}
}
