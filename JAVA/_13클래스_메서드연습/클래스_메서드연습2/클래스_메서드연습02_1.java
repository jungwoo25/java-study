package 클래스_메서드연습2;
/*필드: String model, int speed

생성자: 두 필드를 초기화

메서드:

void accelerate(int amount) : speed를 amount만큼 증가시키기

void decelerate(int amount) : speed를 amount만큼 감소시키기 (단, speed가 0 미만으로 내려가지 않게)

void printStatus() : 모델명과 현재 속도 출력*/


class Car{
	public String model;
	public int speed;
	
	public Car(String model, int speed) {
		this.model = model;
		this.speed = speed;
	}
	
	public void accelerate(int amount) {
		this.speed += amount;
	}
	
	public void decelerate(int amount) {
		this.speed -= amount;
		if(this.speed < 0) {
			this.speed = 0;
		}
	}
	
	public void printStatus() {
		System.out.println("모델 : " + this.model + " / 속도 : " + this.speed);
	}
}
public class 클래스_메서드연습02_1 {
	public static void main(String[] args) {
		Car c = new Car("아반떼", 100);
		
		c.accelerate(20);
		c.printStatus();
		
		c.decelerate(50);
		c.printStatus();
		
		c.decelerate(80);
		c.printStatus();
		
		c.accelerate(200);
		c.printStatus();
	}
}
