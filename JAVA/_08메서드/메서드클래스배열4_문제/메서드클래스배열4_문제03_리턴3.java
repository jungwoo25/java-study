package 메서드클래스배열4_문제;



class Node3 {
	int number;
	String name;
	String address;
	int[] scoreList = new int[3];
	int total;
	double avg;
	int rank;
	
	void print() {
		System.out.println("[학생번호][이름][지역][국어][수학][영어][총합][평균][등수]");
		System.out.print(number + " " + name + " " + address + " ");
		for(int i = 0; i < scoreList.length; i++) {
			System.out.print(scoreList[i] + " ");
		}
		System.out.printf("%d %.2f %d \n",total, avg, rank);
	}
}

class Return3 {
	
	Node3[] getList(String[][] student, String[][] score) {
		
//		[문제] 아래 순서대로 전체 학생 정보를 저장해
//		리턴해주는 메서드를 구현하시오.
//		[학생번호] [이름] [지역] [국어] [수학] [영어] [총합] [평균] [등수]
		
		Node3[] result = new Node3[student.length];
		for(int i = 0; i < result.length; i++) {
			result[i] = new Node3();
			result[i].number = Integer.parseInt(student[i][2]);
			result[i].name = student[i][0];
			result[i].address = student[i][1];
			
			
			result[i].scoreList[0] = Integer.parseInt(score[i][1]);
			result[i].scoreList[1] = Integer.parseInt(score[i][2]);
			result[i].scoreList[2] = Integer.parseInt(score[i][3]);
			
			int count = result[i].scoreList.length;	
			int total = 0;
			
			for(int j = 0; j < count; j++) {
				total += result[i].scoreList[j];
				
			}
			
			result[i].total = total;
			double avg = (double)total / 3.0;
			result[i].avg = avg;
		}
		for(int i = 0; i < result.length; i++) {
			for(int j = 0; j < result.length; j++) {
					if(result[i].total <= result[j].total) {
					result[i].rank += 1;
					}
				
			}
			
		}
		
		
		return result;
	}
	
}



public class 메서드클래스배열4_문제03_리턴3 {
	public static void main(String[] args) {
		
		String[][] student = {
			{"이만수","신촌","1001"}, 
			{"김철민","강남","1002"},
			{"심장호","대치","1003"} , 
			{"유재석","강동","1004"}};
		String[][] score = {
			{"1001","10" ,"60","60"},
			{"1002","100","20","30"},
			{"1003","23" ,"63","31"},
			{"1004","45" ,"30","35"},
		};
		
		Return3 re = new Return3();
		Node3[] list = re.getList(student, score);
		
		
		for(int i = 0; i < list.length; i++) {
			list[i].print();
		}
			
	}
}