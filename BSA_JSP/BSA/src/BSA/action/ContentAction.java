package BSA.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BSA.model.AdminDao;
import BSA.model.BookingDto;

public class ContentAction implements CommandAction{

	@Override
	public String requestPro(HttpServletRequest req, HttpServletResponse resp) throws Throwable {
		
		//해당 글 코드
		String code = req.getParameter("code");
		
		
		AdminDao dbPro = AdminDao.getInstance();
		
		BookingDto article = dbPro.getArticle(code);
		
		
		req.setAttribute("article", article);
		
		return "/JSP/Content.jsp";
		
	
	}
	
	
	
}
