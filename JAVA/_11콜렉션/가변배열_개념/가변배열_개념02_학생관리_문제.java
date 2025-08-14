package 가변배열_개념;

import java.util.Scanner;

public class 가변배열_개념02_학생관리_문제 {
	public static void main(String[] args) {
		
		Scanner scan = new Scanner(System.in);
		
		int[] numberList = null;			// 번호
		int[][] scoreList = null;			// 성적 3개
		int count = 0;
		int num = 1001;
		
		while(true) {
			
			for(int i=0; i<count; i++) {
				System.out.print(numberList[i] + " ");
				for(int j= 0; j < 3 ; j++) {
					System.out.print(scoreList[i][j] + " ");
				}
				System.out.println();				
			}
			System.out.println();				
			
			System.out.println("[벡터 컨트롤러]");
			System.out.println("[0]종료");
			System.out.println("[1]추가");
			System.out.println("[2]삭제(인덱스)");
			System.out.println("[3]삭제(학생번호)");
			System.out.println("[4]삽입");
					
			System.out.print("메뉴 선택 : ");
			int sel = scan.nextInt();
			if(sel == 0) {
				break;
			}
			else if(sel == 1) {
				if(count == 0) {
					numberList = new int[1];
					scoreList = new int[1][3];
				}else {
					int[] numberTemp = numberList;
					int[][] scoreTemp = scoreList;
					
					numberList = new int[count + 1];
					scoreList = new int[count + 1][];
					scoreList[count] = new int[3];
					
					for(int i = 0; i < count; i++) {
						numberList[i] = numberTemp[i];
						scoreList[i] = scoreTemp[i];
					}
				}
				numberList[count] = num;
				for(int i = 0; i < 3; i++) {
					System.out.print("과목 " + (i+1) + "점수 입력 : ");
					scoreList[count][i] = scan.nextInt();
				}
				num += 1;
				count += 1;
				
			}
			else if(sel == 2) {
			
				if(count == 0) {
					System.out.print("삭제할 값이 없습니다.");
				}else {
					System.out.print("삭제할 인덱스를 입력하세요 : ");
					int check = scan.nextInt();
					
					if(0 <= check && check < count) {
						int[] numberTemp = numberList;
						int[][] scoreTemp = scoreList;
						
						numberList = new int[count - 1];
						scoreList = new int[count - 1][3];
						
						int index = 0;
						for(int i = 0; i < numberTemp.length; i++) {
							if(i != check) {
								numberList[index] = numberTemp[i];
								index += 1;
							}
						}
						
						index = 0;
						for(int i = 0; i < scoreTemp.length; i++) {
							if(i != check) {
								scoreList[index] = scoreTemp[i];
								index += 1;
							}
						}
						
						count -= 1;
						
					}else {
						System.out.print("존재하지 않는 인덱스입니다.");
					}
				}
				
				
			}
			else if(sel == 3) {
				System.out.print("삭제할 학생 번호를 입력해주세요 : ");
				int number = scan.nextInt();
				
				int index = -1;
				for(int i = 0; i < numberList.length; i++) {
					if(number == numberList[i]) {
						index = i;
						break;
					}
				}
				
				if(index == -1) {
					System.out.println("존재하지 않는 학생번호입니다.");
				}else {
					int[] numberTemp = numberList;
					int[][] scoreTemp = scoreList;
					
					numberList = new int[count - 1];
					scoreList = new int[count - 1][3];
					
					int bIndex = 0;
					for(int i = 0; i < numberTemp.length; i++) {
						if(index != i) {
							numberList[bIndex] = numberTemp[i];
							scoreList[bIndex] = scoreTemp[i];
							bIndex += 1;
						}
					}
					
					count -= 1;
				}
				
			}
			else if(sel == 4) {
				System.out.print("삽입할 인덱스를 입력하세요 : ");
				int check = scan.nextInt();
				
				if(0 <= check && check < count) {
					int[] numberTemp = numberList;
					int[][] scoreTemp = scoreList;
					
					numberList = new int[count + 1];
					scoreList = new int[count + 1][];
					scoreList[check] = new int[3];
					
					int j = 0;
					for(int i = 0; i < count + 1; i++) {
						if(i != check) {
							numberList[i] = numberTemp[j];
							scoreList[i] = scoreTemp[j];
							j += 1;
						}
					}
					
					numberList[check] = num;
					for(int i = 0; i < 3; i++) {
						System.out.print("과목 " + (i+1) + "점수 입력 : ");
						scoreList[check][i] = scan.nextInt();
					}
					num += 1;
					count += 1;
				}else {
					System.out.println("해당 인덱스에는 삽입할 수 없습니다.");
				}
			}
		}
		
		
		scan.close();
	}
}