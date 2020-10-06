package kr.co.korea.dataBean;

public class DataBean {
	private String id;
	private String pw;
	private String nm;
	
	public DataBean(String id,String pw,String nm){
		this.id=id;
		this.pw=pw;
		this.nm=nm;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getNm() {
		return nm;
	}

	public void setNm(String nm) {
		this.nm = nm;
	}
	
}
