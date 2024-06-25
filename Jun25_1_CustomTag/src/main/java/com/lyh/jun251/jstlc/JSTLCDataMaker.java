package com.lyh.jun251.jstlc;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

public class JSTLCDataMaker {
	public static void make(HttpServletRequest request) {
		int[] ar = {123, 456, 78, 91, 234};
		request.setAttribute("ar", ar);
		
		ArrayList<Lyh> al = new ArrayList<Lyh>();
		al.add(new Lyh("이영훈", 3, 50.5, 10.1));
		al.add(new Lyh("이영훈1", 2, 40.4, 9.9));
		al.add(new Lyh("이영훈2", 5, 30.3, 6.6));
		al.add(new Lyh("이영훈3", 1, 10.1, 3.3));
		request.setAttribute("al", al);
 	}
}
