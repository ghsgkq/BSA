package BSA.action;

import java.util.Properties;
import java.util.Random;

import javax.mail.Address;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BSA.model.AdminBookingDto;
import BSA.model.AdminDao;
import BSA.model.AdminDto;
import BSA.model.BookingDao;
import BSA.model.BookingDto;

public class paymentProAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest req, HttpServletResponse resp) throws Throwable {
		req.setCharacterEncoding("UTF-8");
		Random ran = new Random();
		String email = "ckdgus5820@naver.com";
		String to = req.getParameter("email");
		String code = "";
		int codecheck = 0;
		
		while(true) {
			code = "";
			for(int i=0; i<7; i++) {
				code+=ran.nextInt(9);
			}
			BookingDao bdao  = BookingDao.getInstance();
			
			if(bdao.getCode() != null) {
				for(int i=0; i<bdao.getCode().size(); i++) {
					if(bdao.getCode().get(i).equals(code)) {
						codecheck = 1;
					}
				}
			}
			if(codecheck == 0) {
				break;
			}
		}

		Properties p = new Properties(); // 정보를 담을 객체
		  
		p.put("mail.smtp.host","smtp.naver.com");
		p.put("mail.smtp.port", "465");
		p.put("mail.smtp.starttls.enable", "true");
		p.put("mail.smtp.auth", "true");
		p.put("mail.smtp.debug", "true");
		p.put("mail.smtp.socketFactory.port", "465");
		p.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
		p.put("mail.smtp.socketFactory.fallback", "false");
		try {
			 Authenticator auth = new SMTPAuthenticatior();
			    Session ses = Session.getInstance(p, auth);
			      
			    ses.setDebug(true);
			    MimeMessage msg = new MimeMessage(ses); // 메일의 내용을 담을 객체 
			 
			    msg.setSubject("BSA 확인코드입니다! "+req.getParameter("last_name")+req.getParameter("first_name")+"님 저희 사이트를 이용해주셔서 감사합니다.");
			    StringBuffer buffer = new StringBuffer();
			    
			    buffer.append("<style type=\"text/css\">");
			    buffer.append("#outlook a {padding: 0;}");
			    buffer.append(".ReadMsgBody {width: 100%;}");
			    buffer.append(".ExternalClass {width: 100%;}");
			    buffer.append(".ExternalClass * {line-height: 100%;}");
			    buffer.append("body {margin: 0; padding: 0; -webkit-text-size-adjust: 100%; -ms-text-size-adjust: 100%;}");
			    buffer.append("table,td {border-collapse: collapse; mso-table-lspace: 0pt;mso-table-rspace: 0pt;}");
			    buffer.append("img {border: 0; height: auto; line-height: 100%; outline: none; text-decoration: none; -ms-interpolation-mode: bicubic;}");
			    buffer.append("p, ul {display: block;margin: 0;}");
			    buffer.append("@media only screen and (min-width:480px) {.email-col-17 {width: 17%!important;} .email-col-25 {width: 25%!important;} .email-col-33 {width: 33%!important;} .email-col-50 {width: 50%!important;} .email-col-67 {width: 67%!important;} .email-col-100 {width: 100%!important;}}");
			    buffer.append("@media only screen and (max-width:480px) {  img.fullwidth { max-width: 100% !important; } }");
			    buffer.append("</style>");
			    buffer.append("<link href=\'https://fonts.googleapis.com/css?family=Montserrat:400,700\' rel=\'stylesheet\' type=\'text/css\'>");
			    buffer.append("<style type=\'text/css\'>");
			    buffer.append("@import url('https://fonts.googleapis.com/css?family=Montserrat:400,700');");
			    buffer.append("</style>");
			    buffer.append("<div style='background-color: #f0f0f0; font-family: 'Montserrat',sans-serif;'>");
			    buffer.append("<table align='center' border='0' cellpadding='0' cellspacing='0' width='100%' style='margin: 0; padding: 0'>");
			    buffer.append("<tr>");
			    buffer.append("<td align='center' valign='top' bgcolor='' style='padding: 0px; background-color: rgba(255,255,255,0);'>");
			    buffer.append("<div style='margin:0px auto;max-width:600px;'>");
			    buffer.append("<table role='presentation' cellpadding='0' cellspacing='0' style='font-size:0px;width:100%;' align='center' border='0'>");
			    buffer.append("<tbody><tr>");
			    buffer.append("<td style='text-align:center;vertical-align:top;direction:ltr;font-size:0px;' bgcolor='#ffffff'>");
			    buffer.append("<div class='email-col-100 outlook-group-fix' style='vertical-align:top;display:inline-block;direction:ltr;font-size:13px;text-align:left;width:100%;'>");
			    buffer.append("<table role='presentation' cellpadding='0' cellspacing='0' width='100%' border='0'>");
			    buffer.append("<tbody> <tr>");
			    buffer.append("<td style='overflow-wrap: break-word;padding:20px;' align='left'>");
			    buffer.append("<div style='color: #000; line-height: 120%; text-align: center; font-family: inherit;'>");
			    buffer.append("<p style='font-size: 14px; line-height: 120%;'><span style='font-size: 40px; line-height: 48px;'><strong>BSA Register Email code</strong></span></p>");
			    buffer.append("</div></td></tr></tbody></table>");
			    buffer.append("<table role='presentation' cellpadding='0' cellspacing='0' width='100%' border='0'>");
			    buffer.append("<tbody>");
			    buffer.append("<tr>");
			    buffer.append("<td style='overflow-wrap: break-word;padding:20px;' align='left'>");
			    buffer.append("<table width='100%' cellpadding='0' cellspacing='0' border='0'>");
			    buffer.append("<tr>");
			    buffer.append("<td style='padding-right: 0px; padding-left: 0px;' align='center'>");
			    buffer.append("<img align='center' border='0' src='https://i.imgur.com/UPrkT9F.jpg' alt='Image' title='Image' style='outline: none;text-decoration: none;-ms-interpolation-mode: bicubic;clear: both;display: block !important;border: none;height: auto;float: none;width: 100%;max-width: 560px;' width='560'>");
			    buffer.append("</td></tr></table></td></tr></tbody></table>");
			    buffer.append("<table role='presentation' cellpadding='0' cellspacing='0' width='100%' border='0'>");
			    buffer.append("<tbody><tr>");
			    buffer.append("<td style='overflow-wrap: break-word;padding:30px 30px 15px;' align='left'>");
			    buffer.append("<div style='color: #000; line-height: 150%; text-align: left; font-family: inherit;'>");
			    buffer.append("<p style='line-height: 150%; font-size: 14px;'><span style='color: #282828;'><span style='font-size: 16px; line-height: 24px;'>"+req.getParameter("last_name")+req.getParameter("first_name")+"님 저희 서비스를 이용해주셔서 감사합니다!</span></span></p>");
			    buffer.append("<p style='line-height: 150%; font-size: 14px;'><span style='color: #282828;'><span style='font-size: 16px; line-height: 24px;'>바로아래에 주문번호가 있습니다.</span></span></p>");
			    buffer.append("</div></td></tr></tbody></table></div>");
			    buffer.append("</td></tr></tbody></table></div></td></tr></table>");
			    buffer.append("<table align='center' border='0' cellpadding='0' cellspacing='0' width='100%' style='margin: 0; padding: 0'>");
			    buffer.append("<tr>");
			    buffer.append("<td align='center' valign='top' bgcolor='' style='padding: 0px 10px; background-color: rgba(255,255,255,0);'>");
			    buffer.append("<div style='margin:0px auto;max-width:600px;'>");
			    buffer.append("<table role='presentation' cellpadding='0' cellspacing='0' style='font-size:0px;width:100%;' align='center' border='0'>");
			    buffer.append("<tbody><tr>");
			    buffer.append("<td style='text-align:center;vertical-align:top;direction:ltr;font-size:0px;' bgcolor='#ffffff'>");
			    buffer.append("<div class='email-col-100 outlook-group-fix' style='vertical-align:top;display:inline-block;direction:ltr;font-size:13px;text-align:left;width:100%;'>");
			    buffer.append("<table role='presentation' cellpadding='0' cellspacing='0' width='100%' border='0'>");
			    buffer.append("<tbody><tr>");
			    buffer.append("<td style='overflow-wrap: break-word;padding:5px 30px;' align='left'>");
			    buffer.append("<div style='color: #000; line-height: 140%; text-align: left; font-family: inherit;'>");
			    buffer.append("</div></td></tr></tbody></table>");
			    buffer.append("<table role='presentation' cellpadding='0' cellspacing='0' width='100%' border='0'>");
			    buffer.append("<tbody><tr><td style='overflow-wrap: break-word;padding:5px 30px;' align='left'>");
			    buffer.append("<div style='color: #000; line-height: 140%; text-align: left; font-family: inherit;'>");
			    buffer.append("</div></td></tr></tbody></table>");
			    buffer.append("<table role='presentation' cellpadding='0' cellspacing='0' width='100%' border='0'>");
			    buffer.append("<tbody><tr>");
			    buffer.append("<td style='overflow-wrap: break-word;padding:5px 30px;' align='left'>");
			    buffer.append("<div style='color: #000; line-height: 140%; text-align: left; font-family: inherit;'>");
			    buffer.append("<ul style='list-style-type: circle;'>");
			    buffer.append("<li style='font-size: 14px; line-height: 140%;'><span style='color: #292929;'><span style='font-size: 16px; line-height: 22.4px;'>code : "+code+"</span></span></li>");
			    buffer.append("</ul></div></td></tr></tbody></table>");
			    buffer.append("<table role='presentation' cellpadding='0' cellspacing='0' width='100%' border='0'>");
			    buffer.append("<tbody><tr>");
			    buffer.append("<td style='overflow-wrap: break-word;padding:5px 30px;' align='left'>");
			    buffer.append("<div style='color: #000; line-height: 140%; text-align: left; font-family: inherit;'>");
			    buffer.append("</div></td></tr></tbody></table></div></td></tr></tbody></table></div></td></tr></table>");
			    buffer.append("<table align='center' border='0' cellpadding='0' cellspacing='0' width='100%' style='margin: 0; padding: 0'>");
			    buffer.append("<tr><td align='center' valign='top' bgcolor='' style='padding: 0px; background-color: rgba(255,255,255,0);'>");
			    buffer.append("<div style='margin:0px auto;max-width:600px;'>");
			    buffer.append(" <table role='presentation' cellpadding='0' cellspacing='0' style='font-size:0px;width:100%;' align='center' border='0'>");
			    buffer.append("<tbody><tr>");
			    buffer.append("<td style='text-align:center;vertical-align:top;direction:ltr;font-size:0px;' bgcolor='#ffffff'>");
			    buffer.append("<div class='email-col-100 outlook-group-fix' style='vertical-align:top;display:inline-block;direction:ltr;font-size:13px;text-align:left;width:100%;'>");
			    buffer.append("<table role='presentation' cellpadding='0' cellspacing='0' width='100%' border='0'>");
			    buffer.append("<tbody> <tr>");
			    buffer.append("<td style='overflow-wrap: break-word;padding:10px 30px 20px;' align='left'>");
			    buffer.append("<div style='color: #292929; line-height: 160%; text-align: left; font-family: inherit;'>");
			    buffer.append("<p style='line-height: 160%; font-size: 14px;'><span style='font-size: 16px; line-height: 25.6px;'>문제가 있을시 FAQs 를 참조하시기 바랍니다.</span></p>");
			    buffer.append("<p style='line-height: 160%; font-size: 14px;'><span style='font-size: 16px; line-height: 25.6px;'>그것도 되지 않는다면 <a href='mailto:ckdgus5820@gmail.com'>ckdgus5820@gmail.com</a>&nbsp;에 메일을 보내주십시오!</span></p>");
			    buffer.append("</div></td></tr></tbody></table></div></td></tr></tbody></table></div></td></tr></table></div>");
			    

			    Address fromAddr = new InternetAddress(email);
			    msg.setFrom(fromAddr); 
			 
			    Address toAddr = new InternetAddress(to);
			    msg.addRecipient(Message.RecipientType.TO, toAddr); // 받는 사람
			     
			    msg.setContent(buffer.toString(), "text/html;charset=UTF-8"); // 내용
			    Transport.send(msg); // 전송  
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		BookingDto bdto = new BookingDto();
		AdminBookingDto ad= new AdminBookingDto();
		bdto.setFirst_name(req.getParameter("first_name"));
		bdto.setLast_name(req.getParameter("last_name"));
		bdto.setPhone(req.getParameter("phone"));
		bdto.setEmail(req.getParameter("email"));
		bdto.setWhere_trip(req.getParameter("where_trip"));
		bdto.setWhere_from(req.getParameter("where_from"));
		bdto.setWhere_to(req.getParameter("where_to"));
		bdto.setPickup(req.getParameter("pickup"));
		bdto.setDropft(req.getParameter("dropft"));
		bdto.setStart_airline_name(req.getParameter("start_airline_name"));
		bdto.setStart_airline_no(req.getParameter("start_airline_no"));
		bdto.setStart_airline_time(req.getParameter("start_airline_time"));
		bdto.setArrival_airline_name(req.getParameter("arrival_airline_name"));
		bdto.setArrival_airline_no(req.getParameter("arrival_airline_no"));
		bdto.setArrival_airline_time(req.getParameter("arrival_airline_time"));
		bdto.setBus_time_pickup(req.getParameter("bus_time_pickup"));
		bdto.setBus_time_dropft(req.getParameter("bus_time_dropft"));
		bdto.setStart_date(req.getParameter("start_date"));
		bdto.setArrival_date(req.getParameter("arrival_date"));
		bdto.setAdults(req.getParameter("adults"));
		bdto.setYoung(req.getParameter("young"));
		bdto.setChild(req.getParameter("child"));
		bdto.setInfatns(req.getParameter("infatns"));
		bdto.setName_on_card(req.getParameter("name_on_card"));
		bdto.setCard_number(req.getParameter("card_number"));
		bdto.setExpiry_year(req.getParameter("expiry_year"));
		bdto.setExpiry_month(req.getParameter("expiry_month"));
		bdto.setCsv_number(req.getParameter("csv_number"));
		bdto.setComm(req.getParameter("comm"));
		bdto.setMoney(req.getParameter("money"));
		bdto.setCode(code);
		
		ad.setFirst_name(req.getParameter("first_name"));
		ad.setLast_name(req.getParameter("last_name"));
		ad.setPhone(req.getParameter("phone"));
		ad.setEmail(req.getParameter("email"));
		ad.setWhere_trip(req.getParameter("where_trip"));
		ad.setWhere_from(req.getParameter("where_from"));
		ad.setWhere_to(req.getParameter("where_to"));
		ad.setPickup(req.getParameter("pickup"));
		ad.setDropft(req.getParameter("dropft"));
		ad.setStart_airline_name(req.getParameter("start_airline_name"));
		ad.setStart_airline_no(req.getParameter("start_airline_no"));
		ad.setStart_airline_time(req.getParameter("start_airline_time"));
		ad.setArrival_airline_name(req.getParameter("arrival_airline_name"));
		ad.setArrival_airline_no(req.getParameter("arrival_airline_no"));
		ad.setArrival_airline_time(req.getParameter("arrival_airline_time"));
		ad.setBus_time_pickup(req.getParameter("bus_time_pickup"));
		ad.setBus_time_dropft(req.getParameter("bus_time_dropft"));
		ad.setStart_date(req.getParameter("start_date"));
		ad.setArrival_date(req.getParameter("arrival_date"));
		ad.setAdults(req.getParameter("adults"));
		ad.setYoung(req.getParameter("young"));
		ad.setChild(req.getParameter("child"));
		ad.setInfatns(req.getParameter("infatns"));
		ad.setName_on_card(req.getParameter("name_on_card"));
		ad.setCard_number(req.getParameter("card_number"));
		ad.setExpiry_year(req.getParameter("expiry_year"));
		ad.setExpiry_month(req.getParameter("expiry_month"));
		ad.setCsv_number(req.getParameter("csv_number"));
		ad.setComm(req.getParameter("comm"));
		ad.setMoney(req.getParameter("money"));
		ad.setMission(req.getParameter("mission"));
		ad.setCode(code);

		BookingDao bdao = BookingDao.getInstance();
		bdao.Bookinginsert(bdto);
		AdminDao dbpro= AdminDao.getInstance();
		dbpro.AdminBookinginsert(ad);
		
		
		return "/JSP/booking_good.jsp";
	}
	
}
