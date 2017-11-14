package BSA.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class registerAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest req, HttpServletResponse resp) throws Throwable {
		String id = req.getParameter("id");
		String password=req.getParameter("password");
		String re_password=req.getParameter("re-password");
		String email = req.getParameter("email");
		String code = req.getParameter("code");
		
		req.setAttribute("id", id);
		req.setAttribute("password", password);
		req.setAttribute("re-password", re_password);
		req.setAttribute("email", email);
		req.setAttribute("code", code);
		req.setAttribute("anser", 7);
		return "/JSP/register.jsp";
	}
	
}
