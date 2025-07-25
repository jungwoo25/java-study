package 클래스배열2_문제;

import java.util.Scanner;


class Student{
	int number;
	String name;
}

class Subject{
	int studentNumber;
	String subject;
	int score;
	int rank;
}
 

public class 클래스배열2_문제02_과목2 {
	public static void main(String[] args) {
		
		Scanner scan = new Scanner(System.in);	
		
		String studentSample = "1001/이만수\n";
		studentSample += "1002/김철만\n";		
		studentSample += "1003/오수정\n";
		
		String subjectSample = "";
		subjectSample += "1001/국어/100/0\n";
		subjectSample += "1001/수학/32/0\n";
		subjectSample += "1002/국어/23/0\n";
		subjectSample += "1002/수학/35/0\n";
		subjectSample += "1002/영어/46/0\n";
		subjectSample += "1003/수학/60/0";	
		
		//문제1) 위 샘플 문자열들을 각각 해당 클래스 배열에 저장 후 출력
		String[] token = studentSample.split("\n");
		int size = token.length;
		
		Student[] stu = new Student[size];
		for(int i = 0; i < size; i++) {
			stu[i] = new Student();
			String[] token2 = token[i].split("/");
			stu[i].number = Integer.parseInt(token2[0]);
			stu[i].name = token2[1];
		}
		token = subjectSample.split("\n");
		size = token.length;
		
		Subject[] sub = new Subject[size];
		for(int i = 0; i < size; i++) {
			sub[i] = new Subject();
			String[] token2 = token[i].split("/");
			sub[i].studentNumber = Integer.parseInt(token2[0]);
			sub[i].subject = token2[1];
			sub[i].score = Integer.parseInt(token2[2]);
			sub[i].rank = Integer.parseInt(token2[3]);
		}
		token = studentSample.split("\n");
		size = token.length;
		
		for(int i = 0; i < size; i++) {
			System.out.print(stu[i].number + "\t" + stu[i].name + "\n");
		}
		
		token = subjectSample.split("\n");
		size = token.length;
		
		for(int i = 0; i < size; i++) {
			System.out.print(sub[i].studentNumber + "\t" + sub[i].subject + "\t" + sub[i].score + "\t" + sub[i].rank + "\n");
		}
		//문제2) 점수가 59점 이하인 과목은 전부 삭제 후 다시 문자열로 저장 후 출력 
		
		scan.close();
	}
}