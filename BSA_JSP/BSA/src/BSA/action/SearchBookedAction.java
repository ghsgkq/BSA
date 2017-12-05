package BSA.action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BSA.model.AdminDao;
import BSA.model.BookingDto;

public class SearchBookedAction implements CommandAction{

	@Override
	public String requestPro(HttpServletRequest req, HttpServletResponse resp) throws Throwable {
		ArrayList<BookingDto> bdto = new ArrayList<BookingDto>();
		bdto = AdminDao.getInstance().getBooking(req.getParameter("email"));
		req.setAttribute("bdto", bdto);
		req.setAttribute("email", req.getParameter("email"));
		return "/JSP/AdminSearch.jsp";
	}

}
