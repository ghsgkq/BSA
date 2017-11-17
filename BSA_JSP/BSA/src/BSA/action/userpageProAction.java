package BSA.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BSA.model.memberDao;

public class userpageProAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest req, HttpServletResponse resp) throws Throwable {
		memberDao mdao = memberDao.getInstance();
		mdao.updatemember(req.getParameter("id"), req.getParameter("first_name"), req.getParameter("last_name"), req.getParameter("phone"));
		req.setAttribute("check", 1);
		return "/userpage.do";
	}
	
}
