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
	
	public int delMemberlist(String email) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int result = 0;
		try {
			conn = ConnUtil.getConnection();
			pstmt = conn.prepareStatement("delete from BOOKING where email=?");
			rs=pstmt.executeQuery();
			pstmt.setString(1, email.trim());
			result = pstmt.executeUpdate();
		}catch(Exception e) {
			System.out.println(e+"=>delMemberlist fail");
		}try {
			if(rs!=null)rs.close();
			if(pstmt!=null)pstmt.close();
			if(conn!=null)conn.close();
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
	
	public ArrayList<BookingDto> getMemberlist(){
		ArrayList<BookingDto> list = new ArrayList<BookingDto>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn= ConnUtil.getConnection();
			pstmt = conn.prepareStatement("select * from BOOKING");
			rs = pstmt.executeQuery();
			while(rs.next()) {
				BookingDto bd = new BookingDto();
				
				bd.setFirst_name(rs.getString(1));
				bd.setLast_name(rs.getString(2));
				bd.setPhone(rs.getString(3));
				bd.setEmail(rs.getString(4));
				bd.setWhere_trip(rs.getString(5));
				bd.setWhere_from(rs.getString(6));
				bd.setWhere_to(rs.getString(7));
				bd.setPickup(rs.getString(8));
				bd.setDropft(rs.getString(9));
				bd.setStart_airline_name(rs.getString(10));
				bd.setStart_airline_no(rs.getString(11));
				bd.setStart_airline_time(rs.getString(12));
				bd.setArrival_airline_name(rs.getString(13));
				bd.setArrival_airline_no(rs.getString(14));
				bd.setArrival_airline_time(rs.getString(15));
				bd.setBus_time_pickup(rs.getString(16));
				bd.setBus_time_dropft(rs.getString(17));
				bd.setStart_date(rs.getString(18));
				bd.setArrival_date(rs.getString(19));
				bd.setAdults(rs.getString(20));
				bd.setYoung(rs.getString(21));
				bd.setChild(rs.getString(22));
				bd.setInfatns(rs.getString(23));
				bd.setName_on_card(rs.getString(24));
				bd.setCard_number(rs.getString(25));
				bd.setExpiry_year(rs.getString(26));
				bd.setExpiry_month(rs.getString(27));
				bd.setCsv_number(rs.getString(28));
				bd.setComm(rs.getString(29));
				bd.setMoney(rs.getString(30));
				bd.setCode(rs.getString(31));

				list.add(bd);
			}
		}catch(Exception e) {
			System.out.println(e+"=> getMemberlist fail");
		}try {
			if(rs!= null)rs.close();
			if(pstmt!=null)pstmt.close();
			if(conn!=null)pstmt.close();
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
}
