package BSA.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

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
						+ "START_AIRLINE_NO, START_AIRLINE_TIME, ARRIVAL_AIRLINE_NAME, ARRIVAL_AIRLINE_NO, ARRIVAL_AIRLINE_TIME, BUS_TIME_PICKUP, BUS_TIME_DROPFT, "
						+ "START_DATE, ARRIVAL_DATE, ADULTS, YOUNG, CHILD, INFATNS, NAME_ON_CARD, CARD_NUMBER, EXPIRY_YEAR, EXPIRY_MONTH, CSV_NUMBER, COMM, MONEY, CODE) "
						+ "values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
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
				pstmt.setString(16, article.getBus_time_pickup());
				pstmt.setString(17, article.getBus_time_dropft());
				pstmt.setString(18, article.getStart_date());
				pstmt.setString(19, article.getArrival_date());
				pstmt.setString(20, article.getAdults());
				pstmt.setString(21, article.getYoung());
				pstmt.setString(22, article.getChild());
				pstmt.setString(23, article.getInfatns());
				pstmt.setString(24, article.getName_on_card());
				pstmt.setString(25, article.getCard_number());
				pstmt.setString(26, article.getExpiry_year());
				pstmt.setString(27, article.getExpiry_month());
				pstmt.setString(28, article.getCsv_number());
				pstmt.setString(29, article.getComm());
				pstmt.setString(30, article.getMoney());
				pstmt.setString(31, article.getCode());
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
		public ArrayList<BookingDto> getBooking(String email, int tripcheck) {
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			ArrayList<BookingDto> arrbdto = new ArrayList<BookingDto>();
			try {
				conn = ConnUtil.getConnection();
				pstmt = conn.prepareStatement("select * from BOOKING where email=?");
				pstmt.setString(1, email);
				rs = pstmt.executeQuery();
				while(rs.next()) {
					BookingDto bdto = new BookingDto();
					if(tripcheck == 1) {
						if(rs.getString("where_trip").equals("편도")) {
							bdto.setFirst_name(rs.getString("first_name"));
							bdto.setLast_name(rs.getString("last_name"));
							bdto.setPhone(rs.getString("phone"));
							bdto.setEmail(rs.getString("email"));
							bdto.setWhere_trip(rs.getString("where_trip"));
							bdto.setWhere_from(rs.getString("where_from"));
							bdto.setWhere_to(rs.getString("where_to"));
							bdto.setPickup(rs.getString("pickup"));
							bdto.setDropft(rs.getString("dropft"));
							bdto.setStart_airline_name(rs.getString("start_airline_name"));
							bdto.setStart_airline_no(rs.getString("start_airline_no"));
							bdto.setStart_airline_time(rs.getString("start_airline_time"));
							bdto.setArrival_airline_name(rs.getString("arrival_airline_name"));
							bdto.setArrival_airline_no(rs.getString("arrival_airline_no"));
							bdto.setArrival_airline_time(rs.getString("arrival_airline_time"));
							bdto.setBus_time_pickup(rs.getString("bus_time_pickup"));
							bdto.setBus_time_dropft(rs.getString("bus_time_dropft"));
							bdto.setStart_date(rs.getString("start_date"));
							bdto.setArrival_date(rs.getString("arrival_date"));
							bdto.setAdults(rs.getString("adults"));
							bdto.setYoung(rs.getString("young"));
							bdto.setChild(rs.getString("child"));
							bdto.setInfatns(rs.getString("infatns"));
							bdto.setName_on_card(rs.getString("name_on_card"));
							bdto.setCard_number(rs.getString("card_number"));
							bdto.setExpiry_year(rs.getString("expiry_year"));
							bdto.setExpiry_month(rs.getString("Expiry_month"));
							bdto.setCsv_number(rs.getString("csv_number"));
							bdto.setComm(rs.getString("comm"));
							bdto.setMoney(rs.getString("money"));
							bdto.setCode(rs.getString("code"));
						}
					}
					else if(tripcheck == 2) {
						if(rs.getString("where_trip").equals("왕복")) {
							bdto.setFirst_name(rs.getString("first_name"));
							bdto.setLast_name(rs.getString("last_name"));
							bdto.setPhone(rs.getString("phone"));
							bdto.setEmail(rs.getString("email"));
							bdto.setWhere_trip(rs.getString("where_trip"));
							bdto.setWhere_from(rs.getString("where_from"));
							bdto.setWhere_to(rs.getString("where_to"));
							bdto.setPickup(rs.getString("pickup"));
							bdto.setDropft(rs.getString("dropft"));
							bdto.setStart_airline_name(rs.getString("start_airline_name"));
							bdto.setStart_airline_no(rs.getString("start_airline_no"));
							bdto.setStart_airline_time(rs.getString("start_airline_time"));
							bdto.setArrival_airline_name(rs.getString("arrival_airline_name"));
							bdto.setArrival_airline_no(rs.getString("arrival_airline_no"));
							bdto.setArrival_airline_time(rs.getString("arrival_airline_time"));
							bdto.setBus_time_pickup(rs.getString("bus_time_pickup"));
							bdto.setBus_time_dropft(rs.getString("bus_time_dropft"));
							bdto.setStart_date(rs.getString("start_date"));
							bdto.setArrival_date(rs.getString("arrival_date"));
							bdto.setAdults(rs.getString("adults"));
							bdto.setYoung(rs.getString("young"));
							bdto.setChild(rs.getString("child"));
							bdto.setInfatns(rs.getString("infatns"));
							bdto.setName_on_card(rs.getString("name_on_card"));
							bdto.setCard_number(rs.getString("card_number"));
							bdto.setExpiry_year(rs.getString("expiry_year"));
							bdto.setExpiry_month(rs.getString("Expiry_month"));
							bdto.setCsv_number(rs.getString("csv_number"));
							bdto.setComm(rs.getString("comm"));
							bdto.setMoney(rs.getString("money"));
							bdto.setCode(rs.getString("code"));
						}
					}
					
					arrbdto.add(bdto);
				}
			}catch(SQLException e){
				e.printStackTrace();
			}finally {
				try {
					if(conn != null) conn.close();
					if(pstmt != null) pstmt.close();
					if(rs != null) rs.close();
					
				}catch(SQLException e) {
					e.printStackTrace();
				}
			}
			
			return arrbdto;
		
		}
		
		public int getArticleCount() {
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			int count = 0;
			try {
				conn = ConnUtil.getConnection();
				pstmt = conn.prepareStatement("select count(*) from BOOKING");
				rs= pstmt.executeQuery();
				if(rs.next()) {
					count = rs.getInt(1);
				}
			}catch(Exception e) {
				e.printStackTrace();
			}try {
				if(rs != null)rs.close();
				if(pstmt != null)pstmt.close();
				if(conn != null)conn.close();
			}catch(SQLException e) {
				e.printStackTrace();
			}
			return count;
		}
		
		
		public List<BookingDto> getArticles(){
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			List<BookingDto> articleList = null;
			try {
				conn = ConnUtil.getConnection();
						String sql = "select * from BOOKING";
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				if(rs.next()) {
					articleList = new ArrayList<BookingDto>();
					do {
						BookingDto article = new BookingDto();
						article.setFirst_name(rs.getString("first_name"));
						article.setLast_name(rs.getString("last_name"));
						article.setPhone(rs.getString("phone"));
						article.setEmail(rs.getString("email"));
						article.setWhere_trip(rs.getString("where_trip"));
						article.setWhere_from(rs.getString("where_from"));
						article.setWhere_to(rs.getString("where_to"));
						article.setPickup(rs.getString("pickup"));
						article.setDropft(rs.getString("dropft"));
						article.setStart_airline_name(rs.getString("start_airline_name"));
						article.setStart_airline_no(rs.getString("start_airline_no"));
						article.setStart_airline_time(rs.getString("start_airline_time"));
						article.setArrival_airline_name(rs.getString("arrival_airline_name"));
						article.setArrival_airline_no(rs.getString("arrival_airline_no"));
						article.setArrival_airline_time(rs.getString("arrival_airline_time"));
						article.setBus_time_pickup(rs.getString("bus_time_pickup"));
						article.setBus_time_dropft(rs.getString("bus_time_dropft"));
						article.setStart_date(rs.getString("start_date"));
						article.setArrival_date(rs.getString("arrival_date"));
						article.setAdults(rs.getString("adults"));
						article.setYoung(rs.getString("young"));
						article.setChild(rs.getString("child"));
						article.setInfatns(rs.getString("infatns"));
						article.setName_on_card(rs.getString("name_on_card"));
						article.setCard_number(rs.getString("card_number"));
						article.setExpiry_year(rs.getString("expiry_year"));
						article.setExpiry_month(rs.getString("expiry_month"));
						article.setCsv_number(rs.getString("csv_number"));
						article.setComm(rs.getString("comm"));
						article.setMoney(rs.getString("money"));
						article.setCode(rs.getString("code"));
						articleList.add(article);
					}while(rs.next());
				}
			}catch(Exception e) {
				e.printStackTrace();
			}try {
				if(rs != null)rs.close();
				if(pstmt != null)pstmt.close();
				if(conn != null)conn.close();
			}catch(SQLException e) {
				e.printStackTrace();
			}
			return articleList;
		}
		
		public ArrayList<String> getCode() {
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			ArrayList<String> codes = new ArrayList<String>();
			try {
				conn = ConnUtil.getConnection();
				pstmt = conn.prepareStatement("select code from BOOKING");
				rs = pstmt.executeQuery();
				while(rs.next()) {
					codes.add(rs.getString("code"));
				}
				
			}catch(SQLException e) {
				e.printStackTrace();
			}finally {
				try {
					if(conn != null)conn.close();
					if(pstmt != null) pstmt.close();
					if(rs != null) rs.close();
				}catch(SQLException e) {
					e.printStackTrace();
				}
			}
			return codes;
			
		}

	}

