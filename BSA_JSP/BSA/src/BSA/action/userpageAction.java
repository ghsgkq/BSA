package BSA.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BSA.model.memberDao;
import BSA.model.memberDto;

public class userpageAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest req, HttpServletResponse resp) throws Throwable {
		String id = (String)req.getSession().getAttribute("id");
		memberDao mdao = memberDao.getInstance();
		memberDto mdto = mdao.getmember(id);
		req.setAttribute("first_name", mdto.getFirst_name());
		req.setAttribute("last_name", mdto.getLast_name());
		req.setAttribute("email", mdto.getEmail());
		req.setAttribute("phone", mdto.getPhone());
		req.setAttribute("check", req.getAttribute("check"));
		
		return "/JSP/userpage.jsp";
	}
	
}
