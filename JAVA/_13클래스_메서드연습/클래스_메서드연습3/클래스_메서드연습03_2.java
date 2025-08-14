package 클래스_메서드연습3;

import java.util.ArrayList;
import java.util.Scanner;

/*Car 클래스

필드: String model, int speed

생성자: 두 필드 초기화

메서드: toString() 오버라이드 → "모델: 아반떼, 속도: 100" 형식

CarManager 클래스

필드: ArrayList<Car> cars

메서드:

void addCar(Car c) → 자동차 추가

void printAll() → 모든 자동차 출력

Car findByModel(String model) → 모델명으로 자동차 검색, 없으면 null 반환

boolean removeByModel(String model) → 모델명으로 자동차 삭제, 성공 시 true, 실패 시 false 반환

main 메서드 테스트

3~4대 자동차 추가

전체 출력

특정 모델 검색 후 출력

특정 모델 삭제 후 전체 출력*/

class Car{
	String model;
	int speed;
	
	public Car(String model, int speed) {
		this.model = model;
		this.speed = speed;
	}
	
	public String toString() {
		return "모델: " + model + ", 속도: " + speed; 
	}
	
}

class CarManager{
	ArrayList<Car> cars = new ArrayList<Car>();
	
	public void addCar(Car c) {
		cars.add(c);
		System.out.println("자동차 정보가 추가되었습니다.");
	}
	
	public void printAll() {
		if(cars.isEmpty()) {
			System.out.println("자동차 정보 없음");
			return;
		}
		
		for(int i = 0; i < cars.size(); i++) {
			System.out.println(cars.get(i));
		}
		
	}
	
	public Car findByModel(String model) {
		for(int i = 0; i < cars.size(); i++) {
			if(model.equals(cars.get(i).model)) {
				return cars.get(i);
			}
		}
		return null;
	}
	
	public Boolean removeByModel(String model) {
		Car target = findByModel(model);
		
		if(target != null) {
			cars.remove(target);
			return true;
		}else {
			return false;
		}
	}
}

class Cont{
	public void mainC() {
		Scanner scan = new Scanner(System.in);
		CarManager cm = new CarManager();
		
		while(true) {
			System.out.println("[자동차]");
			System.out.print("[1]추가 [2]삭제 [3]자동차목록 [0]종료");
			int sel = scan.nextInt();
			
			if(sel == 0) {
				System.out.println("종료");
				break;
			}else if(sel == 1) {
				
				System.out.print("자동차 모델 : ");
				String inputModel = scan.next();
				
				System.out.print("자동차 속력 : ");
				int inputSpeed = scan.nextInt();
				
				cm.addCar(new Car(inputModel, inputSpeed));
				
			}else if(sel == 2) {
				System.out.print("삭제하실 모델을 입력해주세요 : ");
				String inputModel = scan.next();
				
				if(cm.removeByModel(inputModel)) {
					System.out.println("정상적으로 삭제되었습니다.");
				}else {
					System.out.println("목록에 없는 차량 모델입니다");
				}
				
				
			}else if(sel == 3) {
				cm.printAll();
			}
			
			
		}
		
		scan.close();
	}
}
public class 클래스_메서드연습03_2 {
	public static void main(String[] args) {
		Cont ct = new Cont();
		ct.mainC();
	}
}
