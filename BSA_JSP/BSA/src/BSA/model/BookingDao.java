package BSA.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class BookingDao {
	private static BookingDao instance = null;
	private BookingDao() {}
	public static BookingDao getInstance() {
		if(instance == null) {
			synchronized (memberDao.class) {
				instance = new BookingDao();
			}
		}
		return instance;
	}
	
	public void Bookinginsert(BookingDto article) {
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			String sql="";
			try {
				conn = ConnUtil.getConnection();
				sql = "insert into BOOKING (FIRST_NAME, LAST_NAME, PHONE, EMAIL, WHERE_TRIP, WHERE_FROM, WHERE_TO, PICKUP, DROPFT, START_AIRLINE_NAME, "
						+ "START_AIRLINE_NO, START_AIRLINE_TIME, ARRIVAL_AIRLINE_NAME, ARRIVAL_AIRLINE_NO, ARRIVAL_AIRLINE_TIME, "
						+ "START_DATE, ARRIVAL_DATE, ADULTS, YOUNG, CHILD, INFATNS, NAME_ON_CARD, CARD_NUMBER, EXPIRY_YEAR, EXPIRY_MONTH, CSV_NUMBER,COMM) "
						+ "values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
				pstmt=conn.prepareStatement(sql);
				pstmt.setString(1, article.getFirst_name());
				pstmt.setString(2, article.getLast_name());
				pstmt.setString(3, article.getPhone());
				pstmt.setString(4, article.getEmail());
				pstmt.setString(5, article.getWhere_trip());
				pstmt.setString(6, article.getWhere_from());
				pstmt.setString(7, article.getWhere_to());
				pstmt.setString(8, article.getPickup());
				pstmt.setString(9, article.getDropft());
				pstmt.setString(10, article.getStart_airline_name());
				pstmt.setString(11, article.getStart_airline_no());
				pstmt.setString(12, article.getStart_airline_time());
				pstmt.setString(13, article.getArrival_airline_name());
				pstmt.setString(14, article.getArrival_airline_no());
				pstmt.setString(15, article.getArrival_airline_time());
				pstmt.setString(16, article.getStart_date());
				pstmt.setString(17, article.getArrival_date());
				pstmt.setString(18, article.getAdults());
				pstmt.setString(19, article.getYoung());
				pstmt.setString(20, article.getChild());
				pstmt.setString(21, article.getInfatns());
				pstmt.setString(22, article.getName_on_card());
				pstmt.setString(23, article.getCard_number());
				pstmt.setString(24, article.getExpiry_year());
				pstmt.setString(25, article.getExpiry_month());
				pstmt.setString(26, article.getCsv_number());
				pstmt.setString(27, article.getComm());
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
	
	}

