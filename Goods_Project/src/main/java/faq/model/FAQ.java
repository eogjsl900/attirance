package faq.model;

import javax.validation.constraints.Min;

import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;

public class FAQ {
	
	private int num ;	
	
	@NotEmpty(message="작성자명을 입력하세요.")
	private String writer ;
	@NotEmpty(message="제목을 입력하세요.")
	private String subject ;
	
	private String category;
	
	private String image ;
	
	private String regdate ;
	
	private int readcount;
	
	private String contents;
	
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
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	public int getReadcount() {
		return readcount;
	}
	public void setReadcount(int readcount) {
		this.readcount = readcount;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	
	
	
	
}