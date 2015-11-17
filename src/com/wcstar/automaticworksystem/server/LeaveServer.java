package com.wcstar.automaticworksystem.server;

import org.hibernate.Session;

import com.wcstar.automaticworksystem.model.Leave;

public class LeaveServer
{
	
	public Leave detail(int id)
	{
		Session session = HibernateSessionFactory.getSession();
		session.beginTransaction();		
		Leave leave = (Leave) session.get(Leave.class,id);
		session.getTransaction().commit();
		HibernateSessionFactory.closeSession();
		return leave;
	}
	public void delete(int id)
	{
		Session session = HibernateSessionFactory.getSession();
		session.beginTransaction();	
		Leave leave = (Leave) session.get(Leave.class,id);
		session.delete(leave);
		session.getTransaction().commit();
		HibernateSessionFactory.closeSession();
	}
}
