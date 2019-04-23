package com.coderbd.dao;

import com.coderbd.entity.Student;
import java.util.List;

public interface StudentDao {

    void saveStudent(Student student);

    void updateStudent(Student student);

    void deleteStudent(int id);

    List<Student> getAllStudents();

}
