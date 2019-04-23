package com.coderbd.daoImpl;

import com.coderbd.dao.StudentDao;
import com.coderbd.entity.Student;
import com.coderbd.util.NewHibernateUtil;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

public class StudentDaoImpl implements StudentDao{

    @Override
    public void saveStudent(Student student) {
        SessionFactory sessionFactory=NewHibernateUtil.getSessionFactory();
        Session session=sessionFactory.getCurrentSession();
        Transaction tr=session.beginTransaction();
        session.save(student);
        tr.commit();
        
       // session.close();
    }

    @Override
    public void updateStudent(Student student) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void deleteStudent(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<Student> getAllStudents() {
        List<Student> list=new ArrayList<>();
        
        SessionFactory sessionFactory=NewHibernateUtil.getSessionFactory();
        Session session=sessionFactory.getCurrentSession();
        Transaction tr=session.beginTransaction();
       list = session.createCriteria(Student.class).list();       
       return list;
    }
    
}
