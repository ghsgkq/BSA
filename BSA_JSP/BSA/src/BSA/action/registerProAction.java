package BSA.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class registerProAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest req, HttpServletResponse resp) throws Throwable {
		if(req.getParameter("id").equals("")) {
			req.setAttribute("anser", 1);
			return "/JSP/register.jsp";
		}
		if(req.getParameter("password").equals("")) {
			req.setAttribute("anser", 2);
			return "/JSP/register.jsp";
		}
		if(req.getParameter("re-password").equals("")) {
			req.setAttribute("anser", 3);
			return "/JSP/register.jsp";
		}
		if(req.getParameter("email").equals("")) {
			req.setAttribute("anser", 4);
			return "/JSP/register.jsp";
		}
		return null;
	}
	
}
