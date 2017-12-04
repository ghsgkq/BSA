package BSA.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BSA.model.memberDao;

public class emailcheckAction implements CommandAction{

	@Override
	public String requestPro(HttpServletRequest req, HttpServletResponse resp) throws Throwable {
		req.setCharacterEncoding("UTF-8");
		resp.setDateHeader("Expires", 0);
		resp.setHeader("Pragma", "no-cache");
		if(req.getProtocol().equals("HTTP/1.1")) {
			resp.setHeader("Cache-Control", "no-cache");
		}
		if(!(req.getParameter("email").equals(""))) {
			char email;
			int guncheck=0;
			for(int i=0; i<req.getParameter("email").length(); i++) {
				email = req.getParameter("email").charAt(i);
				if(email >= 0x41 && email <= 0x5A) {
					
				}
				else if(email >= 0x30 && email <= 0x39) {
					
				}
				else if(email == 0x40 && guncheck == 0) {
					guncheck++;
				}
				else if(email >= 0x61 && email <= 0x7A) {
					
				}
				else {
					req.setAttribute("emailcheck", 3);
				}
			}
			if(memberDao.getInstance().compareEmail(req.getParameter("email"))) {
				req.setAttribute("emailcheck", 1);
				req.setAttribute("email", req.getParameter("email"));
			}
			else {
				req.setAttribute("emailcheck", 2);
			}
		}
		else {
			req.setAttribute("emailcheck", 3);
		}
		
		
		req.setAttribute("first_name", req.getParameter("first_name"));
		req.setAttribute("last_name",req.getParameter("last_name"));
		req.setAttribute("phone", req.getParameter("phone"));
		req.setAttribute("id", req.getParameter("id"));
		req.setAttribute("password", req.getParameter("password"));
		if(req.getParameter("idcheck").equals("1")) {
			req.setAttribute("idcheck", req.getParameter("idcheck"));
		}
		else {
			req.setAttribute("idcheck", 0);
		}
		
		req.setAttribute("re_password", req.getParameter("re_password"));
		return "/JSP/register.jsp";
	}
	
}
