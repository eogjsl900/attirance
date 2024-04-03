package member.model;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.stereotype.Repository;


public class Member {
	
	@NotEmpty(message = "아이디는 필수입니다.")
	private String id ;
	
	@NotEmpty(message = "비번은 필수입니다.")
	private String password ;
	
	@NotEmpty(message = "이름은 필수입니다.")
	private String name ;
	
	@Length(min=0,max=9 , message = "길이를 확인해 주세요")
	private String zipcode ;
	
	@NotEmpty(message = "주소1은 필수입니다.")
	private String addr1 ;  // 주소
	private String addr2 ;  // 상세주소
	
	@Length(min=0,max=4 , message = "길이를 확인해 주세요")
	private String tel1 ;
	@Size(min=0,max=4 , message = "길이를 확인해 주세요")
	private String tel2 ;
	@Length(min=0,max=4 , message = "길이를 확인해 주세요")
	private String tel3 ;
	
	@Length(min=0,max=4 , message = "길이를 확인해 주세요")
	private String phone1 ;
	@Length(min=0,max=4 , message = "길이를 확인해 주세요")
	private String phone2 ;
	@Size(min=0,max=4 , message = "길이를 확인해 주세요")
	private String phone3 ;
	
	@Length(min=1,max=10 , message = "길이를 확인해 주세요")
	private String email1 ;
	@Length(min=1,max=16 , message = "길이를 확인해 주세요")
	private String email2 ;
	
	private int mpoint ; //적립 포인트
	private String reg_date ; //가입일
	
	@NotEmpty(message = "좋아하는 아티스트를 하나 이상선택하여 주세요")
	private String favorite ;
	




	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getZipcode() {
		return zipcode;
	}
	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}
	public String getAddr1() {
		return addr1;
	}
	public void setAddr1(String addr1) {
		this.addr1 = addr1;
	}
	public String getAddr2() {
		return addr2;
	}
	public void setAddr2(String addr2) {
		this.addr2 = addr2;
	}
	public String getTel1() {
		return tel1;
	}
	public void setTel1(String tel1) {
		this.tel1 = tel1;
	}
	public String getTel2() {
		return tel2;
	}
	public void setTel2(String tel2) {
		this.tel2 = tel2;
	}
	public String getTel3() {
		return tel3;
	}
	public void setTel3(String tel3) {
		this.tel3 = tel3;
	}
	public String getPhone1() {
		return phone1;
	}
	public void setPhone1(String phone1) {
		this.phone1 = phone1;
	}
	public String getPhone2() {
		return phone2;
	}
	public void setPhone2(String phone2) {
		this.phone2 = phone2;
	}
	public String getPhone3() {
		return phone3;
	}
	public void setPhone3(String phone3) {
		this.phone3 = phone3;
	}
	public String getEmail1() {
		return email1;
	}
	public void setEmail1(String email1) {
		this.email1 = email1;
	}
	public String getEmail2() {
		return email2;
	}
	public void setEmail2(String email2) {
		this.email2 = email2;
	}
	public int getMpoint() {
		return mpoint;
	}
	public void setMpoint(int mpoint) {
		this.mpoint = mpoint;
	}
	public String getReg_date() {
		return reg_date;
	}
	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}
	public String getFavorite() {
		return favorite;
	}
	public void setFavorite(String favorite) {
		this.favorite = favorite;
	}

    
	/*public String toString() {
		return   "  Select id , password , zipcode , addr1 , addr2 , tel1 , tel2, tel3 ,"
				+"      phone1, phone2 , phone3 , email1 , email2 ,  mpoint  , "
				+"      reg_date , favorite  from Member " ;
	}
	
	public String toString( String id) {
		return   "  Select id , password , zipcode , addr1 , addr2 , tel1 , tel2, tel3 ,"
				+"      phone1, phone2 , phone3 , email1 , email2 ,  mpoint  , "
				+"      reg_date , favorite  from Member where id  = " +"'"+ id +"'";
	}
	
	public String toString( String id , String like) {
		return   "  Select id , password , zipcode , addr1 , addr2 , tel1 , tel2, tel3 ,"
				+"      phone1, phone2 , phone3 , email1 , email2 ,  mpoint  , "
				+"      reg_date , favorite  from Member where id like " +"'"+ id +like+"'";
	}*/
	
	
	
	
	
}
