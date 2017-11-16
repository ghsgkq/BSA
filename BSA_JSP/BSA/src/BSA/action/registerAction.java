package BSA.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import oracle.net.aso.f;

public class registerAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest req, HttpServletResponse resp) throws Throwable {
		req.setCharacterEncoding("UTF-8");
		String first_name = req.getParameter("first_name");
		String last_name = req.getParameter("last_name");
		String phone = req.getParameter("phone");
		String id = req.getParameter("id");
		String password=req.getParameter("password");
		String re_password=req.getParameter("re_password");
		String email = req.getParameter("email");
		String code = (String)req.getAttribute("code");
		
		if(id != null) {
			req.setAttribute("anser", 10);
		}
		req.setAttribute("first_name", first_name);
		req.setAttribute("last_name", last_name);
		req.setAttribute("phone", phone);
		req.setAttribute("id", id);
		req.setAttribute("password", password);
		req.setAttribute("re_password", re_password);
		req.setAttribute("email", email);
		req.setAttribute("code", code);
		
		return "/JSP/register.jsp";
	}
	
}
