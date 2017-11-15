package BSA.action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BSA.model.memberDao;

public class idCheckAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest req, HttpServletResponse resp) throws Throwable {
		String id = req.getParameter("id");
		ArrayList<String> ids = memberDao.getInstance().memberGetId();
		int idcheck = 1;
		
		if(ids != null) {
			for(int i=0; i<ids.size(); i++) {
				System.out.println(ids.get(i));
				if(id.equals(ids.get(i))) {
					idcheck=0;
				}
			}
		}
		
		if(idcheck == 1) {
			req.setAttribute("id", id);
		}
		req.setAttribute("idcheck", idcheck);
		return "/JSP/register.jsp";
	}
	
}
