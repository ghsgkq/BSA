package BSA.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BSA.model.AdminDao;
import BSA.model.BookingDto;


public class ContentAction implements CommandAction{

	@Override
	public String requestPro(HttpServletRequest req, HttpServletResponse resp) throws Throwable {
		
		//해당 글 코드
		
		int num = Integer.parseInt(req.getParameter("code"));
		
		//�빐�떦 �럹�씠吏� 踰덊샇
		
		AdminDao dbPro = AdminDao.getInstance();
		
		//�빐�떦 湲�踰덊샇�뿉 ���븳 �젅肄붾뱶
		BookingDto article = dbPro.getArticle(num);
		
		//酉곗뿉�꽌 �궗�슜�븷 �냽�꽦
		
		req.setAttribute("article", req.getParameter("article"));
		
		return "/JSP/Content.jsp";
		
	
	}
	
	
	
}
