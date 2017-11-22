package BSA.action;



import java.util.ArrayList;

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
		req.setCharacterEncoding("UTF-8");
		if(req.getSession().getAttribute("id") == null) {
			
		}else {
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
		
		if(!(req.getParameter("start_airline_time").equals(""))) {
			String time = "";
			for(int i=0; i<2; i++) {
				if(req.getParameter("start_airline_time").charAt(i) != '0') {
					time += req.getParameter("start_airline_time").charAt(i);
				}
			}
		
			int start_time = Integer.parseInt(time);
			ArrayList<String> start_time_list = new ArrayList<String>();
			for(int i = 0; i<start_time; i++) {
				String start_times ="";
				if(i<10) {
					start_times += "0";
				}
				start_times += i+":00";
				start_time_list.add(start_times);
			}
			req.setAttribute("start_time_list", start_time_list);
		}
		
		
		if(!(req.getParameter("arrival_airline_time").equals(""))) {
			String time = "";
			for(int i=0; i<2; i++) {
				if(req.getParameter("arrival_airline_time").charAt(i) != '0') {
					time += req.getParameter("arrival_airline_time").charAt(i);
				}
			}
			int arrival_time = Integer.parseInt(time);
			ArrayList<String> arrival_time_list = new ArrayList<String>();
			for(int i=arrival_time; i<24; i++) {
				String arrival_times = "";
				if(i<10) {
					arrival_times += "0";
				}
				arrival_times += i+":00";
				arrival_time_list.add(arrival_times);
			}
			
			req.setAttribute("arrival_time_list", arrival_time_list);
		}
		
		return "/JSP/payment.jsp";
		
		
		
		
	}

}
