package BSA.action;

import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BSA.model.memberDao;
import BSA.model.memberDto;
import oracle.net.aso.f;
import oracle.net.aso.p;

public class registerProAction implements CommandAction {
	@Override
	public String requestPro(HttpServletRequest req, HttpServletResponse resp) throws Throwable {
		req.setCharacterEncoding("UTF-8");
		String first_name = req.getParameter("first_name");
		String last_name = req.getParameter("last_name");
		String phone = req.getParameter("phone");
		String id = req.getParameter("id");
		String password = req.getParameter("password");
		String email = req.getParameter("email");
		String re_password = req.getParameter("re_password");
		Random ran = new Random();
		// 1: 아이디 입력 x  
		// 2: 비밀번호 입력 x
		// 3: 비밀번호확인 입력 x
		// 4: 이메일 입력 x
		// 5: 이메일확인란 체크 x
		// 6: 비밀번호 비밀번호확인 맞지 않음
		if(req.getParameter("first_name").equals("") || req.getParameter("last_name").equals("") || req.getParameter("phone").equals("") || req.getParameter("id").equals("") || req.getParameter("password").equals("") || req.getParameter("re_password").equals("") || req.getParameter("email").equals("") || req.getParameter("what").equals("") || !(req.getParameter("password").equals(req.getParameter("re_password")))) {
			if(req.getParameter("first_name").equals("")) {
				req.setAttribute("anser", 1);
			}
			if(req.getParameter("last_name").equals("")) {
				req.setAttribute("anser", 2);
			}
			if(req.getParameter("phone").equals("")) {
				req.setAttribute("anser", 3);
			}
			if(req.getParameter("id").equals("")) {
				req.setAttribute("anser", 4);
			}
			
			else if(req.getParameter("password").equals("")) {
				req.setAttribute("anser", 5);
			}
			
			else if(req.getParameter("re_password").equals("")) {
				req.setAttribute("anser", 6);
			}
			
			else if(req.getParameter("email").equals("")) {
				req.setAttribute("anser", 7);
			}
			
			else if(req.getParameter("what").equals("")) {
				req.setAttribute("anser", 8);
			}
			else if(!(req.getParameter("password").equals(req.getParameter("re_password")))) {
				req.setAttribute("anser", 9);
			}
			
			if(first_name==null) {
				first_name="";
			}
			
			if(last_name==null) {
				last_name="";
			}
			if(phone==null) {
				phone="";
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
			req.setAttribute("first_name", first_name);
			req.setAttribute("last_name", last_name);
			req.setAttribute("phone", phone);
			req.setAttribute("id", id);
			req.setAttribute("password", password);
			req.setAttribute("email", email);
			return "/JSP/register.jsp";
		}
		if(req.getParameter("anser_code") != null) {
			if(req.getParameter("anser_code").equals(req.getParameter("code"))) {
				memberDao mdao = memberDao.getInstance();
				memberDto mdto = new memberDto();
				
				mdto.setFirst_name(req.getParameter("first_name"));
				mdto.setLast_name(req.getParameter("last_name"));
				mdto.setPhone(req.getParameter("phone"));
				mdto.setId(req.getParameter("id"));
				mdto.setPassword(req.getParameter("password"));
				mdto.setEmail(req.getParameter("email"));
				mdao.memberRegister(mdto);
				return "/JSP/login.jsp";
			}
		}
			String code = "";
			for(int i=0; i<7; i++) {
				code+=ran.nextInt(9);
			}
			
			req.setAttribute("code", code);
			
			return "/emailsend.do";
		
		
		
	}
	
}
