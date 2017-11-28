package BSA.action;



import java.util.Collections;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BSA.model.BookingDao;
import BSA.model.BookingDto;

public class MemberBookingAction implements CommandAction{
	
	
	public String requestPro(HttpServletRequest req, HttpServletResponse resp) throws Throwable{
		
		String pageNum = req.getParameter("PageNum");
		if(pageNum == null) {
			pageNum = "1";
		}
		int pageSize = 10;
		int currentPage = Integer.parseInt(pageNum);
		
		
		int startRow = (currentPage - 1) * pageSize + 1;
		int endRow = currentPage * pageSize;
		int count = 0;
		int number = 0;
		List<BookingDto> articleList = null;
		BookingDao dbPro = BookingDao.getInstance();
		count = dbPro.getArticleCount();
		if(count > 0) {
			articleList = dbPro.getArticles(startRow, endRow);
		}else {
			articleList = Collections.emptyList();
		}
		number = count - (currentPage-1) * pageSize;
		
		req.setAttribute("currentPage", new Integer(currentPage));
		req.setAttribute("startRow", new Integer(startRow));
		req.setAttribute("endRow", new Integer(endRow));
		req.setAttribute("count", new Integer(count));
		req.setAttribute("pageSize", new Integer(pageSize));
		req.setAttribute("number", new Integer(number));
		req.setAttribute("articleList", articleList);
		
		return "/JSP/memberbooking.jsp";
	}
	
}
