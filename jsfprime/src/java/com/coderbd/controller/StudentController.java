package com.coderbd.controller;

import com.coderbd.dao.StudentDao;
import com.coderbd.daoImpl.StudentDaoImpl;
import com.coderbd.entity.Student;
import java.util.List;
import javax.faces.bean.ManagedBean;

/**
 *
 * @author User
 */
@ManagedBean
public class StudentController {

    private Student student;

    private List<Student> studentList;
    private StudentDao studentDao;

    public void saveStudent() {
        studentDao = new StudentDaoImpl();
        studentDao.saveStudent(student);
        System.out.println("Successfully");
    }

    public Student getStudent() {
        if (student == null) {
            student = new Student();
        }
        return student;
    }

    public void setStudent(Student student) {
        this.student = student;
    }

    public List<Student> getStudentList() {
        studentDao=new StudentDaoImpl();
        studentList = studentDao.getAllStudents();
        return studentList;

    }

    public void setStudentList(List<Student> studentList) {
        this.studentList = studentList;
    }

}
