package BSA.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class registerAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest req, HttpServletResponse resp) throws Throwable {
		String id = req.getParameter("id");
		String password=req.getParameter("password");
		String re_password=req.getParameter("re_password");
		String email = req.getParameter("email");
		String code = (String)req.getAttribute("code");
		
		if(id != null) {
			req.setAttribute("anser", 7);
		}
		
		
		return "/JSP/register.jsp";
	}
	
}
