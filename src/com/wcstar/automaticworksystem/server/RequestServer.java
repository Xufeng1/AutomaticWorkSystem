package com.wcstar.automaticworksystem.server;

import org.hibernate.Session;

import com.wcstar.automaticworksystem.model.Request;

public class RequestServer
{
	
	public Request detail(int id)
	{
		Session session = HibernateSessionFactory.getSession();
		session.beginTransaction();		
		Request request = (Request) session.get(Request.class,id);
		session.getTransaction().commit();
		HibernateSessionFactory.closeSession();
		return request;
	}
	public void delete(int id)
	{
		Session session = HibernateSessionFactory.getSession();
		session.beginTransaction();	
		Request request = (Request) session.get(Request.class,id);
		session.delete(request);
		session.getTransaction().commit();
		HibernateSessionFactory.closeSession();
	}
}
