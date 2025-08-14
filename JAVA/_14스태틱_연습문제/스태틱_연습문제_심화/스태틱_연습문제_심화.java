package 스태틱_연습문제_심화;

import java.util.ArrayList;
import java.util.Scanner;

/*Student 클래스: id, name, score 필드 + toString()

StudentManager 클래스: ArrayList<Student> 저장, 학생 추가, 삭제, 검색, 수정, 전체 출력 메서드

main에서 메뉴형 프로그램 만들기 (Scanner로 입력)

static으로 id 자동 증가 기능 넣기

이거 풀면

객체 생성, 전달

static 변수 사용

ArrayList 사용

메서드 분리

반복문, 조건문, 입력 처리
까지 한 번에 복습됩니다.*/

class Student{
	static public int nextId = 1001;
	public int id;
	public String name;
	public int score;
	public Student(String name, int score) {
		this.id = nextId++;
		this.name = name;
		this.score = score;
	}
	
	public String toString() {
		return "아이디 : " + id + ", 이름 : " + name + ", 점수 : " + score;
	}
	
	
	
}

class StudentManager{
	ArrayList<Student>students = new ArrayList<Student>();
	
	
	public void addStudent(Student s) { //학생추가
		students.add(s);
		System.out.println("정보가 추가 되었습니다.");
	}
	
	public Student findById(int id) { //검색
		
		for(int i = 0; i < students.size(); i++) {
			if(id == students.get(i).id) {
				return students.get(i);
			}
		}
		return null;
	}
	
	public boolean updateStudent(int id, String name, int score) {
		Student target = findById(id);
		
		if(target != null) {
			target.name = name;
			target.score = score;
			
			
			return true;
		}else {
			return false;
		}
	}
	
	public boolean removeStudent(int id) {  //삭제
		Student target = findById(id);
		if(target != null) {
			students.remove(target);
			return true;
		}else {
			return false;
		}
	}
	
	public void printAll() {
		for(int i = 0; i < students.size(); i++) {
			System.out.println(students.get(i));
		}
	}
}


class Start {
	Scanner scan = new Scanner(System.in);
	StudentManager sm = new StudentManager();
	public void mainStart() {
		
		while(true) {
			System.out.println("[0]종료, [1]추가, [2]수정, [3]삭제, [4]전체정보확인");
			int sel = scan.nextInt();
			
			if(sel == 0) {
				System.out.println("종료 되었습니다.");
				break;
			}else if(sel == 1) {
				System.out.println(Student.nextId + "/ 이름을 입력해주세요 : ");
				String inputName = scan.next();
				
				System.out.println(Student.nextId + "/ 점수를 입력해주세요 : ");
				int inputScore = scan.nextInt();
				
				sm.addStudent(new Student(inputName, inputScore));
				
			}else if(sel == 2) {
				System.out.println("수정하실정보의 아이디를 입력해주세요 : ");
				int inputId = scan.nextInt();
				
				System.out.println("수정하실 이름을 입력해주세요 : ");
				String inputName = scan.next();
				
				System.out.println("수정하실 점수를 입력해주세요 : ");
				int inputScore = scan.nextInt();
				
				boolean check = sm.updateStudent(inputId, inputName, inputScore);
				
				if(check) {
					System.out.println("수정이 완료되었습니다.");
				}else {
					System.out.println("일치하는 아이디 정보가 없습니다.");
				}
			}else if(sel == 3) {
				System.out.println("삭제하실정보의 아이디를 입력해주세요 : ");
				int inputId = scan.nextInt();
				
				if(sm.removeStudent(inputId)) {
					System.out.println("회원님의 아이디가 성공적으로 삭제되었습니다.");
				}else {
					System.out.println("없는 아이디 입니다.");
				}
				
			}else if(sel == 4) {
				sm.printAll();
			}
		}
	}
}
public class 스태틱_연습문제_심화 {
	public static void main(String[] args) {
		Start st = new Start();
		st.mainStart();
	}
}
