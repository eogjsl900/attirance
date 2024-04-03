package mall.cart;

public class ShoppingInfo { // 장바구니 목록보기
	
	
	private int pnum;	// 상품번호
	private String pname;	// 상품명
	private String pimage; //상품이미지
	private int qty;	// 주문수량
	private int price;	// 단가
	private int point;	// 단가
	private int amount; // 금액 
	
	public int getPnum() {
		return pnum;
	}
	public void setPnum(int pnum) {
		this.pnum = pnum;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	
	public String getPimage() {
		return pimage;
	}
	public void setPimage(String pimage) {
		this.pimage = pimage;
	}
	public int getQty() {
		return qty;
	}
	public void setQty(int qty) {
		this.qty = qty;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	@Override
	public String toString() {
		return "ShoppingInfo [pnum=" + pnum + ", pname=" + pname + ", pimage=" + pimage + ", qty=" + qty + ", price="
				+ price + ", point=" + point + ", amount=" + amount + "]";
	}
	
	
	
	
	
}
