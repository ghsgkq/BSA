package BSA.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BSA.model.memberDao;

public class unregisterActionPro implements CommandAction{

	@Override
	public String requestPro(HttpServletRequest req, HttpServletResponse resp) throws Throwable {
		int un_check = 0;
		un_check = memberDao.getInstance().unregister((String)req.getSession().getAttribute("id"), req.getParameter("password"));
		if(un_check == 1 && req.getParameter("password").equals(req.getParameter("re_password"))) {
			req.getSession().invalidate();
			return "/JSP/unregister_good.jsp";
		}else {
			req.setAttribute("un_check", un_check);
			return "/unregister.do";
		}
		
	}

}
