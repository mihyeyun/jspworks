package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.common.JDBCUtil;

public class AddrBookDAO {
	/* private ArrayList<AddrBook> addrList = new ArrayList<>(); */
	//jdbc 관련 변수
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	//주소 추가
	public void addAddress(AddrBook addrBook) {
		try {
			conn = JDBCUtil.getConnection(); //db 연결
			String sql = "INSERT INTO t_address(num, username, tel, email, gender)"
					      + " VALUES (ab_seq.NEXTVAL, ?, ?, ?, ?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, addrBook.getUsername());
			pstmt.setString(2, addrBook.getTel());
			pstmt.setString(3, addrBook.getEmail());
			pstmt.setString(4, addrBook.getGender());
			//joinDate는 자동으로 추가됨
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(conn, pstmt);
		}
	}
	
	//목록 보기
	public ArrayList<AddrBook> getListAll(){
		ArrayList<AddrBook> addrList = new ArrayList<>();
		conn = JDBCUtil.getConnection();
		String sql = "SELECT * FROM t_address ORDER BY num ASC";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				AddrBook addrBook = new AddrBook();	//주소 객체 생성
				addrBook.setNum(rs.getInt("num"));	//테이블의 번호 칼럼을 가저옴
				addrBook.setUsername(rs.getString("username"));
				addrBook.setTel(rs.getString("tel"));
				addrBook.setEmail(rs.getString("email"));
				addrBook.setGender(rs.getString("gender"));
				addrBook.setJoinDate(rs.getDate("joinDate"));
				addrList.add(addrBook);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			JDBCUtil.close(conn, pstmt, rs);
		}
		return addrList;
	}//목록 닫기
	
	//로그인 체크
	
	public boolean checkLogin(String email) {
		conn = JDBCUtil.getConnection();
		String sql = "SELECT email FROM t_address WHERE email = ?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, email);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				return true;	//이메일 일치
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(conn, pstmt, rs);
		}
		return false; //이메일 불일치
	}
	
	/*
	 * //상세보기 public AddrBook getAbByUserName(String username) { AddrBook
	 * abByUsername = null; for(int i=0; i<addrList.size(); i++) { AddrBook ab =
	 * addrList.get(i); String dbUser = ab.getUsername();
	 * if(dbUser.equals(username)) { abByUsername = ab; break; } } return
	 * abByUsername; }
	 */
}