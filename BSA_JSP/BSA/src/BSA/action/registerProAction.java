package BSA.action;

import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BSA.model.memberDao;
import BSA.model.memberDto;

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
		int idcheck=0;;
		// 1: 이름 입력 x  
		// 2: 성 이름 x
		// 3: 전화번호 입력 x
		// 4: 아이디 입력 x
		// 5: 비밀번호 입력 x
		// 6: 비밀번호 확인 입력 x
		// 7: 이메일 입력 x
		// 8: 이메일확인 체크란 입력 x
		// 9: 비밀번호와 비밀번호 확인란이 같지않음 x
		// 10: 이메일코드 보냄
		// 11: 이메일 코드가 같지가 않음
		// 12: 이메일 코드까지 완성
		if(!(req.getParameter("idcheck").equals(""))) {
			idcheck = Integer.parseInt(req.getParameter("idcheck"));
		}
		if(idcheck != 0) {
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
				req.setAttribute("idcheck", idcheck);
				return "/JSP/register.jsp";
			}
		}else {
			
			req.setAttribute("first_name", first_name);
			req.setAttribute("last_name", last_name);
			req.setAttribute("phone", phone);
			req.setAttribute("id", id);
			req.setAttribute("password", password);
			req.setAttribute("re_password", re_password);
			req.setAttribute("email", email);
			req.setAttribute("idcheck", 3);
			return "/JSP/register.jsp";
		}
		
		
		if(!(req.getParameter("password").equals(req.getParameter("re_password")))) {
			req.setAttribute("anser", 9);
			req.setAttribute("first_name", first_name);
			req.setAttribute("last_name", last_name);
			req.setAttribute("phone", phone);
			req.setAttribute("id", id);
			req.setAttribute("password", password);
			req.setAttribute("email", email);
			req.setAttribute("idcheck", idcheck);
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
				req.setAttribute("anser", 12);
				return "/JSP/login.jsp";
			}else {
				req.setAttribute("first_name", first_name);
				req.setAttribute("last_name", last_name);
				req.setAttribute("phone", phone);
				req.setAttribute("id", id);
				req.setAttribute("password", password);
				req.setAttribute("re_password", re_password);
				req.setAttribute("email", email);
				req.setAttribute("code", req.getParameter("code"));
				req.setAttribute("idcheck", idcheck);
				req.setAttribute("anser", 11);
				return "/JSP/register.jsp";
				
			}
		}
		
			String code = "";
			for(int i=0; i<7; i++) {
				code+=ran.nextInt(9);
			}
		if(password.length() >=10 && password.length() <=25) {
			char pasin;
			for(int i=0; i<password.length(); i++) {
				pasin = password.charAt(i);
				if(pasin == 0x20) {
					req.setAttribute("first_name", first_name);
					req.setAttribute("last_name", last_name);
					req.setAttribute("phone", phone);
					req.setAttribute("id", id);
					req.setAttribute("email", email);
					req.setAttribute("code", req.getParameter("code"));
					req.setAttribute("idcheck", idcheck);
					req.setAttribute("passcheck", 1);
					return "/JSP/register.jsp";
				}
			}
		}else {
			req.setAttribute("first_name", first_name);
			req.setAttribute("last_name", last_name);
			req.setAttribute("phone", phone);
			req.setAttribute("id", id);
			req.setAttribute("email", email);
			req.setAttribute("code", req.getParameter("code"));
			req.setAttribute("idcheck", idcheck);
			req.setAttribute("passcheck", 1);
			return "/JSP/register.jsp";
		}
		
			req.setAttribute("code", code);
			req.setAttribute("idcheck", idcheck);
			return "/emailsend.do";
		
		
		
	}
	
}
