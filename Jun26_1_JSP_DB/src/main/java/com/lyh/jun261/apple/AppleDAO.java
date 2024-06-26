package com.lyh.jun261.apple;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import com.lyh.db.manager.LyhDBManager;


public class AppleDAO {
	private static final AppleDAO APPLEDAO = new AppleDAO();
	
	private AppleDAO() {
		// TODO Auto-generated constructor stub
	}

	public static AppleDAO getAppledao() {
		return APPLEDAO;
	}
	
	// 모든 사과 데이터 다 가져오기
	public static void getApple(HttpServletRequest request) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			con = LyhDBManager.connect("lyhPool");
			
			String sql = "select * from jun26_apple order by a_price";
			pstmt = con.prepareStatement(sql);
			
			// C / U / D : pstmt.executeUpdate()로 실행
			//		=> 데이터 몇 개 영향을 받았는지 
			// R : pstmt.executeQuery()로 실행
			//		=> select 결과를 ResultSet으로 보냄
			
			rs = pstmt.executeQuery();
			ArrayList<Apple> apples = new ArrayList<Apple>();
			Apple apple = null;
			
			while (rs.next()) {
				apple = new Apple();
				apple.setA_location(rs.getString("a_location"));
				apple.setA_color(rs.getString("a_color"));
				apple.setA_taste(rs.getString("a_taste"));
				apple.setA_price(rs.getInt("a_price"));
				apple.setA_introduce(rs.getString("a_introduce"));
				apples.add(apple);
			}
			request.setAttribute("apples", apples);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public static void setApple(HttpServletRequest request) {
		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			con = LyhDBManager.connect("lyhPool");
			String a_location[] = request.getParameterValues("a_location");
			String a_color[] = request.getParameterValues("a_color");
			String a_taste[] = request.getParameterValues("a_taste");
			String[] p = request.getParameterValues("a_price");
			int a_price = Integer.parseInt(p[0]);
			String a_introduce = request.getParameter("a_introduce").replace("\r\n", "<br>");
			
			String sql = "insert into jun26_apple values(?, ?, ?, ?, ?)";
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, a_location[0]);
			pstmt.setString(2, a_color[0]);
			pstmt.setString(3, a_taste[0]);
			pstmt.setInt(4, a_price);
			pstmt.setString(5, a_introduce);
			pstmt.executeUpdate();														
			
			
			ArrayList<Apple> apples = new ArrayList<Apple>();
			Apple apple = null;
			apple.setA_location(a_location[0]);
			apple.setA_color(a_color[0]);
			apple.setA_taste(a_taste[0]);
			apple.setA_price(a_price);
			apple.setA_introduce(a_introduce);
			request.setAttribute("apples", apples);
		} catch (Exception e) {
		}
		LyhDBManager.close(con, pstmt, null);
	}
	
}



















































