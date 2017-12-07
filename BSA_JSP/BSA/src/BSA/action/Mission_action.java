package BSA.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BSA.model.AdminBookingDto;
import BSA.model.AdminDao;

public class Mission_action implements CommandAction{

	@Override
	public String requestPro(HttpServletRequest req, HttpServletResponse resp) throws Throwable {
		// TODO Auto-generated method stub
		
		req.setCharacterEncoding("UTF-8");

		AdminDao adao = AdminDao.getInstance();
		adao.change_mission(("미션완료"), req.getParameter("code"));
		
		
		req.setAttribute("pageNum", req.getParameter("pageNum"));
		return "/JSP/memberbookingpro.jsp";
		
		
	}

}
