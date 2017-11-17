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
				sql = "insert into BOOKING (WHERE_TRIP, WHERE_FROM, WHERE_TO, PICKUP, DROPFT, START_AIRLINE_NAME, "
						+ "START_AIRLINE_NO, START_AIRLINE_TIME, ARRIVAL_AIRLINE_NAME, ARRIVAL_AIRLINE_NO, ARRIVAL_AIRLINE_TIME, "
						+ "START_DATE, ARRIVAL_DATE, ADULTS, YOUNG, CHILD, INFATNS) "
						+ "values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
				pstmt=conn.prepareStatement(sql);
				pstmt.setString(1, article.getWhere_trip());
				pstmt.setString(2, article.getWhere_from());
				pstmt.setString(3, article.getWhere_to());
				pstmt.setString(4, article.getPickup());
				pstmt.setString(5, article.getDropft());
				pstmt.setString(6, article.getStart_airline_name());
				pstmt.setString(7, article.getStart_airline_no());
				pstmt.setString(8, article.getStart_airline_time());
				pstmt.setString(9, article.getArrival_airline_name());
				pstmt.setString(10, article.getArrival_airline_no());
				pstmt.setString(11, article.getArrival_airline_time());
				pstmt.setString(12, article.getStart_date());
				pstmt.setString(13, article.getArrival_date());
				pstmt.setString(14, article.getAdults());
				pstmt.setString(15, article.getYoung());
				pstmt.setString(16, article.getChild());
				pstmt.setString(17, article.getInfatns());
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

