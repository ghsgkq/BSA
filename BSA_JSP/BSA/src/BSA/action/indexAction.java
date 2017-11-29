package BSA.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class indexAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest req, HttpServletResponse resp) throws Throwable {
		if(req.getSession().getAttribute("id").equals("") || req.getSession().getAttribute("id") == null) {
			req.getSession().invalidate();
		}else {
			String id = (String)req.getSession().getAttribute("id");
			req.getSession().invalidate();
			req.getSession().setAttribute("id", id);
		}
		
		return "/JSP/index.jsp";
	}
	
}
