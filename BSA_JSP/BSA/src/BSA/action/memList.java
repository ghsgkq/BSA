package BSA.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BSA.model.BookingDao;
import BSA.model.BookingDto;

/**
 * Servlet implementation class memList
 */
@WebServlet("/memList.do")
public class memList extends HttpServlet {
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)throws ServletException, IOException{
		BookingDao dao = BookingDao.getInstance();
		List<BookingDto> dto = dao.getArticles();
		req.setAttribute("memList", dto);
		RequestDispatcher dispatcher = req.getRequestDispatcher("JSP/memberbooking.jsp");
		dispatcher.forward(req, resp);
	}

}
