package BSA.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BSA.model.AdminDao;
import BSA.model.BookingDao;

public class AdminBookingDelAction implements CommandAction{

	@Override
	public String requestPro(HttpServletRequest req, HttpServletResponse resp) throws Throwable {
		
		
		req.setCharacterEncoding("UTF-8");
		String code= req.getParameter("code");
		
		AdminDao dbPro= AdminDao.getInstance();
		dbPro.deleteArticle(req.getParameter("code"));
		req.setAttribute("delete", 1);
		
		
		return "/JSP/memberbooking.jsp";
	}
		
	
}
