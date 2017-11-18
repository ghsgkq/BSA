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
			if(req.getParameter("password").equals("")) {
				check = 5;
			}
			else if(req.getParameter("new_password").equals("")){
				check = 3;
			}
			else if(req.getParameter("new_re_password").equals("")) {
				check = 4;
			}else {
				check = mdao.changepw(req.getParameter("password"), req.getParameter("new_password"));
			}
			
		}
		else {
			
			check = 2;
		}
		req.setAttribute("password", req.getParameter("password"));
		req.setAttribute("new_password", req.getParameter("new_password"));
		req.setAttribute("check", check);
		return "/JSP/changepw.jsp";
	}
	
}
