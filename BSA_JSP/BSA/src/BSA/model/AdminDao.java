package BSA.model;

import java.beans.Statement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

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
		StringBuffer sql=new StringBuffer();
		try {
			conn = ConnUtil.getConnection();
			sql.append("insert into ADMINLOG  "
					+ "values(?, ?)");
			pstmt=conn.prepareStatement(sql.toString());
			pstmt.setString(1, article.getAdmin_id("admin"));
			pstmt.setString(2, article.getAdmin_pw("1234"));
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
	
	
	public ArrayList<BookingDto> getArticles(int start, int end){
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<BookingDto> articleList = null;
		try {
			conn = ConnUtil.getConnection();
					String sql = "select * from "
							+ "(select rownum RNUM, FIRST_NAME, LAST_NAME, PHONE, EMAIL, WHERE_TRIP, WHERE_FROM, WHERE_TO,"
							+ "PICKUP, DROPFT, START_AIRLINE_NAME, START_AIRLINE_NO, START_AIRLINE_TIME, ARRIVAL_AIRLINE_NAME,"
							+ "ARRIVAL_AIRLINE_NO, ARRIVAL_AIRLINE_TIME, BUS_TIME_PICKUP, BUS_TIME_DROPFT, START_DATE, ARRIVAL_DATE,"
							+ "ADULTS, YOUNG, CHILD, INFATNS, NAME_ON_CARD, CARD_NUMBER, EXPIRY_YEAR, EXPIRY_MONTH, CSV_NUMBER, COMM, MONEY, CODE, STEP, REF, DEPTH from "
							+ "(select * from BOOKING order by REF desc, STEP asc)) "
							+ "where RNUM >= ? and RNUM <= ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, start);
			pstmt.setInt(2, end);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				articleList = new ArrayList<BookingDto>(5);
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
					article.setStep(rs.getInt("step"));
					article.setRef(rs.getInt("ref"));
					article.setDepth(rs.getInt("depth"));
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
	public int deleteArticle(String email) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String dbEmail="";
		int result = -1;
		try {
			conn = ConnUtil.getConnection();
			pstmt = conn.prepareStatement("select EMAIL from BOOKING where EMAIL = '?'");
			rs = pstmt.executeQuery();
			if(rs.next()) {
				dbEmail = rs.getString("email");
				if(dbEmail.equals(email)) {
					pstmt.close();
					pstmt = conn.prepareStatement("delete from BOOKING where EMAIL = '?'");
					pstmt.executeUpdate();
					result = 1;
				}else {
					result = 0;
				}
			}
		}catch (Exception e) {
			e.printStackTrace();
		}try {
			if(rs!=null)rs.close();
			if(pstmt!=null)rs.close();
			if(conn!=null)rs.close();
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
	
	public BookingDto getArticle(String code) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		BookingDto article = null;
		try {
			conn = ConnUtil.getConnection();
			pstmt = conn.prepareStatement("select * from BOOKING where code = ?");
			pstmt.setString(1, code);
			rs= pstmt.executeQuery();
			if(rs.next()) {
				article = new BookingDto();
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
				article.setStart_airline_no(rs.getString("starty_airline_no"));
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
				article.setMoney("money");
				article.setCode(rs.getString("code"));
			}
			}catch(Exception e) {
				e.printStackTrace();
			}try {
				if(rs!=null)rs.close();
				if(conn!=null)conn.close();
				if(pstmt!=null)pstmt.close();
			}catch(SQLException e) {
				e.printStackTrace();
			}
			return article;
		}
	}
	

