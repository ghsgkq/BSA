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
		String pageNum=req.getParameter("pageNum");
		
		
		AdminDao dbPro= AdminDao.getInstance();
		int check= dbPro.deleteArticle(code);
		dbPro.deleteArticle(req.getParameter("code"));
	
		
		req.setAttribute("pageNum", new Integer(pageNum));
		req.setAttribute("check", new Integer(check));
		
		return "/JSP/memberbooking.jsp";
	}
		
	
}
