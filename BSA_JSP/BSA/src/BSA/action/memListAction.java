package BSA.action;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BSA.model.BookingDao;
import BSA.model.BookingDto;


public class memListAction implements CommandAction{
	public String requestPro(HttpServletRequest req, HttpServletResponse resp)throws Throwable{
		ArrayList<BookingDto> ar = new ArrayList<BookingDto>();
		
		int count = 0;
		
		List<BookingDto> articleList = null;
		BookingDao dbPro = BookingDao.getInstance();
		count = dbPro.getArticleCount();
		articleList = dbPro.getArticles();
	
		
		
		
		req.setAttribute("articleList", articleList);
		
		return "/JSP/memberbooking.jsp";
	}
	
	
	

}
