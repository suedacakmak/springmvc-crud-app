package spring.mvc.crud.app.dao;

import java.util.List;

import spring.mvc.crud.app.model.Student;


public interface StudentDao {

	Student getStudent(Long id);

	Long saveStudent(Student st);

	List<Student> listAllStudents();

	void updateStudent(Student st);

	void deleteStudent(Student st);

}
