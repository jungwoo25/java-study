package 클래스_메서드연습2;
/*Book 클래스

필드: String title, String author

생성자: 두 필드 초기화

메서드: void printBookInfo() → 책 제목과 저자 출력

Library 클래스

필드: ArrayList<Book> books

메서드:

void addBook(Book b) → 책 추가

void printAllBooks() → 모든 책 정보 출력*/

import java.util.ArrayList;

class Book{
	String title;
	String author;
	
	public Book(String title, String author) {
		this.title = title;
		this.author = author;
	}
	
	public void printBookInfo() {
		System.out.println("책 제목 : " + title + " / 저자 : " + author);
	}
	
	
}
class Library{
	ArrayList<Book> books = new ArrayList<Book>();
	
	void addBook(Book b) {
		books.add(b);
	}
	
	public void printAllBooks() {
		for(int i = 0; i < books.size(); i++) {
			books.get(i).printBookInfo();
		}
	}
}
public class 클래스_메서드연습02_3 {
	public static void main(String[] args) {
		Library li = new Library();
		
		li.addBook(new Book("홍길동","홍길동전"));
		li.addBook(new Book("고정우","레전드책"));
		
		li.printAllBooks();
	}
}
