package com.wcstar.automaticworksystem.server;

import org.hibernate.Session;

import com.wcstar.automaticworksystem.model.Meeting;

public class MeetingServer
{
	
	public Meeting detail(int id)
	{
		Session session = HibernateSessionFactory.getSession();
		session.beginTransaction();		
		Meeting meeting = (Meeting) session.get(Meeting.class,id);
		session.getTransaction().commit();
		HibernateSessionFactory.closeSession();
		return meeting;
	}
	public void delete(int id)
	{
		Session session = HibernateSessionFactory.getSession();
		session.beginTransaction();	
		Meeting meeting = (Meeting) session.get(Meeting.class,id);
		session.delete(meeting);
		session.getTransaction().commit();
		HibernateSessionFactory.closeSession();
	}
	public void add(Meeting meeting)
	{	
		Session session = HibernateSessionFactory.getSession();
		session.beginTransaction();
		session.save(meeting);
		session.getTransaction().commit();
		HibernateSessionFactory.closeSession();
	}
}
