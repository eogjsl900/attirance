package product.model;

import javax.validation.constraints.Min;

import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;

public class Product {
	
	private int num ;	
	
	@Length(min=3,max=10,message="상품이름은 최소3자리 최대10자리입니다.")
	private String name ;
	
	private String singer ;
	
	@NotEmpty(message="화일 선택 안함")
	private String image ;
	
	private int stock ; 
	
	@Min(value=3000,message="가격은 최소 3000원 이상입니다.") 
	private int price ;
	
	private String category ;
	
	private int point ;
	
	private String inputdate ;
	
	private int star;
	
	public int getStar() {
		return star;
	}
	public void setStar(int star) {
		this.star = star;
	}
	private int orderqty; // 주문수량
	
	////////
	private MultipartFile upload;
	private String upload2; 
	
	public MultipartFile getUpload() {
		return upload;
	}
	public void setUpload(MultipartFile upload) {
		this.upload = upload;
		System.out.println("upload : " + upload);
		if(upload != null) {
			System.out.println("upload.getName() : " + upload.getName());
			System.out.println("upload.getOriginalFilename() : " + upload.getOriginalFilename());
			this.image = upload.getOriginalFilename();
			System.out.println("this.image : " + this.image);
		}
	}
	public String getUpload2() {
		return upload2;
	}
	public void setUpload2(String upload2) {
		this.upload2 = upload2;
	}
	////////
	
	public int getOrderqty() {
		return orderqty;
	}
	public void setOrderqty(int orderqty) {
		this.orderqty = orderqty;
	}
	
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSinger() {
		return singer;
	}
	public void setSinger(String singer) {
		this.singer = singer;
	}
	public String getImage() {
		System.out.println("getImage()");
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public int getStock() {
		return stock;
	}
	public void setStock(int stock) {
		this.stock = stock;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}

	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	public String getInputdate() {
		return inputdate;
	}
	public void setInputdate(String inputdate) {
		this.inputdate = inputdate;
	}
	
}