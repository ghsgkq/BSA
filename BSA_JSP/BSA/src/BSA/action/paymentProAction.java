package BSA.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BSA.model.BookingDao;
import BSA.model.BookingDto;

public class paymentProAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest req, HttpServletResponse resp) throws Throwable {
		req.setCharacterEncoding("UTF-8");
		BookingDto bdto = new BookingDto();
		bdto.setFirst_name(req.getParameter("first_name"));
		bdto.setLast_name(req.getParameter("last_name"));
		bdto.setPhone(req.getParameter("phone"));
		bdto.setEmail(req.getParameter("email"));
		bdto.setWhere_trip(req.getParameter("where_trip"));
		bdto.setWhere_from(req.getParameter("where_from"));
		bdto.setWhere_to(req.getParameter("where_to"));
		bdto.setPickup(req.getParameter("pickup"));
		bdto.setDropft(req.getParameter("dropft"));
		bdto.setStart_airline_name(req.getParameter("start_airline_name"));
		bdto.setStart_airline_no(req.getParameter("start_airline_no"));
		bdto.setStart_airline_time(req.getParameter("start_airline_time"));
		bdto.setArrival_airline_name(req.getParameter("arrival_airline_name"));
		bdto.setArrival_airline_no(req.getParameter("arrival_airline_no"));
		bdto.setArrival_airline_time(req.getParameter("arrival_airline_time"));
		bdto.setBus_time_pickup(req.getParameter("bus_time_pickup"));
		bdto.setBus_time_dropft(req.getParameter("bus_time_dropft"));
		bdto.setStart_date(req.getParameter("start_date"));
		bdto.setArrival_date(req.getParameter("arrival_date"));
		bdto.setAdults(req.getParameter("adults"));
		bdto.setYoung(req.getParameter("young"));
		bdto.setChild(req.getParameter("child"));
		bdto.setInfatns(req.getParameter("infatns"));
		bdto.setName_on_card(req.getParameter("name_on_card"));
		bdto.setCard_number(req.getParameter("card_number"));
		bdto.setExpiry_year(req.getParameter("expiry_year"));
		System.out.println(req.getParameter("expiry_month"));
		bdto.setExpiry_month(req.getParameter("expiry_month"));
		bdto.setCsv_number(req.getParameter("csv_number"));
		bdto.setComm(req.getParameter("comm"));
		BookingDao bdao = BookingDao.getInstance();
		bdao.Bookinginsert(bdto);
		return "/JSP/index.jsp";
	}
	
}
