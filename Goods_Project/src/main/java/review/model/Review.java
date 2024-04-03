package review.model;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;

public class Review {
    int num;
    
    @NotNull
    int pnum;
    
    String mid;
    
    int ref;
    @NotEmpty
    @Size(min = 5)
    String content;
    
    @NotNull
    int star; // 평점을 위한 필드추가
    
    String reg_date;
    
    
	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public int getPnum() {
		return pnum;
	}

	public void setPnum(int pnum) {
		this.pnum = pnum;
	}

	public String getMid() {
		return mid;
	}

	public void setMid(String mid) {
		this.mid = mid;
	}
	
	public int getRef() {
		return ref;
	}

	public void setRef(int ref) {
		this.ref = ref;
	}


	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	
	public int getStar() {
		return star;
	}

	public void setStar(int star) {
		this.star = star;
	}

	public String getReg_date() {
		return reg_date;
	}

	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}

	@Override
	public String toString() {
		return "Review [num=" + num + ", pnum=" + pnum + ", mid=" + mid + ", ref=" + ref + ", content=" + content
				+ ", star=" + star + ", reg_date=" + reg_date + "]";
	}

	
	

	
    
    
}
