package BSA.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BSA.model.NonMemberDao;
import BSA.model.NonMemberDto;

public class PaymentAction implements CommandAction{
	
		public String requestPro(HttpServletRequest request, HttpServletResponse response)throws Throwable{
			request.setCharacterEncoding("UTF-8");
			NonMemberDto article = new NonMemberDto();
			article.setFirstname(request.getParameter("firstname"));
			article.setLastname(request.getParameter("lastname"));
			article.setPhonenum(request.getParameter("phonenum"));
			article.setEmail(request.getParameter("email"));
			article.setComment(request.getParameter("comment"));
			
			NonMemberDao dbPro = NonMemberDao.getInstance();
			dbPro.NonMemberinsert(article);
			
			return "/JSP/payment.jsp";
			
		}
}
