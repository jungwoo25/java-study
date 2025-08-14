package 클래스_메서드연습2;

import java.util.ArrayList;
import java.util.Scanner;

/*Student 클래스

필드: int id, String name

생성자: 두 필드 초기화

메서드: void printStudent() — 학생 정보 출력

StudentManager 클래스

필드: ArrayList<Student> students

메서드:

void addStudent(Student s) — 학생 추가

void printAllStudents() — 모든 학생 정보 출력

Student findStudentById(int id) — id로 학생 찾기, 없으면 null 반환*/

class Student{
	int id;
	String name;
	
	public Student(int id, String name) {
		this.id = id;
		this.name = name;
	}
	
	public void printStudent() {
		System.out.println("아이디 : " + id + " / 이름 : " + name);
	}
}

class StudentManager{
	ArrayList<Student> students = new ArrayList<Student>();
	
	public void addStudent(Student s) {
		students.add(s);
	}
	
	public void printAllStudents() {
		for(int i = 0; i < students.size(); i++) {
			students.get(i).printStudent();
		}
	}
	
	public Student findStudentById(int id) {
		for(int i = 0; i < students.size(); i++) {
			if(students.get(i).id == id) {
				return students.get(i);
			}
		}
		
		return null;
		
	}
}

public class 클래스_메서드연습02_4 {
	public static void main(String[] args) {
		StudentManager sm = new StudentManager();
		
		sm.addStudent(new Student(1001,"홍길동"));
		sm.addStudent(new Student(1002,"김철수"));
		sm.addStudent(new Student(1003,"신짱구"));
		
		sm.printAllStudents();
		
		Student s = sm.findStudentById(1002);
		
		if(s != null) {
			System.out.print("찾은 학생 정보 : ");
			s.printStudent();
		}else {
			System.out.println("학생정보가 없습니다.");
		}
		
		
		
	}
}
