package BSA.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class deletebookingAction implements CommandAction{

	@Override
	public String requestPro(HttpServletRequest req, HttpServletResponse resp) throws Throwable {
		System.out.println(req.getParameter("code"));
		return "/JSP/Checking_Booked.jsp";
	}
	
}
