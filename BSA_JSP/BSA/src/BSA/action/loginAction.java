package BSA.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class loginAction implements CommandAction{

	@Override
	public String requestPro(HttpServletRequest req, HttpServletResponse resp) throws Throwable {
		resp.setDateHeader("Expires", 0);
		resp.setHeader("Pragma", "no-cache");
		if(req.getProtocol().equals("HTTP/1.1")) {
			resp.setHeader("Cache-Control", "no-cache");
		}
		return "/JSP/login.jsp";
	}
	
}
