package 클래스_메서드연습1;

/*
 * 
 * 1. Member 클래스 만들기
필드: int id, String name

생성자: 두 필드를 초기화

메서드: 회원 정보 출력하는 printInfo()
 */

	class Member{
		int id;
		String name;
		
		public Member(int id, String name){
			this.id = id;
			this.name = name;
		}
		
		public void printInfo() {
			System.out.println("id : " + this.id + " 이름 : " + this.name);
		}
	}
public class 클래스_메서드연습_1 {
	public static void main(String[] args) {
		Member m1 = new Member(1, "김철수");
		Member m2 = new Member(2, "신짱구");
		
		m1.printInfo();
		m2.printInfo();
	}
}
