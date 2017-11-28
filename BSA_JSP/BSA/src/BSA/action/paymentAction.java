package BSA.action;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
		
		
		
		if(req.getParameter("where_trip").equals("편도")) {
			if(req.getParameter("where_from").equals("Busan (부산)")) {
				if(req.getParameter("bus_time_pickup").equals("")) {
					req.setAttribute("bus_time_pickup_check", 1);
					return "/JSP/payment.jsp";
				}
			}
			else if(req.getParameter("where_from").equals("Gimhean Airporter(김해공항)")) {
				if(req.getParameter("bus_time_dropft").equals("")) {
					req.setAttribute("bus_time_dropft_check", 1);
					return "/JSP/payment.jsp";
				}
			}
		}
		else if(req.getParameter("where_trip").equals("왕복")) {
				if(req.getParameter("bus_time_pickup").equals("")) {
					req.setAttribute("bus_time_pickup_check", 1);
					return "/JSP/payment.jsp";
				}
				else if(req.getParameter("bus_time_dropft").equals("")) {
					req.setAttribute("bus_time_dropft_check", 1);
					return "/JSP/payment.jsp";
				}
		}
		
		if(req.getParameter("first_name").equals("")) {
			req.setAttribute("first_name_check", 1);
			return "/JSP/payment.jsp";
		}
		if(req.getParameter("last_name").equals("")) {
			req.setAttribute("last_name_check", 1);
			return "/JSP/payment.jsp";
		}
		if(req.getParameter("phone").equals("")) {
			req.setAttribute("phone_check", 1);
			return "/JSP/payment.jsp";
		}
		else {
			if(req.getParameter("phone").length() <= 13 && req.getParameter("phone").length() >= 11) {
				int cumcheck = 0;
				for(int i=0; i<req.getParameter("phone").length(); i++) {
					char phone = req.getParameter("phone").charAt(i);
					
					if(phone >= 0x30 && phone <= 0x39) {
						
					}
					else if(phone == 0x2D && cumcheck < 2) {
						++cumcheck;
					}
					else {
						req.setAttribute("phone_check", 2);
						return "/JSP/payment.jsp";
					}
				}
			}
			else {
				req.setAttribute("phone_check", 2);
				return "/JSP/payment.jsp";
			}
		}
		
		if(req.getParameter("email").equals("")) {
			req.setAttribute("email_check", 1);
			return "/JSP/payment.jsp";
		}
		else {
			int jumcheck = 0;
			int guncheck = 0;
			for(int i=0; i<req.getParameter("email").length(); i++) {
				char email = req.getParameter("email").charAt(i);
				
				if(email >= 0x30 && email <= 0x39) {
					
				}
				else if(email >= 0x41 && email <= 0x5A) {
					
				}
				else if(email >= 0x61 && email <=0x7A) {
					
				}
				else if(email == 0x40 && guncheck == 0) {
					++guncheck;
				}
				else if(email == 0x2E && jumcheck == 0) {
					++jumcheck;
				}
				else {
					req.setAttribute("email_check", 2);
				}
			}
		}
		
		if(req.getParameter("name_on_card").equals("")) {
			req.setAttribute("name_on_card_check", 1);
			return "/JSP/payment.jsp";
		}
		
		if(req.getParameter("card_number").equals("")) {
			req.setAttribute("card_number_check", 1);
			return "/JSP/payment.jsp";
		}
		else {
			if(req.getParameter("card_number").length() == 19) {
				int cumcheck = 0;
				for(int i=0; i<req.getParameter("card_number").length(); i++) {
					char card_number = req.getParameter("card_number").charAt(i);
					if(card_number >= 0x30 && card_number <= 0x39) {
						
					}
					else if(card_number == 0x2D && cumcheck < 3) {
						++cumcheck;
					}
					else {
						req.setAttribute("card_number_check", 2);
						return "/JSP/payment.jsp";
					}
				}
			}
			else {
				req.setAttribute("card_number_check", 2);
				return "/JSP/payment.jsp";
			}
		}
		
		if(req.getParameter("expiry_year").equals("")) {
			req.setAttribute("expiry_year_check", 1);
			return "/JSP/payment.jsp";
		}
		if(req.getParameter("expiry_month").equals("")) {
			req.setAttribute("expiry_month_check", 1);
			return "/JSP/payment.jsp";
		}
		if(req.getParameter("csv_number").equals("")) {
			req.setAttribute("csv_number_check", 1);
			return "/JSP/payment.jsp";
		}
		else {
			if(req.getParameter("csv_number").length() == 3) {
				for(int i=0; i<req.getParameter("csv_number").length(); i++) {
					char csv_number = req.getParameter("csv_number").charAt(i);
					
					if(csv_number >= 0x30 && csv_number <= 0x39) {
						
					}
					else {
						req.setAttribute("csv_number_check", 2);
						return "/JSP/payment.jsp";
					}
				}
			}
			else {
				req.setAttribute("csv_number_check", 2);
				return "/JSP/payment.jsp";
			}
		}
		
		if(req.getParameter("comm").equals("")) {
			req.setAttribute("comm_check", 1);
			return "/JSP/payment.jsp";
		}
		
		
		req.getSession().invalidate();
		if(req.getSession().getAttribute("id") != null && req.getSession().getAttribute("id").equals("")) {
			String id = (String)req.getSession().getAttribute("id");
			req.getSession().setAttribute("id", id);
		}
		
		
		return "/JSP/payment_check.jsp";
	}
	
}
