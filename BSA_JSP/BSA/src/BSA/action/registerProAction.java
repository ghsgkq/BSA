package BSA.action;

import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BSA.model.memberDao;
import BSA.model.memberDto;

public class registerProAction implements CommandAction {
	@Override
	public String requestPro(HttpServletRequest req, HttpServletResponse resp) throws Throwable {
		String id = req.getParameter("id");
		String password = req.getParameter("password");
		String email = req.getParameter("email");
		String re_password = req.getParameter("re-password");
		String code = null;
		Random ran = new Random();
		// 1: ���̵� �Է� x  
		// 2: ��й�ȣ �Է� x
		// 3: ��й�ȣȮ�� �Է� x
		// 4: �̸��� �Է� x
		// 5: �̸���Ȯ�ζ� üũ x
		// 6: ��й�ȣ ��й�ȣȮ�� ���� ����
		if(req.getParameter("id").equals("") || req.getParameter("password").equals("") || req.getParameter("re-password").equals("") || req.getParameter("email").equals("") || req.getParameter("what").equals("") || !(req.getParameter("password").equals(req.getParameter("re-password")))) {
			if(req.getParameter("id").equals("")) {
				req.setAttribute("anser", 1);
			}
			
			else if(req.getParameter("password").equals("")) {
				req.setAttribute("anser", 2);
			}
			
			else if(req.getParameter("re-password").equals("")) {
				req.setAttribute("anser", 3);
			}
			
			else if(req.getParameter("email").equals("")) {
				req.setAttribute("anser", 4);
			}
			
			else if(req.getParameter("what").equals("")) {
				req.setAttribute("anser", 5);
			}
			else if(!(req.getParameter("password").equals(req.getParameter("re-password")))) {
				req.setAttribute("anser", 6);
			}
			
			
			if(id==null) {
				id="";
			}
			if(password==null) {
				password="";
			}
			if(email==null) {
				email="";
			}
			req.setAttribute("id", id);
			req.setAttribute("password", password);
			req.setAttribute("email", email);
			return "/JSP/register.jsp";
		}
		if(req.getParameter("anser_code") != null) {
			if(req.getParameter("code").equals(req.getParameter("anser_code"))) {
				memberDao mdao = memberDao.getInstance();
				memberDto mdto = new memberDto();
				
				mdto.setId(req.getParameter("id"));
				mdto.setPassword(req.getParameter("password"));
				mdto.setEmail(req.getParameter("email"));
				mdao.memberRegister(mdto);
				return "/JSP/index.jsp";
			}
		}
		
			for(int i=0; i<7; i++) {
				code+=ran.nextInt(9);
			}
			req.setAttribute("id", id);
			req.setAttribute("password", password);
			req.setAttribute("re-password", re_password);
			req.setAttribute("email", email);
			req.setAttribute("code", code);
			return "/emailsend.do";
		
		
		
	}
	
}
