package BSA.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BSA.model.BookingDao;
import BSA.model.BookingDto;

public class paymentAction implements CommandAction{

	@Override
	public String requestPro(HttpServletRequest req, HttpServletResponse resp) throws Throwable {
		req.setCharacterEncoding("UTF-8");
		req.setAttribute("first_name", req.getParameter("first_name"));
		req.setAttribute("last_name", req.getParameter("last_name"));
		req.setAttribute("phone", req.getParameter("phone"));
		req.setAttribute("email", req.getParameter("email"));
		req.setAttribute("where_trip", req.getParameter("where_trip"));
		req.setAttribute("where_from", req.getParameter("where_from"));
		req.setAttribute("where_to", req.getParameter("where_to"));
		req.setAttribute("pickup", req.getParameter("pickup"));
		req.setAttribute("start_airline_name", req.getParameter("start_airline_name"));
		req.setAttribute("start_airline_no", req.getParameter("start_airline_no"));
		req.setAttribute("start_airline_time", req.getParameter("start_airline_time"));
		req.setAttribute("start_date", req.getParameter("start_date"));
		req.setAttribute("dropft", req.getParameter("dropft"));
		req.setAttribute("arrival_airline_name", req.getParameter("arrival_airline_name"));
		req.setAttribute("arrival_airline_no", req.getParameter("arrival_airline_no"));
		req.setAttribute("arrival_airline_time", req.getParameter("arrival_airline_time"));
		req.setAttribute("arrival_date", req.getParameter("arrival_date"));
		req.setAttribute("adults", req.getParameter("adults"));
		req.setAttribute("young", req.getParameter("young"));
		req.setAttribute("child", req.getParameter("child"));
		req.setAttribute("infatns", req.getParameter("infatns"));
		req.setAttribute("name_on_card", req.getParameter("name_on_card"));
		req.setAttribute("card_number", req.getParameter("card_number"));
		req.setAttribute("expiry_year", req.getParameter("expiry_year"));
		req.setAttribute("expiry_month", req.getParameter("expiry_month"));
		req.setAttribute("csv_number", req.getParameter("csv_number"));
		req.setAttribute("comm", req.getParameter("comm"));
		req.setAttribute("bus_time_pickup", req.getParameter("bus_time_pickup"));
		req.setAttribute("bus_time_dropft", req.getParameter("bus_time_dropft"));
		req.setAttribute("money", req.getParameter("money"));
		
		return "/JSP/payment_check.jsp";
	}
	
}
