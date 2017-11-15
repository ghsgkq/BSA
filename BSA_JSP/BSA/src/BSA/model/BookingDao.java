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
	
	public void BookingRegsiter(BookingDto dto) {
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			try {
				conn = ConnUtil.getConnection();
				pstmt = conn.prepareStatement("insert into BOOKING (FROM, TO, PICKUP, DROPFT, START_AIRLINE_NAME, "
						+ "START_AIRLINE_NO, START_FLIGHT_TIME, ARRIVAL_AIRLINE_NAME, ARRIVAL_AIRLINE_NO, ARRIVAL_AIRLINE_TIME, "
						+ "START_DATE, ARRIVAL_DATE, ADULTS, YOUNG, CHILD, INFATNS) "
						+ "value(BOOKING_SEQ.nextval, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
				pstmt.setString(1, dto.getFrom());
				pstmt.setString(2, dto.getTo());
				pstmt.setString(3, dto.getPickup());
				pstmt.setString(4, dto.getDropft());
				pstmt.setString(5, dto.getStart_airline_name());
				pstmt.setString(6, dto.getStart_airline_no());
				pstmt.setString(7, dto.getStart_flight_time());
				pstmt.setString(8, dto.getArrival_airline_name());
				pstmt.setString(9,dto.getArrival_airline_no());
				pstmt.setString(10,dto.getArrival_airline_time());
				pstmt.setString(11,dto.getStart_date());
				pstmt.setString(12, dto.getArrival_date());
				pstmt.setInt(13, dto.getAdults());
				pstmt.setInt(14, dto.getYoung());
				pstmt.setInt(15, dto.getChild());
				pstmt.setInt(16, dto.getInfatns());
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

