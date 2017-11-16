package BSA.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BSA.model.memberDao;

public class loginProAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest req, HttpServletResponse resp) throws Throwable {
		String id = req.getParameter("id");
		String password = req.getParameter("password");
		if(id.equals("")) {
			req.setAttribute("anser", 1);
			return "/JSP/login.jsp";
		}
		if(password.equals("")) {
			req.setAttribute("anser", 2);
			return "/JSP/login.jsp";
		}
		memberDao mdao = memberDao.getInstance();
		boolean anser = mdao.memberLogin(id, password);
		if(anser) {
			req.setAttribute("id", id);
			req.setAttribute("logincheck", 1);
		}
		else {
			req.setAttribute("logincheck", 0);
			return "/JSP/login.jsp";
		}
		
		return "/JSP/index.jsp";
	}
	
}
