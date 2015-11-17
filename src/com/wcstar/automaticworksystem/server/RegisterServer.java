package com.wcstar.automaticworksystem.server;

import org.hibernate.HibernateException;
import org.hibernate.Session;

import com.wcstar.automaticworksystem.model.User;

public class RegisterServer
{

	public boolean registerUser(User user)
	{
		try
		{
			Session session = HibernateSessionFactory.getSession();
			session.beginTransaction();
			session.save(user);
			session.getTransaction().commit();
			HibernateSessionFactory.closeSession();
		} catch (HibernateException e)
		{
			return false;
		}
		return true;
	}
}
