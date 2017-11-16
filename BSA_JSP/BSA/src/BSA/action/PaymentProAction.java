package BSA.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BSA.model.NonMemberDao;
import BSA.model.NonMemberDto;

public class PaymentProAction implements CommandAction {
	public String requestPro(HttpServletRequest request, HttpServletResponse response)throws Throwable{
		request.setCharacterEncoding("UTF-8");
		//test
		NonMemberDto article = new NonMemberDto();
		
		article.setFirst_name(request.getParameter("first_name"));
		article.setLast_name(request.getParameter("last_name"));
		article.setPhone_number(request.getParameter("phone_number"));
		article.setEmail_address(request.getParameter("email_address"));
		article.setComment(request.getParameter("comment"));

		NonMemberDao dbPro = NonMemberDao.getInstance();
		dbPro.NonMemberinsert(article);

		
		
		return "/JSP/payment_pro.jsp";
		
	}
}
