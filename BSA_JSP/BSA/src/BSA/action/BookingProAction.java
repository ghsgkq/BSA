package BSA.action;



import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BSA.model.BookingDao;
import BSA.model.BookingDto;


public class BookingProAction implements CommandAction{

	@Override
	public String requestPro(HttpServletRequest req, HttpServletResponse resp) throws Throwable {
		// TODO Auto-generated method stub
		req.setCharacterEncoding("UTF-8");
		BookingDto article = new BookingDto();	
		article.setFrom(req.getParameter("from"));
		article.setTo(req.getParameter("to"));
		article.setPickup(req.getParameter("pickup"));
		article.setDropft(req.getParameter("dropft"));
		article.setStart_airline_name(req.getParameter("start_airline_name"));
		article.setStart_airline_no(req.getParameter("start_airline_no"));
		article.setStart_flight_time(req.getParameter("start_flight_time"));
		article.setArrival_airline_name(req.getParameter("arrival_airline_name"));
		article.setArrival_airline_no(req.getParameter("arrival_airline_no"));
		article.setArrival_airline_time(req.getParameter("arrival_airline_time"));
		article.setStart_date(req.getParameter("start_date"));
		article.setArrival_date(req.getParameter("arrival_date"));
		article.setAdults(Integer.parseInt(req.getParameter("adults")));
		article.setYoung(Integer.parseInt(req.getParameter("young")));
		article.setChild(Integer.parseInt(req.getParameter("child")));
		article.setInfatns(Integer.parseInt(req.getParameter("infatns")));

		BookingDao dbPro = BookingDao.getInstance(); 
		dbPro.Bookinginsert(article);
		
		
		
		
		return "/JSP/Booking_pro.jsp";
		
		
		
		
	}

}
