package BSA.action;



import java.text.DecimalFormat;
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
		int money=0;
		if(req.getSession().getAttribute("id") == null) {
			
		}else {
			memberDto mdto = memberDao.getInstance().getmember((String)req.getSession().getAttribute("id"));
			
			req.setAttribute("first_name", mdto.getFirst_name());
			req.setAttribute("last_name", mdto.getLast_name());
			req.setAttribute("phone", mdto.getPhone());
			req.setAttribute("email", mdto.getEmail());
			
		}
		
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
		
		
		if(req.getParameter("where_trip").equals("왕복")) {
			money = (Integer.parseInt(req.getParameter("adults"))*35000)
					+(Integer.parseInt(req.getParameter("young"))*25000)
					+(Integer.parseInt(req.getParameter("child"))*15000);
		}
		else if(req.getParameter("where_trip").equals("편도")) {
			money = (Integer.parseInt(req.getParameter("adults"))*20000)
					+(Integer.parseInt(req.getParameter("young"))*15000)
					+(Integer.parseInt(req.getParameter("child"))*10000);
		}
		DecimalFormat df = new DecimalFormat("#,###원");
		req.setAttribute("money", df.format(money));
		
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
