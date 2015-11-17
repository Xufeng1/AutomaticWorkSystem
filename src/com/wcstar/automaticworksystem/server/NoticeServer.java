package com.wcstar.automaticworksystem.server;

import org.hibernate.Session;

import com.wcstar.automaticworksystem.model.Notice;

public class NoticeServer
{
	
	public Notice detail(int id)
	{
		Session session = HibernateSessionFactory.getSession();
		session.beginTransaction();		
		Notice notice = (Notice) session.get(Notice.class,id);
		session.getTransaction().commit();
		HibernateSessionFactory.closeSession();
		return notice;
	}
	public void delete(int id)
	{
		Session session = HibernateSessionFactory.getSession();
		session.beginTransaction();	
		Notice notice = (Notice) session.get(Notice.class,id);
		session.delete(notice);
		session.getTransaction().commit();
		HibernateSessionFactory.closeSession();
	}
	public void add(Notice notice)
	{	
		Session session = HibernateSessionFactory.getSession();
		session.beginTransaction();
		session.save(notice);
		session.getTransaction().commit();
		HibernateSessionFactory.closeSession();
	}
}
