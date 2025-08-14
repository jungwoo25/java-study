package 스태틱_연습문제;
/*문제: EmployeeManager 만들기

Employee 클래스

필드: int id, String name, String dept

생성자: 세 필드 초기화

static 필드: int count → 객체 생성 시 1씩 증가

toString() 오버라이드 → "id: 1001, name: 김철수, dept: 인사" 형식

EmployeeManager 클래스

필드: ArrayList<Employee> employees

메서드:

void addEmployee(Employee e) → 사원 추가

void printAll() → 전체 출력

Employee findById(int id) → id로 사원 검색, 없으면 null

boolean removeById(int id) → id로 삭제, 성공 true, 실패 false

static int getCount() → 지금까지 생성된 Employee 수 반환

main 테스트

3~4명의 사원을 생성 후 EmployeeManager에 추가

전체 출력

id로 검색 후 출력

id로 삭제 후 전체 출력

생성된 사원 수 출력*/

import java.util.ArrayList;

class Employee{
	public int id;
	private String name;
	private String dept;
	static int count;
	
	public Employee(int id, String name, String dept) {
		this.id = id;
		this.name = name;
		this.dept = dept;
		count ++;
	}
	
	public String toString() {
		return "id: " + id + ", name: " + name + ", dept: " + dept;
	}
}

class EmployeeManager{
	ArrayList<Employee> employees = new ArrayList<Employee>();
	
	public void addEmployee(Employee e) {
		employees.add(e);
	}
	
	public void printAll() {
		if(employees.isEmpty()) {
			System.out.println("목록없음");
			return;
		}
		
		for(int i = 0; i < employees.size(); i++) {
			System.out.println(employees.get(i));
		}
		
	}
	
	public Employee findById(int id) {
		for(int i = 0; i < employees.size(); i++) {
			if(id == employees.get(i).id) {
				return employees.get(i);
			}
		}
		return null;
	}
	
	public Boolean removeById(int id) {
		Employee target = findById(id);
		
		for(int i = 0; i < employees.size(); i++) {
			if(target == employees.get(i)) {
				employees.remove(i);
				return true;
			}
		}
		return false;
	}
	
	static int getCount() {
		return Employee.count;
	}
}
public class 스태틱_연습문제01_3 {
	public static void main(String[] args) {
		EmployeeManager em = new EmployeeManager();
		
		em.addEmployee(new Employee(1001, "김철수", "인사"));
		em.addEmployee(new Employee(1002, "신짱구", "연구"));
		em.addEmployee(new Employee(1003, "이훈이", "경영"));
		em.addEmployee(new Employee(1004, "홍길동", "인사"));
		em.printAll();
		System.out.println();
		System.out.println(em.findById(1003));
		if(em.removeById(1003)) {
			System.out.println("삭제완료");
		}else {
			System.out.println("없는 회원 번호");
		}
		em.printAll();
		System.out.println("직원 수 : " + EmployeeManager.getCount() + "명");
		
	} 
	
}
