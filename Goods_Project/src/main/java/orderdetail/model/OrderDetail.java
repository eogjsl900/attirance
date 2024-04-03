package orderdetail.model;

public class OrderDetail {
	
	private int odnum ; // sequence
	private int onum ; // 주문번호
	private int pnum ; // 상품 번호
	private int qty ; // 주문 수량
	
	public int getOdnum() {
		return odnum;
	}
	public void setOdnum(int odnum) {
		this.odnum = odnum;
	}
	public int getOnum() {
		return onum;
	}
	public void setOnum(int onum) {
		this.onum = onum;
	}
	public int getPnum() {
		return pnum;
	}
	public void setPnum(int pnum) {
		this.pnum = pnum;
	}
	public int getQty() {
		return qty;
	}
	public void setQty(int qty) {
		this.qty = qty;
	}
	
	
	
}
