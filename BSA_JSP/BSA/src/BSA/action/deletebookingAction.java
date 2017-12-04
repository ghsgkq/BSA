package BSA.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BSA.model.BookingDao;
import BSA.model.memberDao;
import BSA.model.memberDto;

public class deletebookingAction implements CommandAction{

	@Override
	public String requestPro(HttpServletRequest req, HttpServletResponse resp) throws Throwable {

		if(req.getParameter("password") != null && req.getSession().getAttribute("id") != null) {
			memberDao mdao = memberDao.getInstance();
			memberDto mdto = mdao.getmember((String)req.getSession().getAttribute("id"));
			if(req.getParameter("password").equals(mdto.getPassword())) {
				BookingDao dao = BookingDao.getInstance();
				dao.removeBooking(req.getParameter("code"));
				req.setAttribute("deletebooking", 1);
			}
			else {
				req.setAttribute("deletebooking_password", 1);
			}
		}
		else if(req.getParameter("newcode") != null) {
			if(req.getParameter("code").equals(req.getParameter("newcode"))) {
				BookingDao dao = BookingDao.getInstance();
				dao.removeBooking(req.getParameter("code"));
				req.setAttribute("deletebooking", 1);
			}
			else {
				req.setAttribute("deletebooking_code", 1);
			}
		}
		
		req.setAttribute("email", req.getParameter("email"));
		return "/JSP/Checking_Booked.jsp";
	}
	
}
