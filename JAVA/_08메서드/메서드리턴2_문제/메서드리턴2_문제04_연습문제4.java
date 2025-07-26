package 메서드리턴2_문제;

import java.util.Arrays;

/*
	[문제]
		아래 main() 메서드 내의 student배열은
		순서대로 이름, 지역, 번호를 의미한다.
		score배열은 번호 과목, 점수를 의미한다. 
		
		이러한 데이터를 아래 순서대로 result배열에 저장하여 리턴해주는
		run메서드를 구현하시오.
		
		[학생번호] [이름] [지역] [국어] [수학] [영어] [총합] [평균] 
	
	[정답]
		[1001, 김철만, 신촌, 20, 65, 43, 128, 42.67], 
		[1002, 오상덕, 강남, 50, 15, 90, 155, 51.67], 
		[1003, 민철이, 대치, 60, 80, 30, 170, 56.67], 
		[1004, 유재석, 강동, 17, 70, 70, 157, 52.33]
*/


class Return4{
	String[][] run(String[][] student , String[][] score) {	
		String[][] result = new String[student.length][8];	
		
		for(int i = 0; i < student.length; i++) {
			result[i][0] = student[i][2];
			result[i][1] = student[i][0];
			result[i][2] = student[i][1];
			for(int j = 0; j < score.length; j++) {
				if(result[i][0].equals(score[j][0])) {
					if(score[j][1].equals("국어")) {
						result[i][3] = score[j][2];
					}else if(score[j][1].equals("수학")) {
						result[i][4] = score[j][2];
					}else if(score[j][1].equals("영어")) {
						result[i][5] = score[j][2];
					}
				}
				
			}
			
			int total = 0;
		
			for(int j = 3; j <= 5; j++) {
				total += Integer.parseInt(result[i][j]);
					
			}
			
			double avg = total / 3.0;
		result[i][6] = String.valueOf(total);
			result[i][7] = String.format("%.2f",avg);
					
			
		}
	
		return result;
	}
	
}


public class 메서드리턴2_문제04_연습문제4 {
	public static void main(String[] args) {
		
		Return4 re = new Return4();
		
		String [][] student = {
				{"김철만","신촌","1001"}, 
				{"오상덕","강남","1002"},
				{"민철이","대치","1003"} ,
				{"유재석","강동","1004"}};
		String[][] score = {
				{"1001" ,"국어","20"},
				{"1002" ,"국어","50"},
				{"1003" ,"국어","60"},
				{"1004" ,"국어","17"},
				{"1001" ,"수학","65"},
				{"1002" ,"수학","15"},
				{"1003" ,"수학","80"},
				{"1004" ,"수학","70"},
				{"1001" ,"영어","43"},
				{"1002" ,"영어","90"},
				{"1003" ,"영어","30"},
				{"1004" ,"영어","70"}
		};
		
				
		String result[][] = re.run(student, score);
		System.out.println(Arrays.deepToString(result));
		
	}
}