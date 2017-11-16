package BSA.action;

import javax.mail.PasswordAuthentication;

import javax.mail.Authenticator;

public class SMTPAuthenticatior extends Authenticator {
	@Override
	protected PasswordAuthentication getPasswordAuthentication() {
		return new PasswordAuthentication("ckdgus5820","!@qkek784512");
											
	}
}
