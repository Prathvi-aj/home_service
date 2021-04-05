package utils;

import java.util.Properties;
import javax.mail.Session;
import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;
import javax.mail.Message;
import javax.mail.internet.MimeMessage;
import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;
import javax.mail.Transport;


public class EmailSender{
	public static void sendEmail(String toEmail,String text){
		Properties props = new Properties();

		props.put("mail.transport.protocol","smtp");
		props.put("mail.smtp.auth","true");
		props.put("mail.smtp.starttls.enable","true");
		props.put("mail.smtp.host","smtp.gmail.com");
		props.put("mail.smtp.port","587");

		Session session = Session.getInstance(props,new EmailAuthenticator());	

		MimeMessage message = new MimeMessage(session);

		try{
			message.setFrom(new InternetAddress("1711abhishekjain@gmail.com"));
			
			message.addRecipients(Message.RecipientType.TO,toEmail);

			message.setSubject("test Code....");

			//message.setText(text);
			message.setContent(text,"text/html");

			Transport.send(message);
		}catch(MessagingException e){
			e.printStackTrace();
		}
	}
}



class EmailAuthenticator extends Authenticator{
	public PasswordAuthentication getPasswordAuthentication(){
		return new PasswordAuthentication("1711abhishekjain@gmail.com","Prathvi@6708");
	}
}













