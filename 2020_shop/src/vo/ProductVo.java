package vo;

public class ProductVo {
	private int i_product;
	private String nm;
	private int price;
	private String pic;
	private int qty;
	private int yn_sale;
	private String info;
	
	private int i_pi;
	private int i_dt;
	
	
	public String getInfo() {
		return info;
	}
	public void setInfo(String info) {
		this.info = info;
	}
	public int getI_pi() {
		return i_pi;
	}
	public int getI_dt() {
		return i_dt;
	}
	public void setI_pi(int i_pi) {
		this.i_pi = i_pi;
	}
	public void setI_dt(int i_dt) {
		this.i_dt = i_dt;
	}
	public String getNm() {
		return nm;
	}
	public void setNm(String nm) {
		this.nm = nm;
	}
	public int getI_product() {
		return i_product;
	}
	public int getPrice() {
		return price;
	}
	public String getPic() {
		return pic;
	}
	public int getQty() {
		return qty;
	}
	public int getYn_sale() {
		return yn_sale;
	}
	public void setI_product(int i_product) {
		this.i_product = i_product;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public void setPic(String pic) {
		this.pic = pic;
	}
	public void setQty(int qty) {
		this.qty = qty;
	}
	public void setYn_sale(int yn_sale) {
		this.yn_sale = yn_sale;
	}
	
	
}
