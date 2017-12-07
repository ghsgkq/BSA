package BSA.action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BSA.model.AdminBookingDto;
import BSA.model.AdminDao;
import BSA.model.AdminDto;
import BSA.model.BookingDao;
import BSA.model.BookingDto;


public class ContentAction implements CommandAction{

	@Override
	public String requestPro(HttpServletRequest req, HttpServletResponse resp) throws Throwable {
		
		
		String code=req.getParameter("code");
		String pageNum = req.getParameter("pageNum");
		AdminDao dbPro=AdminDao.getInstance();
		
		AdminBookingDto article= dbPro.getArticle(code);
		req.setAttribute("code", code);
		req.setAttribute("article", article);
		return "/JSP/Content.jsp";
		
	
	}
	
	
	
}
