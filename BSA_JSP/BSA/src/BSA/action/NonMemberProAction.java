package BSA.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BSA.model.CreditCardDao;
import BSA.model.CreditCardDto;
import BSA.model.NonMemberDao;
import BSA.model.NonMemberDto;

public class NonMemberProAction implements CommandAction {
	public String requestPro(HttpServletRequest request, HttpServletResponse response)throws Throwable{
		request.setCharacterEncoding("UTF-8");

		NonMemberDto article = new NonMemberDto();
		
		article.setFirst_name(request.getParameter("first_name"));
		article.setLast_name(request.getParameter("last_name"));
		article.setPhone_number(request.getParameter("phone_number"));
		article.setEmail_address(request.getParameter("email_address"));
		article.setComm(request.getParameter("comm"));
		article.setName_on_card(request.getParameter("name_on_card"));
		article.setCard_number(request.getParameter("card_number"));
		article.setExpiry_year(request.getParameter("expiry_year"));
		article.setExpiry_month(request.getParameter("expiry_month"));
		article.setCsv_number(request.getParameter("csv_number"));
		
		
		
	
		NonMemberDao dbPro = NonMemberDao.getInstance();
		dbPro.NonMemberinsert(article);
		
		return "/JSP/payment_pro.jsp";
		
	}
}
