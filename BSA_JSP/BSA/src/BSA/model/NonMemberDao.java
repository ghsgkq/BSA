package BSA.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class NonMemberDao {
	private static NonMemberDao instance = null;
	private NonMemberDao() {}
	public static NonMemberDao getInstance() {
		if(instance == null) {
			synchronized (NonMemberDao.class) {
				instance = new NonMemberDao();
			}
		}
		return instance;
	}
	
	public void NonMemberinsert(NonMemberDto article) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = ConnUtil.getConnection();
			pstmt = conn.prepareStatement("insert into NONMEMBER ("
					+ "FIRST_NAME, LAST_NAME, PHONE_NUMBER, EMAIL_ADDRESS, COMM, NAME_ON_CARD, CARD_NUMBER, EXPIRY_YEAR, EXPIRY_MONTH, CSV_NUMBER, REF, STEP, DEPTH)"
					+ "values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
			pstmt.setString(1, article.getFirst_name());
			pstmt.setString(2, article.getLast_name());
			pstmt.setString(3, article.getPhone_number());
			pstmt.setString(4, article.getEmail_address());
			pstmt.setString(5, article.getComm());
			pstmt.setString(6, article.getName_on_card());
			pstmt.setString(7, article.getCard_number());
			pstmt.setString(8, article.getExpiry_year());
			pstmt.setString(9, article.getExpiry_month());
			pstmt.setString(10, article.getCsv_number());
			pstmt.setInt(11, article.getRef());
			pstmt.setInt(12, article.getStep());
			pstmt.setInt(13, article.getDepth());
			pstmt.executeUpdate();
		}catch(SQLException e) {
				e.printStackTrace();
		}finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null)pstmt.close();
				if(conn != null)pstmt.close();
			}catch(SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
	public int getArticleCount() {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int count = 0;
		try {
			conn = ConnUtil.getConnection();
			pstmt = conn.prepareStatement("select count(*) from NONMEMBER");
			rs = pstmt.executeQuery();
			if(rs.next()) {
				count = rs.getInt(1);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null)pstmt.close();
				if(conn != null)pstmt.close();
			}catch(SQLException e) {
				e.printStackTrace();
			}
		}return count;
	}
	
	public List<NonMemberDto> getArticles(int start, int end){
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<NonMemberDto> articleList = null;
		try {
			conn = ConnUtil.getConnection();
			String sql = "select * from "
					+ "(select rownum RNUM, FIRST_NAME, LAST_NAME,"
					+ "PHONE_NUMBER, EMAIL_ADDRESS, COMM, NAME_ON_CARD, CARD_NUMBER, EXPIRY_YEAR, EXPIRY_MONTH, CSV_NUMBER  REF, STEP, DEPTH from "
					+ "(select * from BOARD order by REF desc, STEP asc)) "
					+ "where RNUM >= ? and RNUM <= ?";
			pstmt = conn.prepareStatement(sql);
			System.out.println(sql);
			pstmt.setInt(1, start);
			pstmt.setInt(2, end);
			rs= pstmt.executeQuery();
			if(rs.next()) {
				articleList = new ArrayList<NonMemberDto>(5);
				do {
					NonMemberDto article = new NonMemberDto();
					article.setFirst_name(rs.getString("first_name"));
					article.setLast_name(rs.getString("last_name"));
					article.setPhone_number(rs.getString("phone_number"));
					article.setEmail_address(rs.getString("email_address"));
					article.setComm(rs.getString("comm"));
					article.setName_on_card(rs.getString("name_on_card"));
					article.setCard_number(rs.getString("card_number"));
					article.setExpiry_year(rs.getString("expiry_year"));
					article.setExpiry_month(rs.getString("expiry_month"));
					article.setCsv_number(rs.getString("csv_number"));
					article.setRef(rs.getInt("ref"));
					article.setStep(rs.getInt("step"));
					article.setDepth(rs.getInt("depth"));
					articleList.add(article);
				}while(rs.next());
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs != null)rs.close();
				if(pstmt != null)pstmt.close();
				if(conn != null)conn.close();
			}catch(SQLException e) {
				e.printStackTrace();
			}
		}return articleList;
	}
	
	
}
