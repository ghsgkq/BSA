package BSA.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

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
					+ "FIRST_NAME, LAST_NAME, PHONE_NUMBER, EMAIL_ADDRESS, COMM, NAME_ON_CARD, CARD_NUMBER, EXPIRY_YEAR, EXPIRY_MONTH, CSV_NUMBER)"
					+ "values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
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
}
