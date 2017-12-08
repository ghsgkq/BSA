package BSA.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class indexAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest req, HttpServletResponse resp) throws Throwable {
		String id = null;
		if(req.getSession().getAttribute("id") == null) {
			
		}
		else {
			id = (String)req.getSession().getAttribute("id");
		}
		req.getSession().invalidate();
		req.getSession().setAttribute("id", id);	
		return "/JSP/index.jsp";
	}
	
}
