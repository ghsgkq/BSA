package BSA.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class memberDao {
	private static memberDao instance = null;
	private memberDao() {}
	public static memberDao getInstance() {
		if(instance == null) {
			synchronized (memberDao.class) {
				instance = new memberDao();
			}
		}
		return instance;
	}
	
	public void memberRegister(memberDto mdto) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = ConnUtil.getConnection();
			pstmt = conn.prepareStatement("insert into BSA_MEMBER(NUM, ID, PASSWORD, EMAIL) "
					+ "values(MEMBER_SEQ.nextval, ? , ? , ?)");
			pstmt.setString(1, mdto.getId());
			pstmt.setString(2, mdto.getPassword());
			pstmt.setString(3, mdto.getEmail());
			pstmt.executeUpdate();
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
	public List<String> memberGetId(){
		return null;
	}
}
