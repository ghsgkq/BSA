package BSA.action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BSA.model.BookingDao;
import BSA.model.BookingDto;

public class checkBookedProAction implements CommandAction{

	@Override
	public String requestPro(HttpServletRequest req, HttpServletResponse resp) throws Throwable {
			ArrayList<BookingDto> arrbdto = new ArrayList<BookingDto>();
			arrbdto = BookingDao.getInstance().getBooking(req.getParameter("email"),Integer.parseInt(req.getParameter("tripcheck")));
			req.setAttribute("tripcheck", req.getParameter("tripcheck"));
			req.setAttribute("arrbdto", arrbdto);
			req.setAttribute("email", req.getParameter("email"));
		return "/JSP/Checking_Booked.jsp";
	}
	
}
