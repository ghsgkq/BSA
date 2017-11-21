package BSA.action;



import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BSA.model.BookingDao;
import BSA.model.BookingDto;


public class BookingProAction implements CommandAction{

	@Override
	public String requestPro(HttpServletRequest req, HttpServletResponse resp) throws Throwable {
		// TODO Auto-generated method stub
		int idcheck =0;
		req.setCharacterEncoding("UTF-8");
		if(req.getSession().getAttribute("id") == null) {
			
		}else {
			idcheck = 1;
		}
		
		return "/JSP/Booking_pro.jsp";
		
		
		
		
	}

}
