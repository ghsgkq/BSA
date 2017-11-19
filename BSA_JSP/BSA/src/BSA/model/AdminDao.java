package BSA.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class AdminDao {
	private static AdminDao instance = null;
	private AdminDao() {}
	public static AdminDao getInstance() {
		if(instance == null) {
			synchronized (memberDao.class) {
				instance = new AdminDao();
			}
		}
		return instance;
	}
	
	public void AdminInsert(AdminDto article) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql="";
		try {
			conn = ConnUtil.getConnection();
			sql="insert into ADMINLOG (ADMIN_ID, ADMIN_PW) "
					+ "values(?, ?)";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, article.getAdmin_id());
			pstmt.setString(2, article.getAdmin_pw());
			pstmt.executeQuery();
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null)pstmt.close();
				if(conn != null)conn.close();
			}catch(SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
	
}
