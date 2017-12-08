package BSA.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class BookingAction implements CommandAction{

	@Override
	public String requestPro(HttpServletRequest req, HttpServletResponse resp) throws Throwable {
		String id = null;
		if(req.getSession().getAttribute("id") == null) {
			
		}
		else {
			id = (String)req.getSession().getAttribute("id");
		}
		req.getSession().invalidate();
		req.getSession().setAttribute("id", id);	
		
		String where_trip=req.getParameter("where_trip");
		String where_from =req.getParameter("where_from");
		String where_to=req.getParameter("where_to");
		String pickup=req.getParameter("pickup");
		String dropft=req.getParameter("dropft");
		String start_airline_name=req.getParameter("start_airline_name");
		String start_airline_no=req.getParameter("start_airline_no");
		String start_airline_time=req.getParameter("start_airline_time");
		String arrival_airline_name=req.getParameter("arrival_airline_name");
		String arrival_airline_no=req.getParameter("arrival_airline_no");
		String arrival_airline_time=req.getParameter("arrival_airline_time");
		String start_date=req.getParameter("start_date");
		String arrival_date=req.getParameter("arrival_date");
		String adults=req.getParameter("adults");
		String young=req.getParameter("young");
		String child=req.getParameter("child");
		String infatns=req.getParameter("infatns");
		String trip=req.getParameter("trip");
		
		
		req.setAttribute("where_trip", where_trip);
		req.setAttribute("where_from", where_from);
		req.setAttribute("where_to", where_to);
		req.setAttribute("pickup", pickup);
		req.setAttribute("dropft", dropft);
		req.setAttribute("start_airline_name", start_airline_name);
		req.setAttribute("start_airline_no", start_airline_no);
		req.setAttribute("start_airline_time", start_airline_time);
		req.setAttribute("arrival_airline_name", arrival_airline_name);
		req.setAttribute("arrival_airline_no", arrival_airline_no);
		req.setAttribute("arrival_airline_time", arrival_airline_time);
		req.setAttribute("start_date", start_date);
		req.setAttribute("arrival_date", arrival_date);
		req.setAttribute("adults", adults);
		req.setAttribute("young", young);
		req.setAttribute("child", child);
		req.setAttribute("infatns", infatns);
		req.setAttribute("trip", trip);
		
		
		
		return "/JSP/Booking.jsp";
	}

}
