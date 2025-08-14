package 스태틱_연습문제;

import java.util.ArrayList;

/*
 * 연습문제: Static 연습 – Product 카운터
1. Product 클래스

필드: int id, String name

생성자: 두 필드를 초기화

static 필드: int count → Product가 생성될 때마다 1씩 증가

toString() 오버라이드 → "id: 1001, name: 사과" 형식 출력

2. ProductManager 클래스

필드: ArrayList<Product> products

메서드:

void addProduct(Product p) → 제품 추가

void printAll() → 모든 제품 출력

static int getCount() → 지금까지 생성된 Product 수 반환 (static 활용)

3. main에서 테스트

Product 3개 생성 후 ProductManager에 추가

전체 출력

생성된 Product 총 개수 출력 (static count 사용)
 * */

class Product {
	private int id;
	private String name;
	static int count;
	
	public Product(int id, String name) {
		this.id = id;
		this.name = name;
		count += 1;
	}
	
	public String toString() {
		return "id: " + id + ", name: " +  name;
	}
}

class ProductManager{
	ArrayList<Product> products = new ArrayList<Product>();
	
	public void addProduct(Product p) {
		products.add(p);
	}
	
	public void printAll() {
		if(products.isEmpty()) {
			System.out.println("정보없음");
			return;
		}
		for(int i = 0; i < products.size(); i++) {
			System.out.println(products.get(i));
		}
	}
	
	static int getCount() {
		return Product.count;
	}
}

public class 스태틱_연습문제01_1 {
	public static void main(String[] args) {
		ProductManager pm = new ProductManager();
		
		pm.addProduct(new Product(1001,"사과"));
		pm.addProduct(new Product(1002,"바나나"));
		pm.addProduct(new Product(1003,"복숭아"));
		pm.addProduct(new Product(1004,"참외"));
		pm.addProduct(new Product(1005,"키위"));
		pm.printAll();
		
		System.out.println("생성된 목록 수 : " + ProductManager.getCount());
		
	
	}
}
