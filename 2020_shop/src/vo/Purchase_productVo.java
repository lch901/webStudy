package vo;

public class Purchase_productVo {
	private int i_purchase;
	private int i_member;
	private int i_product;
	private int qty;
	private int price;
	private String r_dt;
	
	private String nm;
	private String pic;
	private int yn_sale;
	private String info;
	
	private int buy_price;
	private int buy_qty;
	private int total_price;
	
	
	public int getTotal_price() {
		return total_price;
	}
	public void setTotal_price(int total_price) {
		this.total_price = total_price;
	}
	public int getBuy_price() {
		return buy_price;
	}
	public int getBuy_qty() {
		return buy_qty;
	}
	public void setBuy_price(int buy_price) {
		this.buy_price = buy_price;
	}
	public void setBuy_qty(int buy_qty) {
		this.buy_qty = buy_qty;
	}
	public int getI_purchase() {
		return i_purchase;
	}
	public int getI_member() {
		return i_member;
	}
	public int getI_product() {
		return i_product;
	}
	public int getQty() {
		return qty;
	}
	public int getPrice() {
		return price;
	}
	public String getR_dt() {
		return r_dt;
	}
	public String getNm() {
		return nm;
	}
	public String getPic() {
		return pic;
	}
	public int getYn_sale() {
		return yn_sale;
	}
	public String getInfo() {
		return info;
	}
	public void setI_purchase(int i_purchase) {
		this.i_purchase = i_purchase;
	}
	public void setI_member(int i_member) {
		this.i_member = i_member;
	}
	public void setI_product(int i_product) {
		this.i_product = i_product;
	}
	public void setQty(int qty) {
		this.qty = qty;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public void setR_dt(String r_dt) {
		this.r_dt = r_dt;
	}
	public void setNm(String nm) {
		this.nm = nm;
	}
	public void setPic(String pic) {
		this.pic = pic;
	}
	public void setYn_sale(int yn_sale) {
		this.yn_sale = yn_sale;
	}
	public void setInfo(String info) {
		this.info = info;
	}
	
	
}
