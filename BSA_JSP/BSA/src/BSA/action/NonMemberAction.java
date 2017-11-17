package BSA.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BSA.model.CreditCardDao;
import BSA.model.CreditCardDto;
import BSA.model.NonMemberDao;
import BSA.model.NonMemberDto;

public class NonMemberAction implements CommandAction{
	public String requestPro(HttpServletRequest request, HttpServletResponse response)throws Throwable{
		request.setCharacterEncoding("UTF-8");
		
		
		String first_name = request.getParameter("first_name");
		String last_name = request.getParameter("last_name");
		String phone_number = request.getParameter("phone_number");
		String email_address = request.getParameter("email_address");
		String comment = request.getParameter("comment");
		String name_on_card = request.getParameter("name_on_card");
		String card_number = request.getParameter("card_number");
		String expiry_year = request.getParameter("expiry_year");
		String expiry_month = request.getParameter("expiry_month");
		String csv_number = request.getParameter("csv_number");
		
		request.setAttribute("first_name", first_name);
		request.setAttribute("last_name", last_name);
		request.setAttribute("phone_number", phone_number);
		request.setAttribute("email_address", email_address);
		request.setAttribute("comment", comment);
		request.setAttribute("name_on_card", name_on_card);
		request.setAttribute("card_number", card_number);
		request.setAttribute("expiry_year", expiry_year);
		request.setAttribute("expiry_month", expiry_month);
		request.setAttribute("csv_number", csv_number);
		
		return "/JSP/payment.jsp";
		
	}
}
