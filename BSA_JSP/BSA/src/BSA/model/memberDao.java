package BSA.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

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
			pstmt = conn.prepareStatement("insert into BSA_MEMBER(NUM, FIRST_NAME, LAST_NAME, PHONE, ID, PASSWORD, EMAIL) "
					+ "values(MEMBER_SEQ.nextval,?, ?, ?,  ? , ? , ?)");
			pstmt.setString(1, mdto.getFirst_name());
			pstmt.setString(2, mdto.getLast_name());
			pstmt.setString(3, mdto.getPhone());
			pstmt.setString(4, mdto.getId());
			pstmt.setString(5, mdto.getPassword());
			pstmt.setString(6, mdto.getEmail());
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
	public ArrayList<String> memberGetId(){
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<String> id = new ArrayList<String>();
		try {
			conn = ConnUtil.getConnection();
			pstmt = conn.prepareStatement("select id from BSA_MEMBER");
			rs = pstmt.executeQuery();
			while(rs.next()) {
				id.add(rs.getString(1));
			}
		}catch(SQLException e) {
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
		return id;
	}
	public boolean memberLogin(String id, String password) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		boolean anser = false;
		try {
			conn = ConnUtil.getConnection();
			pstmt = conn.prepareStatement("select password from BSA_MEMBER where id=?");
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if(rs == null) {
				anser = false;
			}else {
			   rs.next();
				if(rs.getString(1).equals(password)) {
					anser = true;
				}
				else {
					anser = false;
				}
				
			}
		}catch(SQLException e ) {
			e.printStackTrace();
		}finally {
			try {
				if(conn != null) conn.close();
				if(pstmt != null) pstmt.close();
				if(rs != null)rs.close();
			}catch(SQLException e) {
				e.printStackTrace();
			}
		}
		return anser;
	}
	public memberDto getmember(String id) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		memberDto mdto = new memberDto();
		try {
			conn = ConnUtil.getConnection();
			pstmt = conn.prepareStatement("select * from BSA_member where id=?");
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				mdto.setFirst_name(rs.getString("first_name"));
				mdto.setLast_name(rs.getString("last_name"));
				mdto.setPhone(rs.getString("phone"));
				mdto.setId(rs.getString("id"));
				mdto.setPassword(rs.getString("password"));
				mdto.setEmail(rs.getString("email"));
			}
			
		}catch(SQLException e) {
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
		return mdto;
	}
	
	public void updatemember(String id, String first_name, String last_name, String phone) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = ConnUtil.getConnection();
			pstmt = conn.prepareStatement("select * from BSA_MEMBER where ID=?");
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			rs.next();
			if(first_name.equals("")) {
				first_name = rs.getString("first_name");
			}
			if(last_name.equals("")) {
				last_name = rs.getString("last_name");
			}
			if(phone.equals("")) {
				phone = rs.getString("phone");
			}
			pstmt = null;
			pstmt = conn.prepareStatement("update BSA_MEMBER set FIRST_NAME=?, LAST_NAME=?, PHONE=? where ID=?");
			pstmt.setString(1, first_name);
			pstmt.setString(2, last_name);
			pstmt.setString(3, phone);
			pstmt.setString(4, id);
			pstmt.executeUpdate();
			
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				if(conn != null) conn.close();
				if(pstmt != null)pstmt.close();
				if(rs != null) rs.close();
			}catch(SQLException e) {
				e.printStackTrace();
			}
		}
	}
}
