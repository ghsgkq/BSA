package BSA.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BSA.model.CreditCardDao;
import BSA.model.CreditCardDto;
import BSA.model.NonMemberDao;
import BSA.model.NonMemberDto;

public class PaymentAction implements CommandAction{
	public String requestPro(HttpServletRequest request, HttpServletResponse response)throws Throwable{
		request.setCharacterEncoding("UTF-8");
		
		
		String first_name = request.getParameter("first_name");
		String last_name = request.getParameter("last_name");
		String phone_number = request.getParameter("phone_number");
		String email_address = request.getParameter("email_address");
		String comment = request.getParameter("comment");
		
		request.setAttribute("first_name", first_name);
		request.setAttribute("last_name", last_name);
		request.setAttribute("phone_number", phone_number);
		request.setAttribute("email_address", email_address);
		request.setAttribute("comment", comment);
		
		return "/JSP/payment.jsp";
		
	}
}
