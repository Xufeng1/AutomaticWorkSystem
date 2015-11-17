package com.wcstar.automaticworksystem.server;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import com.wcstar.automaticworksystem.model.Admin;
import com.wcstar.automaticworksystem.model.User;

public class LoginServer
{

	public boolean loginUser(User user)
	{
		Session session = HibernateSessionFactory.getSession();
		session.beginTransaction();
		Query q = session.createQuery("from t_user u where u.id = ? and u.password = ?");
		q.setParameter(0, user.getId())
				.setParameter(1, user.getPassword());
		@SuppressWarnings("unchecked")
		List<User> us = (List<User>)q.list();
//		user = (User) session.get(User.class,id);
		session.getTransaction().commit();
		HibernateSessionFactory.closeSession();
		if(us.size() == 1)
		{
			return true;
		}
		else 
			return false;
	}
	public boolean loginAdmin(Admin admin)
	{
		Session session = HibernateSessionFactory.getSession();
		session.beginTransaction();
		Query q = session.createQuery("from t_admin a where a.id = ? and a.password = ?");
		q.setParameter(0, admin.getId())
				.setParameter(1, admin.getPassword());
		@SuppressWarnings("unchecked")
		List<Admin> ad = (List<Admin>)q.list();
//		admin = (Admin) session.get(Admin.class,id);
		session.getTransaction().commit();
		HibernateSessionFactory.closeSession();
		if(ad.size() == 1)
		{
			return true;
		}
		else 
			return false;
	}
}
