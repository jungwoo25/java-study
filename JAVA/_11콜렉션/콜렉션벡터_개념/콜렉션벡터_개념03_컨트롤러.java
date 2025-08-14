package 콜렉션벡터_개념;

import java.util.Scanner;
import java.util.Vector;

public class 콜렉션벡터_개념03_컨트롤러 {
	public static void main(String[] args) {
		
		Scanner scan = new Scanner(System.in);
		
		Vector<Integer> vector = new Vector<Integer>();
		
		while(true) {
			
			for(int i=0; i<vector.size(); i++) {
				System.out.print(vector.get(i) + " ");
			}
			System.out.println();
			
			System.out.println(">>> 벡터 컨트롤러 <<<");
			System.out.println("[1]추가");
			System.out.println("[2]삭제");
			System.out.println("[3]수정");
			System.out.println("[0]종료");
			
			int sel = scan.nextInt();
			
			if(sel == 0) {
				break;
			} else if(sel == 1) {
				System.out.print("[추가] 값을 입력해주세요 : ");
				int num = scan.nextInt();
				
				vector.add(num);
			} else if(sel == 2) {
				System.out.print("[삭제] 인덱스를 입력해주세요 : ");
				int index = scan.nextInt();
				if(0 <= index && index < vector.size()) {
					vector.remove(index);
				}else {
					System.out.println("[삭제] 없는 인덱스 입니다.");
				}
			} else if(sel == 3) {
				System.out.print("[수정] 인덱스를 입력해주세요 : ");
				int index = scan.nextInt();
				
				if(0 <= index && index < vector.size()) {
					System.out.print("[수정] 값을 입력해주세요 : ");
					int num = scan.nextInt();
					
					vector.set(index, num);
				}else {
					System.out.println("[수정] 없는 인덱스입니다.");
				}
				
			}
		}
		
		scan.close();
	}
}