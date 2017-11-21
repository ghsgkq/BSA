package BSA.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BSA.model.BookingDao;
import BSA.model.BookingDto;

public class paymentAction implements CommandAction{

	@Override
	public String requestPro(HttpServletRequest req, HttpServletResponse resp) throws Throwable {
		BookingDto bdto = new BookingDto();
		String id = (String)req.getSession().getAttribute("id");
		bdto.setFirst_name(req.getParameter("first_name"));
		bdto.setLast_name(req.getParameter("last_name"));
		bdto.setPhone(req.getParameter("phone"));
		bdto.setEmail(req.getParameter("email"));
		bdto.setWhere_trip((String)req.getSession().getAttribute("where_trip"));
		bdto.setWhere_from((String)req.getSession().getAttribute("where_from"));
		bdto.setWhere_to((String)req.getSession().getAttribute("where_to"));
		bdto.setPickup((String)req.getSession().getAttribute("pickup"));
		bdto.setDropft((String)req.getSession().getAttribute("dropft"));
		bdto.setStart_airline_name((String)req.getSession().getAttribute("start_airline_name"));
		bdto.setStart_airline_no((String)req.getSession().getAttribute("start_airline_no"));
		bdto.setStart_airline_time((String)req.getSession().getAttribute("start_airline_time"));
		bdto.setArrival_airline_name((String)req.getSession().getAttribute("arrival_airline_name"));
		bdto.setArrival_airline_no((String)req.getSession().getAttribute("arrival_airline_no"));
		bdto.setArrival_airline_time((String)req.getSession().getAttribute("arrival_airline_time"));
		bdto.setStart_date((String)req.getSession().getAttribute("start_date"));
		bdto.setArrival_date((String)req.getSession().getAttribute("arrival_date"));
		bdto.setAdults((String)req.getSession().getAttribute("adults"));
		bdto.setYoung((String)req.getSession().getAttribute("young"));
		bdto.setChild((String)req.getSession().getAttribute("child"));
		bdto.setInfatns(req.getParameter("name_on_card"));
		bdto.setCard_number(req.getParameter("card_number"));
		bdto.setExpiry_year(req.getParameter("expiry_year"));
		bdto.setExpiry_month(req.getParameter("expiry_month"));
		bdto.setCsv_number(req.getParameter("csv_number"));
		bdto.setComm(req.getParameter("comm"));
		req.getSession().invalidate();
		req.getSession().setAttribute("id", id);
		
		
		
		return "/JSP/payment_check.jsp";
	}
	
}
