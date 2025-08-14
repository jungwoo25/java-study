package 클래스_메서드연습3;

import java.util.ArrayList;

/*Member 클래스

필드: int id, String name

생성자: 두 필드 초기화

toString() 오버라이드 → "id: 1001, name: 홍길동" 형식

MemberManager 클래스

필드: ArrayList<Member> members

메서드:

void addMember(Member m) → 회원 추가

void printAll() → 모든 회원 출력

Member findById(int id) → id로 회원 검색, 없으면 null 반환

boolean removeById(int id) → id로 회원 삭제, 성공 시 true, 실패 시 false 반환

main 메서드에서 테스트

3명의 회원 추가

전체 출력

id로 검색 후 출력

id로 삭제 후 전체 출력*/

class Member{
	int id;
	String name;
	
	public Member(int id, String name) {
		this.id = id;
		this.name = name;
	}
	
	public String toString() {
		return "id:" + id + ",name:" + name;
	}
}

class MemberManager{
	ArrayList<Member> members = new ArrayList<Member>();
	
	public void addMember(Member m) {
		members.add(m);
	}
	
	public void printAll() {
		if(members.isEmpty()) {
			System.out.println("회원정보가 없습니다.");
			return;
		}
		
		for(int i = 0; i < members.size(); i++) {
			System.out.println(members.get(i));
		}
	}
	
	public Member findById(int id) {
		for(int i = 0; i < members.size(); i++) {
			if(id == members.get(i).id) {
				return members.get(i);
			}
		}
		
		return null;
	}
	
	public boolean removeById(int id) {
		Member target = findById(id);
		
		if(target != null) {
			members.remove(target);
			return true;
		}else {
			return false;
		}
	}
}
public class 클래스_메서드연습03_1 {
	public static void main(String[] args) {
		MemberManager mm = new MemberManager();
		
		mm.printAll();
		
		mm.addMember(new Member(1001, "김철수"));
		mm.addMember(new Member(1002, "신짱구"));
		mm.addMember(new Member(1003, "이훈이"));
		mm.addMember(new Member(1004, "홍길동"));
		mm.printAll();
		
		if(mm.removeById(1005)) {
			System.out.println("삭제되었습니다");
		}else {
			System.out.println("회원번호가 없습니다.");
		}
		
		if(mm.removeById(1002)) {
			System.out.println("삭제되었습니다");
		}else {
			System.out.println("회원번호가 없습니다.");
		}
		
		mm.printAll();
	}

}
