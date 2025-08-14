package 클래스_메서드연습1;
/*
 * MemberManager라는 클래스를 새로 만드세요.

내부에 ArrayList<Member> 필드 하나 만들기 (members)

다음 두 가지 메서드를 구현하세요:

addMember(Member m) : members에 회원 추가

printAllMembers() : members에 있는 모든 회원 정보를 출력 (printInfo() 호출)*/

import java.util.ArrayList;

class MemberManager{
	ArrayList<Member> list = new ArrayList<>();
	
	public void addMember(Member m) {
		list.add(m);
	}
	
	public void printAllMembers() {
		for(int i = 0; i < list.size(); i++) {
			list.get(i).printInfo();
		}
	}
}
public class 클래스_메서드연습2 {
	public static void main(String[] args) {
		MemberManager mem = new MemberManager();
		
		mem.addMember((new Member(1, "홍길동")));
		mem.addMember((new Member(2, "김철수")));
		
		mem.printAllMembers();
	}
}
