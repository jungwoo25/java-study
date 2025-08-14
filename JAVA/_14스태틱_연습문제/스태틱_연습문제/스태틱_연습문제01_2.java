package 스태틱_연습문제;

import java.util.ArrayList;

/*1. Book 클래스

필드: String title, String author

생성자: 두 필드를 초기화

static 필드: int count → Book 객체가 생성될 때마다 1 증가

toString() 오버라이드 → "제목: 해리포터, 저자: J.K.롤링" 형식

2. Library 클래스

필드: ArrayList<Book> books

메서드:

void addBook(Book b) → 책 추가

void printAllBooks() → 모든 책 출력

static int getCount() → 지금까지 생성된 Book 수 반환

3. main 테스트

Book 3~4권 생성 후 Library에 추가

전체 출력

생성된 책 수 출력 (Library.getCount() 사용)*/

class Book{
	private String title;
	private String author;
	static public int count;
	
	public Book(String title, String author) {
		this.title = title;
		this.author = author;
		count += 1;
	}
	
	public String toString() {
		return "제목: " + title + ", 저자: " + author;
	}
}

class Library{
	ArrayList<Book> books = new ArrayList<Book>();
	
	public void addBook(Book b) {
		books.add(b);
	}
	
	public void printAllBooks() {
		if(books.isEmpty()) {
			System.out.println("도서 목록 없음");
			return;
		}
		for(int i = 0; i < books.size(); i++) {
			System.out.println(books.get(i));
		}
		
	}
	public int getCount() {
		return Book.count;
	}
}
public class 스태틱_연습문제01_2 {
	public static void main(String[] args) {
		Library li = new Library();
		
		li.addBook(new Book("어린왕자", "김철수"));
		li.addBook(new Book("토끼와거북이", "김거북"));
		li.addBook(new Book("신데렐라", "박호박"));
		li.addBook(new Book("라푼젤", "김미용"));
		li.printAllBooks();
		
		System.out.println("도서 수 : " + li.getCount());
	}
}
