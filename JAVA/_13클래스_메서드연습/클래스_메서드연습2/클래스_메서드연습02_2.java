package 클래스_메서드연습2;
/*필드: String accountNumber, double balance

생성자: 두 필드를 초기화

메서드:

deposit(double amount) : balance에 입금 (더하기)

withdraw(double amount) : 출금 (잔액 부족 시 실패, false 리턴)

printAccount() : 계좌번호와 잔액 출력*/

class Bank{
	String accountNumber;
	double balance;
	
	public Bank(String acc, double bal) {
		this.accountNumber = acc;
		this.balance = bal;
	}
	
	public void deposit(double amount) {
		this.balance += amount;
	}
	
	public boolean withdraw(double amount) {
		
		if(balance >= amount) {
			balance -= amount;
			return true;
		}else {
			System.out.println("잔액부족");
			return false;
		}
	}
	
	public void printAccount() {
		System.out.println("계좌번호 : " + this.accountNumber + "/ 잔액 : " + this.balance);
	}
}
public class 클래스_메서드연습02_2 {
	public static void main(String[] args) {
		Bank b = new Bank("1111", 50000);
		
		b.deposit(20000);
		b.printAccount();
		
		b.withdraw(10000);
		b.printAccount();
		
		b.withdraw(90000);
		b.printAccount();
		
	}
}
