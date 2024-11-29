package com.packages.dao;

import java.util.List;

import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.packages.entity.Notes;
import com.packages.entity.User;

@Transactional
@Repository
public class UserDaoImpl implements UserDao{

	@Autowired
	private HibernateTemplate hibernatetemplate;
	@Override
	public int saveUser(User user) {
		// TODO Auto-generated method stub
		int i=(Integer)hibernatetemplate.save(user);
		return i;
	}

	@Override
	public User login(String email, String password) {
		// TODO Auto-generated method stub
		String sql = "from User where email=:em and password=:pwd";
		User us = (User)hibernatetemplate.execute(s->{
			Query q = s.createQuery(sql);
			q.setString("em", email);
			q.setString("pwd", password);
			return q.uniqueResult();
		});
		return us;
	}

	@Override
	public int saveNotes(Notes notes) {
		// TODO Auto-generated method stub
		int i=(Integer)hibernatetemplate.save(notes);
		return i;
	}

	@Override
	public List<Notes> getNotesByUser(User user) {
		// TODO Auto-generated method stub
		String sql = "from Notes where user=:us";
		List<Notes> list =hibernatetemplate.execute(s->{
			Query q = s.createQuery(sql);
			q.setEntity("us",user);
			return q.getResultList();
		});
		return list;
	}

	@Override
	public Notes getNotesById(int id) {
		// TODO Auto-generated method stub
		Notes n = hibernatetemplate.get(Notes.class,id);
		return n;
	}

	@Override
	public void deleteNotes(int id) {
		// TODO Auto-generated method stub
		Notes n = hibernatetemplate.get(Notes.class,id);
		hibernatetemplate.delete(n);
	}

	@Override
	public void updateNotes(Notes notes) {
		// TODO Auto-generated method stub
		hibernatetemplate.update(notes);
		
	}
	
	
	
}
