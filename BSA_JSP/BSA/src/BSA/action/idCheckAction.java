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
				if(id.equals(ids.get(i))) {
					idcheck=0;
				}
			}
		}
		
		if(idcheck == 1) {
			char chin;
			if(id.length()<=15 && id.length()>=5) {
				for(int i=0; i<id.length(); i++) {
					chin = id.charAt(i);
					if(chin >= 0x61 && chin<= 0x7A) {
						//영문(소문자) 
					}
					else if(chin >= 0x30 && chin <= 0x39) {
						//숫자 
					}
					else {
						req.setAttribute("first_name", req.getParameter("first_name"));
						req.setAttribute("last_name", req.getParameter("last_name"));
						req.setAttribute("phone", req.getParameter("phone"));
						req.setAttribute("password", req.getParameter("password"));
						req.setAttribute("email", req.getParameter("email"));
						req.setAttribute("idcheck", 2);
						return "/JSP/register.jsp";
					}
					
				}
				
				req.setAttribute("id", id);
			}else {
				req.setAttribute("first_name", req.getParameter("first_name"));
				req.setAttribute("last_name", req.getParameter("last_name"));
				req.setAttribute("phone", req.getParameter("phone"));
				req.setAttribute("password", req.getParameter("password"));
				req.setAttribute("email", req.getParameter("email"));
				req.setAttribute("idcheck", 2);
				return "/JSP/register.jsp";
			}
			
		}
		req.setAttribute("first_name", req.getParameter("first_name"));
		req.setAttribute("last_name", req.getParameter("last_name"));
		req.setAttribute("phone", req.getParameter("phone"));
		req.setAttribute("id", id);
		req.setAttribute("password", req.getParameter("password"));
		req.setAttribute("email", req.getParameter("email"));
		req.setAttribute("idcheck", idcheck);
		return "/JSP/register.jsp";
	}
	
}
