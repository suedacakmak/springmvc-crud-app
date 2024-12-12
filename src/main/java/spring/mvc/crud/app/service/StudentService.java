package spring.mvc.crud.app.service;

import java.util.List;

import spring.mvc.crud.app.model.Student;

/**
 * Student Service Interface
 */
public interface StudentService {

	Student getStudent(Long id);

	Long saveStudent(Student st);

	List<Student> listAllStudents();

	void update(Long id, Student st);

	void delete(Long id);

	boolean isStudentUnique(Long id);
}
