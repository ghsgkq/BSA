package BSA.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BSA.model.memberDto;

public class CheckingBookedAction implements CommandAction{

	@Override
	public String requestPro(HttpServletRequest req, HttpServletResponse resp) throws Throwable {
		if(req.getSession().getAttribute("id") != null) {
			
		}
		
		return "/JSP/Checking_Booked.jsp";
	}

}
