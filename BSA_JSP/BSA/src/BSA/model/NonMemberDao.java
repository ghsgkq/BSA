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
			pstmt = conn.prepareStatement("insert into NONMEMBER (FIRST_NAME, "
					+ "LAST_NAME, PHONE_NUMBER, EMAIL_ADDRESS, COMMENT)"
					+ "vlaue(NONMEMBER_SEQ.nextval, ?, ?, ?, ?, ?)");
			pstmt.setString(1, article.getFirst_name());
			pstmt.setString(2, article.getLast_name());
			pstmt.setString(3, article.getPhone_number());
			pstmt.setString(4, article.getEmail_address());
			pstmt.setString(5, article.getComment());
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
}
