package BSA.action;



import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BSA.model.BookingDao;
import BSA.model.BookingDto;

public class MemberBookingAction implements CommandAction{
	
	
	public String requestPro(HttpServletRequest req, HttpServletResponse resp) throws Throwable{
		
		String pageNum = req.getParameter("PageNum");
		if(pageNum == null) {
			pageNum = "1";
		}
		int pageSize = 10;
		int currentPage = Integer.parseInt(pageNum);
		
		
		int starRow = (currentPage - 1) * pageSize + 1;
		int endRow = currentPage * pageSize;
		int count = 0;
		int number = 0;
		List<BookingDto> articlelist = null;
		BookingDao dbPro = BookingDao.getInstance();
		
	
			return "/JSP/memberBooking.jsp";
	}
	
}
