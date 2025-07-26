package 메서드클래스배열4_문제;


class Node2 {
	int number;
	String name;
	int price;
	
	void print() {
		System.out.println(number + " " + name + " " + price);
	}
}

class Return2 {
	
	Node2[] getList(String data) {
		
//		[문제1] result 배열에 아래와 같은 형태로
//		데이터를 저장해 리턴하는 메서드를 구현하시오.
//		10001 김철수 2670
//		10002 이영희 1950
//		10003 유재석 4080
//		10004 박명수 7130
		
		
		
		Node2[] result = null;
		String[] temp = data.split("\n");
		String[][] tempList = new String[temp.length][2];
		
		int size = 0;
		for(int i = 0; i < tempList.length; i++) {
			String[] token = temp[i].split("/");
			boolean check = false;
			for(int j = 0; j < size; j++) {
				if(tempList[j][0].equals(token[0])) {
					check = true;
					break;
				}
			}
			if(check == false) {
				tempList[size][0] = token[0];
				tempList[size][1] = token[1];
				size += 1;
			}
		}
		
		
		result = new Node2[size];
		for(int i = 0; i < size; i++) {
			result[i] = new Node2();
			result[i].number = Integer.parseInt(tempList[i][0]);
			result[i].name = tempList[i][1];
			
			for(int j = 0; j < temp.length; j++) {
				String[] token = temp[j].split("/");
				if(result[i].number == Integer.parseInt(token[0])) {
					result[i].price += Integer.parseInt(token[2]);
				}
			}
		}
		
		return result;
	}
	
	Node2 getRank(String data) {
//		[문제2] 판매금액이 1등인 회원정보를 리턴하는
//		메서드를 구현하시오.
		
		Node2 result = null;
		Node2[] nodeList = getList(data);
		
		int max = 0;
		int index = 0;
		for(int i = 0; i < nodeList.length; i++) {
			int price = nodeList[i].price;
			if(max < price) {
				max = price;
				index = i;
			}
		}
		result = nodeList[index];
		return result;
	}
	
	
}


public class 메서드클래스배열4_문제02_리턴2 {
	public static void main(String[] args) {				

		String data ="";
		data += "10001/김철수/600\n";
		data += "10002/이영희/800\n";
		data += "10001/김철수/1400\n";
		data += "10003/유재석/780\n";
		data += "10002/이영희/950\n";
		data += "10004/박명수/330\n";
		data += "10001/김철수/670\n";
		data += "10003/유재석/3300\n";
		data += "10002/이영희/200\n";
		data += "10004/박명수/6800\n";
		data = data.substring(0 , data.length()-1); // 마지막 글삭제 
		//System.out.println(data);
		
		Return2 re = new Return2();
		Node2[] list = re.getList(data);
		for(int i = 0; i < list.length; i++) {
			list[i].print();
		}
		//------------------------------------------------
		Node2 rank1 = re.getRank(data);
		rank1.print();
		
	}
}