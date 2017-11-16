package BSA.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class BookingAction implements CommandAction{

	@Override
	public String requestPro(HttpServletRequest req, HttpServletResponse resp) throws Throwable {
		
		String from =req.getParameter("from");
		String to=req.getParameter("to");
		String pickup=req.getParameter("pickup");
		String dropft=req.getParameter("dropft");
		String start_airline_name=req.getParameter("start_airline_name");
		String start_airline_no=req.getParameter("start_airline_no");
		String start_flight_time=req.getParameter("start_flight_time");
		String arrival_airline_name=req.getParameter("arrival_airline_name");
		String arrival_airline_no=req.getParameter("arrival_airline_no");
		String arrival_airline_time=req.getParameter("arrival_airline_time");
		String start_date=req.getParameter("start_date");
		String arrival_date=req.getParameter("arrival_date");
		String adults=req.getParameter("adults");
		String young=req.getParameter("young");
		String child=req.getParameter("child");
		String infatns=req.getParameter("infatns");
		
		
		
		req.setAttribute("from", from);
		req.setAttribute("to", to);
		req.setAttribute("pickup", pickup);
		req.setAttribute("dropft", dropft);
		req.setAttribute("start_airline_name", start_airline_name);
		req.setAttribute("start_airline_no", start_airline_no);
		req.setAttribute("start_flight_time", start_flight_time);
		req.setAttribute("arrival_airline_name", arrival_airline_name);
		req.setAttribute("arrival_airline_no", arrival_airline_no);
		req.setAttribute("arrival_airline_time", arrival_airline_time);
		req.setAttribute("start_date", start_date);
		req.setAttribute("arrival_date", arrival_date);
		req.setAttribute("adults", adults);
		req.setAttribute("young", young);
		req.setAttribute("child", child);
		req.setAttribute("infatns", infatns);
		
		
		
		return "/JSP/Booking.jsp";
	}

}
