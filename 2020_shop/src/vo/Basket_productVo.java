package vo;

public class Basket_productVo {
	private int i_product;
	private String nm;
	private int price;
	private String pic;
	private int qty;
	private int yn_sale;
	private String info;
	
	private int i_basket;
	private int i_member;
	private String r_dt;
	
	private int buy_price;
	private int buy_qty;
	
	
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
	public int getI_product() {
		return i_product;
	}
	public String getNm() {
		return nm;
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
	public String getInfo() {
		return info;
	}
	public int getI_basket() {
		return i_basket;
	}
	public int getI_member() {
		return i_member;
	}
	public String getR_dt() {
		return r_dt;
	}
	public void setI_product(int i_product) {
		this.i_product = i_product;
	}
	public void setNm(String nm) {
		this.nm = nm;
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
	public void setInfo(String info) {
		this.info = info;
	}
	public void setI_basket(int i_basket) {
		this.i_basket = i_basket;
	}
	public void setI_member(int i_member) {
		this.i_member = i_member;
	}
	public void setR_dt(String r_dt) {
		this.r_dt = r_dt;
	}
}
