package BSA.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BSA.model.CreditCardDao;
import BSA.model.CreditCardDto;

public class CreditCardAction implements CommandAction{
	public String requestPro(HttpServletRequest request, HttpServletResponse response)throws Throwable{
		request.setCharacterEncoding("UTF-8");

		String name_on_card = request.getParameter("name_on_card");
		String card_number = request.getParameter("card_number");
		String expiry_year = request.getParameter("expiry_year");
		String expiry_month = request.getParameter("expiry_month");
		String csv_number = request.getParameter("csv_number");
		
		request.setAttribute("name_on_card", name_on_card);
		request.setAttribute("card_number", card_number);
		request.setAttribute("expiry_year", expiry_year);
		request.setAttribute("expiry_month", expiry_month);
		request.setAttribute("csv_number", csv_number);
		
		return "JSP/payment.jsp";
	}
	
}
