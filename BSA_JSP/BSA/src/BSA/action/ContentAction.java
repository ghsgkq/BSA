package BSA.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BSA.model.AdminDao;
import BSA.model.BookingDto;

public class ContentAction implements CommandAction{

	@Override
	public String requestPro(HttpServletRequest req, HttpServletResponse resp) throws Throwable {
		
		String code = req.getParameter("code");
		
		String pageNum = req.getParameter("pageNum");
		AdminDao dbPro = AdminDao.getInstance();
		
		BookingDto article = dbPro.getArticle(code);
		
		req.setAttribute("code", code);
		req.setAttribute("pageNum", new Integer(pageNum));
		req.setAttribute("article", article);
		
		return "/JSP/content.jsp";
		
	
	}
	
	
	
}
