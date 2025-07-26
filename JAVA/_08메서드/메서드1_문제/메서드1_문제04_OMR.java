package 메서드1_문제;

import java.util.Arrays;
import java.util.Random;

/*
	[문제]
		1. 배열 answer는 시험문제의 정답지이다.
		2. 배열 hgd에 1~5 사이의 랜덤 숫자 5개를 저장한다.
		3. answer와 hgd 값을 비교해 정오표를 출력한다.
		4. 한 문제당 20점이다.
		
		예)
		answer = {1, 3, 4, 2, 5}
		hgd    = {1, 1, 4, 4, 3}
		정오표   = {O, X, O, X, X}
		성적        = 40점
 */

class ScoreMng{
	
	int[] answer = {1, 3, 4, 2, 5};
	int[] hgd = new int[5];
	
	int cnt;
	int total;
	
	
	void makeAnswer(){
		Random ran = new Random();
		
		for(int i = 0; i < hgd.length; i++) {
			hgd[i] = ran.nextInt(5) + 1;
		}
	}
	
	void checkAnswer() {
		for(int i = 0; i < answer.length; i++) {
			if(answer[i] == hgd[i]) {
				cnt += 1;
			}
		}
	}
	
	void print() {
		this.total = cnt * 20;
		System.out.println("answer = " + Arrays.toString(answer));
		System.out.println("hgd = " + Arrays.toString(hgd));
		System.out.print("정오표 = {");
		for(int i = 0; i < answer.length; i++) {
			if(answer[i] == hgd[i]) {
				System.out.print("O");
			}else {
				System.out.print("X");
			}
			if(i < answer.length - 1) {
				System.out.print(", ");
			}
		}
		System.out.println("}\n성적 = " + total + "점"); 
	}
}
public class 메서드1_문제04_OMR {
	public static void main(String[] args) {
		
		
		ScoreMng scm = new ScoreMng();
		
		scm.makeAnswer();
		scm.checkAnswer();
		scm.print();
		
	}
}