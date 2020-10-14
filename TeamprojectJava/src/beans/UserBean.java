package beans;

//				↓
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

public class UserBean {
	public UserBean() {
		this.userIdExist=false;
		this.userLogin=false;
	}
	private boolean userIdExist;
	
	//로그인이 되었는지 확인. 성공시 true를 저장
	private boolean userLogin;
	
	private int user_idx;
	
	
	@Size(min=2,max=4)//import를 보면 어디서 어노테이션을 가져오는지 알수있음.
	@Pattern(regexp="[가-힣]*")
	private String user_name;
	
	@Size(min=4,max=20)
	@Pattern(regexp="[a-zA-Z0-9]*")
	private String user_id;
	
	@Size(min=4,max=20)
	@Pattern(regexp="[a-zA-Z0-9]*")
	private String user_pw;
	
	
	public boolean isUserIdExist() {
		return userIdExist;
	}
	public void setUserIdExist(boolean userIdExist) {
		this.userIdExist = userIdExist;
	}
	public boolean isUserLogin() {
		return userLogin;
	}
	public void setUserLogin(boolean userLogin) {
		this.userLogin = userLogin;
	}
	public int getUser_idx() {
		return user_idx;
	}
	public void setUser_idx(int user_idx) {
		this.user_idx = user_idx;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getUser_pw() {
		return user_pw;
	}
	public void setUser_pw(String user_pw) {
		this.user_pw = user_pw;
	}
	
	
}
