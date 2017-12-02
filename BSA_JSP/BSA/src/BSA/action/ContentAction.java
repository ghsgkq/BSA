package BSA.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BSA.model.AdminDao;
import BSA.model.BookingDto;


public class ContentAction implements CommandAction{

	@Override
	public String requestPro(HttpServletRequest req, HttpServletResponse resp) throws Throwable {
		
		//해당 글 코드
	
		
		return "/JSP/Content.jsp";
		
	
	}
	
	
	
}
