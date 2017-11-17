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
		article.setComment(request.getParameter("comment"));
		//test
		NonMemberDao dbPro = NonMemberDao.getInstance();
		dbPro.NonMemberinsert(article);
		
		CreditCardDto article2 = new CreditCardDto();
		
		article2.setName_on_card(request.getParameter("name_on_card"));
		article2.setCard_number(request.getParameter("card_number"));
		article2.setExpiry_year(request.getParameter("expiry_year"));
		article2.setExpiry_month(request.getParameter("expiry_month"));
		article2.setCsv_number(request.getParameter("csv_number"));
		
		
		CreditCardDao dbpro2 = CreditCardDao.getInstacne();
		dbpro2.Creditinsert(article2);
	
		
		return "/JSP/payment_pro.jsp";
		
	}
}
