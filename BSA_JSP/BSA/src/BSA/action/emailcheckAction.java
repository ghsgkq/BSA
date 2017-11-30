package BSA.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BSA.model.memberDao;

public class emailcheckAction implements CommandAction{

	@Override
	public String requestPro(HttpServletRequest req, HttpServletResponse resp) throws Throwable {
		req.setCharacterEncoding("UTF-8");
		if(memberDao.getInstance().compareEmail(req.getParameter("email"))) {
			req.setAttribute("emailcheck", 1);
			req.setAttribute("email", req.getParameter("email"));
		}
		else {
			req.setAttribute("emailcheck", 2);
		}
		
		req.setAttribute("first_name", req.getParameter("first_name"));
		req.setAttribute("last_name",req.getParameter("last_name"));
		req.setAttribute("phone", req.getParameter("phone"));
		req.setAttribute("id", req.getParameter("id"));
		req.setAttribute("password", req.getParameter("password"));
		req.setAttribute("idcheck", req.getParameter("idcheck"));
		req.setAttribute("re_password", req.getParameter("re_password"));
		return "/JSP/register.jsp";
	}
	
}
