package 메서드클래스배열4_문제;

import java.util.Random;

class RanNum {
	int num;
	boolean check;
	
	void init(int num, boolean check) {
		this.num = num;
		this.check = check;
	}
	
	
	void print() {
		System.out.println(num + " ");
	}
}

class SetRan{
	RanNum[] ranList = null;
	int size = 0;
	
	void ran(int size) {
		this.size = size;
		ranList = new RanNum[size];
		
		
		for(int i = 0; i < ranList.length; i++) {
			ranList[i] = new RanNum();
			ranList[i].num = 0;
			ranList[i].check = false;
		}
		
	}
	
	void setting() {
		Random r = new Random();
		for(int i = 0; i < ranList.length; i++) {
			int rNum = r.nextInt(5);
			if(ranList[rNum].check == false) {
				ranList[rNum].init(i + 1, true);
			}else {
				i -= 1;
			}
		}
	}
	
	
	
	
	void printList() {
		for(int i = 0; i < ranList.length; i++) {
			ranList[i].print();
		}
	}
	
}
public class 메서드클래스배열4_문제06_중복숫자DAO {
	public static void main(String[] args) {
		// 문제) RanNum 클래스를 활용해서 중복숫자금지 출력 
		//      num에 1~5사이숫자를 랜덤으로 저장한다. (조건 중복숫자금지)
		
		SetRan setR = new SetRan();
		setR.ran(5);
		setR.setting();
		setR.printList();
	}
}
