package com.lyh.jun261.apple;

// 멤버변수명 = DB컬럼명 = 요청파라미터명 *약속!!
public class Apple {
	private String a_location;
	private String a_color;
	private String a_taste;
	private int a_price;
	private String a_introduce;
	
	public Apple() {
		// TODO Auto-generated constructor stub
	}

	public Apple(String a_location, String a_color, String a_taste, int a_price, String a_introduce) {
		super();
		this.a_location = a_location;
		this.a_color = a_color;
		this.a_taste = a_taste;
		this.a_price = a_price;
		this.a_introduce = a_introduce;
	}

	public String getA_location() {
		return a_location;
	}

	public void setA_location(String a_location) {
		this.a_location = a_location;
	}

	public String getA_color() {
		return a_color;
	}

	public void setA_color(String a_color) {
		this.a_color = a_color;
	}

	public String getA_taste() {
		return a_taste;
	}

	public void setA_taste(String a_taste) {
		this.a_taste = a_taste;
	}

	public int getA_price() {
		return a_price;
	}

	public void setA_price(int a_price) {
		this.a_price = a_price;
	}

	public String getA_introduce() {
		return a_introduce;
	}

	public void setA_introduce(String a_introduce) {
		this.a_introduce = a_introduce;
	}

	
	
	
}
