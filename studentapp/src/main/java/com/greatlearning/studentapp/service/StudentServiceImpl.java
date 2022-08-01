package com.greatlearning.studentapp.service;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.greatlearning.studentapp.entity.Student;

@Repository
public class StudentServiceImpl implements StudentService {
	private SessionFactory sessionFactory;
	private Session session;
	
	public StudentServiceImpl( SessionFactory sessionFactory ) {
		this.sessionFactory = sessionFactory;
		try {
			this.session = this.sessionFactory.getCurrentSession();
		} catch( HibernateException e ) {
			this.session = this.sessionFactory.openSession();
		}
	}

	@Transactional
	public List<Student> findAll() {
		List<Student> students = session.createQuery( "from Student", Student.class ).list();		
		return students;
	}

	@Transactional
	public Student findById(int id) {
		Student student = session.get( Student.class, id );
		return student;
	}

	@Transactional
	public void save(Student student) {
		session.saveOrUpdate( student );
	}

	@Transactional
	public void deleteById(int id) {
		Transaction tx = session.beginTransaction();
		
		Student student = session.get( Student.class, id );
		session.delete( student );
		
		tx.commit();
	}
}
