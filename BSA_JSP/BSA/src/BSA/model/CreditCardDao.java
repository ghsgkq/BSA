package BSA.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class CreditCardDao {
	private static CreditCardDao instance = null;
	private CreditCardDao() {}
	public static CreditCardDao getInstacne() {
		if(instance == null) {
			synchronized (CreditCardDao.class) {
				instance = new CreditCardDao();
			}
		}
		return instance;
	}
	
	public void Creditinsert(CreditCardDto article) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = ConnUtil.getConnection();
			pstmt = conn.prepareStatement("insert into CREDIT_CARD (NAME_ON_CARD, CARD_NUMBER, "
					+ "EXPIRY_YEAR, EXPIRY_MONTH, CSV_NUMBER) "
					+ "value(CREDITCARD_SEQ.nextval, ?, ?, ?, ?, ?)");
			pstmt.setString(1, article.getName_on_card());
			pstmt.setString(2, article.getCard_number());
			pstmt.setString(3, article.getExpiry_year());
			pstmt.setString(4, article.getExpiry_month());
			pstmt.setString(5, article.getCsv_number());
			pstmt.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs != null)rs.close();
				if(pstmt != null)rs.close();
				if(conn != null)conn.close();
			}catch(SQLException e) {
				e.printStackTrace();
			}
		}
	}
}
