package BSA.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BSA.model.memberDao;
import BSA.model.memberDto;

public class CheckedBookedAction implements CommandAction{

	@Override
	public String requestPro(HttpServletRequest req, HttpServletResponse resp) throws Throwable {
		if(req.getSession().getAttribute("id") != null) {
			memberDto mdto = new memberDto();
			mdto = memberDao.getInstance().getmember((String)req.getSession().getAttribute("id"));
			req.setAttribute("email", mdto.getEmail());
		}
		
		return "/JSP/Checking_Booked.jsp";
	}

}
