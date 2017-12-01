package BSA.action;

import java.util.Collections;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import BSA.model.AdminDao;
import BSA.model.AdminDto;
import BSA.model.BookingDto;

public class AdminLoginProAction implements CommandAction{

	@Override
	public String requestPro(HttpServletRequest req, HttpServletResponse resp) throws Throwable {
		// TODO Auto-generated method stub
				
		AdminDto article= new AdminDto();
		article.setAdmin_id(req.getParameter((String) req.getSession().getAttribute("admin_id")));
		article.setAdmin_pw(req.getParameter((String) req.getSession().getAttribute("admin_pw")));
		//아이디와 패스워드 저장
		HttpSession session=req.getSession();
		//서버 세션 객체 생성
		
					
		if(req.getParameter("admin_id").equals(req.getParameter("admin_id"))&& req.getParameter("admin_pw").equals(req.getParameter("admin_pw"))) {
			req.getSession().setAttribute("admin_id", session);
			//관리자 아이디" " 비밀번호 " "  session으로 전송		
		}	
		else {
			session.invalidate();
			req.setAttribute("message", "사용자 아이디 또는 비밀번호가 다릅니다.");
			return "/JSP/AdminLogin.jsp";
			//아이디 비밀번호 일치 하지 않는 경우 로그인 안됨으로 설정 해놓음
		}
				
		return "/JSP/memberbookingpro.jsp";
		
	}

}
