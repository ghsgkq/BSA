package BSA.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class AdminLoginProAction implements CommandAction{

	@Override
	public String requestPro(HttpServletRequest req, HttpServletResponse resp) throws Throwable {
		// TODO Auto-generated method stub
		String admin_id=req.getParameter("admin_id");
		String admin_pw=req.getParameter("admin_pw");
		//아이디와 패스워드 저장
		HttpSession session=req.getSession();
		//세션 객체 생성
		
		if(admin_id.equals("admin")&& admin_pw.equals("1234")) {
			session.setAttribute("admin_id", admin_id);
			//관리자 아이디"admin" 비밀번호 "1234" 임시세션에 저장
			
		}
		else {
			session.invalidate();
			req.setAttribute("message", "사용자 아이디 또는 비밀번호가 다릅니다.");
			return "/JSP/AdminLogin.jsp";
			//아이디 비밀번호 일치 하지 않는 경우 로그인 안됨으로 설정 해놓음
		}
		
		
		return "/JSP/AdminLogout.jsp";
	}

}
