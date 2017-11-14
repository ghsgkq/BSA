package BSA.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class registerProAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest req, HttpServletResponse resp) throws Throwable {
		
		// 1: 아이디 입력 x  
		// 2: 비밀번호 입력 x
		// 3: 비밀번호확인 입력 x
		// 4: 이메일 입력 x
		// 5: 이메일확인란 체크 x
		// 6: 비밀번호 비밀번호확인 맞지 않음
		if(req.getParameter("id").equals("") || req.getParameter("password").equals("") || req.getParameter("re-password").equals("") || req.getParameter("email").equals("") || req.getParameter("what").equals("") || !(req.getParameter("password").equals(req.getParameter("re-password")))) {
			if(req.getParameter("id").equals("")) {
				req.setAttribute("anser", 1);
			}
			
			else if(req.getParameter("password").equals("")) {
				req.setAttribute("anser", 2);
			}
			
			else if(req.getParameter("re-password").equals("")) {
				req.setAttribute("anser", 3);
			}
			
			else if(req.getParameter("email").equals("")) {
				req.setAttribute("anser", 4);
			}
			
			else if(req.getParameter("what").equals("")) {
				req.setAttribute("anser", 5);
			}
			else if(!(req.getParameter("password").equals(req.getParameter("re-password")))) {
				req.setAttribute("anser", 6);
			}
			
			String id = req.getParameter("id");
			String password = req.getParameter("password");
			String email = req.getParameter("email");
			if(id==null) {
				id="";
			}
			if(password==null) {
				password="";
			}
			if(email==null) {
				email="";
			}
			req.setAttribute("id", id);
			req.setAttribute("password", password);
			req.setAttribute("email", email);
			return "/JSP/register.jsp";
		}else {
			req.setAttribute("anser", 7);
			return null;
		}
		
		
	}
	
}
