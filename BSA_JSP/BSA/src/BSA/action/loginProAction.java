package BSA.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class loginProAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest req, HttpServletResponse resp) throws Throwable {
		if(req.getParameter("id").equals("")) {
			req.setAttribute("anser", 1);
			return "/JSP/login.jsp";
		}
		if(req.getParameter("password").equals("")) {
			req.setAttribute("anser", 2);
			return "/JSP/login.jsp";
		}
		return null;
	}
	
}
