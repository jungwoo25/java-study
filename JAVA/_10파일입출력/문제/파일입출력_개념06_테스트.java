package 파일입출력1;

import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Scanner;

public class 파일입출력_개념06_테스트 {
	public static void main(String[] args) {
		
		Scanner scan = new Scanner(System.in);

		String nameData = "김철수,이만수,이영희";
		String ageData ="20,30,40";
		String fileName = "src/파일입출력1/file04.txt";
		String data = "";		
		
		String[] nameList = null;
		int [] ageList = null;	
		
		FileWriter fw  = null;
		FileReader fr = null;
		
		while(true) {
						
			System.out.println("[0] 종료 [1] 저장 [2] 로드");
			int sel = scan.nextInt();
			if(sel == 0) {
				break;
			}
			else if(sel == 1) {
//				[저장] 김철수/20\n이만수/30\n이영희/40 이렇게 데이터를 만들어 파일 생성후 저장하시오. 
				try {
					data = "";
					String[] nameSample = nameData.split(",");
					String[] ageSample = ageData.split(",");
					
					for(int i = 0; i < nameSample.length; i++) {
						data += nameSample[i];
						data += "/";
						data += ageSample[i];
						if(i < nameSample.length - 1) {
							data += "\n";
						}
					}
						fw = new FileWriter(fileName);
						fw.write(data);
						fw.close();
						System.out.println("파일 저장 완료!");
					} catch (IOException e) {
						e.printStackTrace();
					}
				
			}
			else if(sel == 2) {
//				[로드] 파일을 불러와서 nameList, ageList 배열에 저장하시오 
				data = "";
			File file = new File(fileName);
			if(file.exists()) {
				try {
					fr = new FileReader(fileName);
					
					int read;
					while((read = fr.read()) != -1) {
						
							data += (char)read;
					}
					
					fr.close();
				}catch (IOException e) {
					e.printStackTrace();
				}
			
				String[] temp = data.split("\n");
				int size = temp.length;
				
				nameList = new String[size];
				ageList = new int[size];
				for(int i = 0; i < size; i++) {
					String[] token = temp[i].split("/");
					nameList[i] = token[0];
					ageList[i] = Integer.parseInt(token[1]);
				}
				
				for(int i = 0; i < size; i++) {
					System.out.println(nameList[i] + " " + ageList[i]);
				}
			}else {
				System.out.println("현재 경로에 저장되어 있는 파일이 없습니다.");
			}
			}
			
		}
		
		scan.close();
		
	}
}