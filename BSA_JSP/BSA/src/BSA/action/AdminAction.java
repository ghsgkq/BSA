package BSA.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AdminAction implements CommandAction{

	@Override
	public String requestPro(HttpServletRequest req, HttpServletResponse resp) throws Throwable {
		// TODO Auto-generated method stub
		return "/JSP/AdminMain.jsp";
	}

}
