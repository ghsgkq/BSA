package BSA.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BSA.model.AdminDao;
import BSA.model.BookingDao;


public class AdminBookingDelAction implements CommandAction{

	@Override
	public String requestPro(HttpServletRequest req, HttpServletResponse resp) throws Throwable {
		
		
		req.setCharacterEncoding("UTF-8");
		try {
			AdminDao.getInstance().deleteArticle(req.getParameter("code"));
		}catch(Exception e) {
			e.printStackTrace();
		}

			return "/memberbooking.do?pageNum="+req.getParameter("pageNum"); //酉� 寃쎈줈
			
	}
		
	
}
