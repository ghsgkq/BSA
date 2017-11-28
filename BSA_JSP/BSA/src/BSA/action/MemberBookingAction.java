package BSA.action;



import java.util.Collections;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BSA.model.BookingDao;
import BSA.model.BookingDto;

public class MemberBookingAction implements CommandAction{
	
	
	public String requestPro(HttpServletRequest req, HttpServletResponse resp) throws Throwable{
		
		
		
		return "/JSP/memberbooking.jsp";
	}
	
}
