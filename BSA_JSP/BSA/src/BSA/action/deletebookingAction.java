package BSA.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BSA.model.BookingDao;

public class deletebookingAction implements CommandAction{

	@Override
	public String requestPro(HttpServletRequest req, HttpServletResponse resp) throws Throwable {
		req.setCharacterEncoding("UTF-8");
		BookingDao dao = BookingDao.getInstance();
		dao.removeBooking(req.getParameter("code"));
		return "/JSP/Checking_Booked.jsp";
	}
	
}
