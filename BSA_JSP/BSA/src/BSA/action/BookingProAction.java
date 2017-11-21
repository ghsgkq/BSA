package BSA.action;



import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BSA.model.BookingDao;
import BSA.model.BookingDto;
import BSA.model.memberDao;
import BSA.model.memberDto;


public class BookingProAction implements CommandAction{

	@Override
	public String requestPro(HttpServletRequest req, HttpServletResponse resp) throws Throwable {
		// TODO Auto-generated method stub
		int idcheck =0;
		req.setCharacterEncoding("UTF-8");
		if(req.getSession().getAttribute("id") == null) {
			
		}else {
			idcheck = 1;
			memberDto mdto = memberDao.getInstance().getmember((String)req.getSession().getAttribute("id"));
			req.getSession().setAttribute("first_name", mdto.getFirst_name());
			req.getSession().setAttribute("last_name", mdto.getLast_name());
			req.getSession().setAttribute("phone", mdto.getPhone());
			req.getSession().setAttribute("email", mdto.getEmail());
			
		}
		req.getSession().setAttribute("where_trip", req.getParameter("where_trip"));
		req.getSession().setAttribute("where_from", req.getParameter("where_from"));
		req.getSession().setAttribute("where_to", req.getParameter("where_to"));
		req.getSession().setAttribute("pickup", req.getParameter("pickup"));
		req.getSession().setAttribute("start_airline_name", req.getParameter("start_airline_name"));
		req.getSession().setAttribute("start_airline_no", req.getParameter("start_airline_no"));
		req.getSession().setAttribute("start_airline_time", req.getParameter("start_airline_time"));
		req.getSession().setAttribute("start_date", req.getParameter("start_date"));
		req.getSession().setAttribute("dropft", req.getParameter("dropft"));
		req.getSession().setAttribute("arrival_airline_name", req.getParameter("arrival_airline_name"));
		req.getSession().setAttribute("arrival_airline_no", req.getParameter("arrival_airline_no"));
		req.getSession().setAttribute("arrival_airline_time", req.getParameter("arrival_airline_time"));
		req.getSession().setAttribute("arrival_date", req.getParameter("arrival_date"));
		return "/JSP/Booking_pro.jsp";
		
		
		
		
	}

}
