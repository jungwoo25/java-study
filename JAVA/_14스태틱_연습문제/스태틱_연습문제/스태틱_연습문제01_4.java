package 스태틱_연습문제;
/*1. Student 클래스

필드: int id, String name, int age

생성자: 모든 필드 초기화

메서드:

void printStudent() → 학생 정보 출력

String toString() → "id: 1001, name: 홍길동, age: 20" 형식 출력

2. StudentManager 클래스

필드: ArrayList<Student> students

메서드:

void addStudent(Student s) → 학생 추가

void printAllStudents() → 모든 학생 정보 출력

Student findById(int id) → id로 학생 검색, 없으면 null 반환

boolean removeById(int id) → id로 학생 삭제, 성공 true, 실패 false

boolean updateStudent(int id, String newName, int newAge) → id로 학생 찾아 이름/나이 변경, 성공 true, 실패 false

3. main에서 테스트

3~4명 학생 추가

전체 출력

id 검색 후 출력

id 삭제 후 전체 출력

id로 정보 수정 후 전체 출력*/

import java.util.ArrayList;

class Student{
	int id;
	String name;
	int age;
	
	public Student(int id, String name, int age) {
		this.id = id;
		this.name = name;
		this.age = age;
	}
	
	public void printStudent() {
		System.out.println("id: " + id + ", name: " + name + ", age: " + age);
	}
	
	public String toString() {
		return "id: " + id + ", name: " + name + ", age: " + age;
	}

}

class StudentManager {
	ArrayList<Student>students = new ArrayList<Student>();
	public void addStudent(Student s) {
		students.add(s);
	}
	
	public void printAllStudents() {
		if(students.isEmpty()) {
			System.out.println("목록없음");
			return;
		}
		for(int i = 0; i < students.size(); i++) {
			System.out.println(students.get(i));
		}
	}
	
	public Student findById(int id) {
		for(int i = 0; i < students.size(); i++) {
			if(id == students.get(i).id) {
				return students.get(i);
			}
		}
		return null;
	}
	
	public Boolean removeById(int id) {
		Student target = findById(id);
			if(target != null) {
				System.out.println("삭제되었습니다.");
				students.remove(target);
				return true;
			}else {
				return false;
				
			}
	}
	
	public Boolean updateStudent(int id, String newName, int newAge) {
		Student target = findById(id);
		
			if(target != null) {
				target.name = newName;
				target.age = newAge;
				return true;
			}else {
				return false;
			}
		
		
	}
}
public class 스태틱_연습문제01_4 {
	public static void main(String[] args) {
		StudentManager sm = new StudentManager();
		sm.addStudent(new Student(1001,"김철수",15));
		sm.addStudent(new Student(1002,"신짱구",13));
		sm.addStudent(new Student(1003,"이훈이",16));
		sm.addStudent(new Student(1004,"홍길동",21));
		sm.printAllStudents();
		System.out.println();
		
		sm.removeById(1003);
		sm.printAllStudents();
		System.out.println();
		
		if(sm.updateStudent(1004, "김맹구", 24)) {
			System.out.println("회원정보가 변경되었습니다.");
		}else {
			System.out.println("존재하지않는 아이디입니다.");
		}
		
		sm.printAllStudents();
		
		
	}
}
