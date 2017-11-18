package BSA.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BSA.model.memberDao;

public class changepwProAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest req, HttpServletResponse resp) throws Throwable {
		memberDao mdao = memberDao.getInstance();
		int check = 0;
		if(req.getParameter("new_password").equals(req.getParameter("new_re_password"))) {
			check = mdao.changepw(req.getParameter("password"), req.getParameter("new_password"));
		}else {
			check = 2;
		}
		req.setAttribute("check", check);
		return "/JSP/changepw.jsp";
	}
	
}
